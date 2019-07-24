package com.wangzhixuan.commons.scan;

import com.wangzhixuan.commons.utils.IpAdrressUtil;
import com.wangzhixuan.commons.utils.StringUtils;
import com.wangzhixuan.model.SysLog;
import com.wangzhixuan.model.Visitor;
import com.wangzhixuan.service.ISysLogService;
import com.wangzhixuan.service.IVisitorService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.Enumeration;
import java.util.Map;

/**
 * @description：AOP 日志
 * @author：zhixuan.wang
 * @date：2015/10/28 18:04
 */
@Aspect
@Component
@Order
public class SysLogAspect {
    private static final Logger LOGGER = LogManager.getLogger(SysLogAspect.class);

    @Autowired
    private ISysLogService sysLogService;
    @Autowired
    private IVisitorService visitorService;

    @Pointcut("within(@org.springframework.stereotype.Controller *)")
    public void cutController() {
    }

    @Around("cutController()")
    public Object recordSysLog(ProceedingJoinPoint point) throws Throwable {
        String strMethodName = point.getSignature().getName();
        String strClassName = point.getTarget().getClass().getName();
        Object[] params = point.getArgs();
        StringBuffer bfParams = new StringBuffer();
        Enumeration<String> paraNames = null;
        HttpServletRequest request = null;
        if (params != null && params.length > 0) {
            request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
            paraNames = request.getParameterNames();
            String key;
            String value;
            while (paraNames.hasMoreElements()) {
                key = paraNames.nextElement();
                value = request.getParameter(key);
                bfParams.append(key).append("=").append(value).append("&");
            }
            if (StringUtils.isBlank(bfParams)) {
                bfParams.append(request.getQueryString());
            }
        }

        String strMessage = String
                .format("[类名]:%s,[方法]:%s,[参数]:%s", strClassName, strMethodName, bfParams.toString());
        LOGGER.info(strMessage);
        if (isWriteLog(strMethodName)) {
            try {
                Subject currentUser = SecurityUtils.getSubject();
                PrincipalCollection collection = currentUser.getPrincipals();
                if (null != collection) {
                    String loginName = collection.getPrimaryPrincipal().toString();
                    SysLog sysLog = new SysLog();
                    sysLog.setLoginName(loginName);
                    sysLog.setRoleName(loginName);
                    sysLog.setOptContent(strMessage);
                    sysLog.setCreateTime(new Date());
                    if (request != null) {
                        sysLog.setClientIp(request.getRemoteAddr());
                    }

                    LOGGER.info(sysLog.toString());
                    if (!strClassName.equals("com.wangzhixuan.controller.NewsController"))
                        this.sysLogService.insert(sysLog);
                }
            } catch (Exception var13) {
                LOGGER.error(var13.getMessage(), var13);
            }
        }

        this.addVisitor(point);
        return point.proceed();
    }

    public void addVisitor(ProceedingJoinPoint point) throws Throwable {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String uri = request.getRequestURI();

        String url = uri;

        uri = uri.replaceAll("en_", "");

        String regex = "/static/*";
        if (!uri.matches(regex)) {
            Visitor visitor = new Visitor();
            String requestHeader;
            if (uri.contains("/customer/main")) {
                visitor.setVisitorPageName("光合硅能主页");
            } else if (uri.contains("/customer/productDetail")) {
                visitor.setVisitorPageName("光合硅能产品详情页");

                try {
                    String[] arr = uri.split("/customer/productDetail/");
                    requestHeader = arr[1];
                    visitor.setVisitorProductId(Integer.parseInt(requestHeader));
                } catch (Exception var9) {
                    var9.printStackTrace();
                }
            } else if (uri.contains("/customer/aboutUs")) {
                visitor.setVisitorPageName("光合硅能企业文化");
            } else if (uri.contains("/customer/search")) {
                visitor.setVisitorPageName("光合硅能搜索");
            } else if (uri.contains("/customer/productsCenter")) {
                visitor.setVisitorPageName("光合硅能产品中心");
            } else if (uri.contains("/customer/case")) {
                visitor.setVisitorPageName("光合硅能经典案例");
            } else if (uri.contains("/customer/solarmain")) {
                visitor.setVisitorPageName("光合硅能太阳能主页");
            } else {
                this.distinguishWebsite(uri, visitor);
            }

            visitor.setVisitorTime(new Date());
            visitor.setVisitorPage(uri);
            HttpSession session = request.getSession();
            if (session.getAttribute("ip") != null && session.getAttribute("address") != null) {
                requestHeader = String.valueOf(session.getAttribute("ip"));
                String address = String.valueOf(session.getAttribute("address"));
                visitor.setIp(requestHeader);
                visitor.setVisitorAddr(address);
            } else {
                Map<String, String> map = IpAdrressUtil.findRealAddress(request);
                visitor.setIp((String) map.get("ip"));
                visitor.setVisitorAddr((String) map.get("address"));
                session.setAttribute("ip", map.get("ip"));
                session.setAttribute("address", map.get("address"));

                if (StringUtils.isBlank(map.get("ip"))){
                    System.out.println(visitor.toString());
                    throw new RuntimeException("ip 为空");
                }
            }

            requestHeader = request.getHeader("user-agent");
            if (isMobileDevice(requestHeader)) {
                visitor.setVisitorType(1);
            } else {
                visitor.setVisitorType(2);
            }

            if (StringUtils.isNotBlank(visitor.getVisitorPageName())) {
                if (url.contains("en_")){
                    visitor.setVisitorPageName("英文" + visitor.getVisitorPageName());
                }
                this.visitorService.insert(visitor);
            }
        }

    }

    private boolean isWriteLog(String method) {
        if (method.equals("ueditor")) {
            return false;
        } else {
            String[] pattern = new String[]{"login", "logout", "add", "edit", "delete", "grant"};
            String[] var3 = pattern;
            int var4 = pattern.length;

            for (int var5 = 0; var5 < var4; ++var5) {
                String s = var3[var5];
                if (method.indexOf(s) > -1) {
                    return true;
                }
            }

            return false;
        }
    }

    public static boolean isMobileDevice(String requestHeader) {
        String[] deviceArray = new String[]{"android", "mac os", "windows phone"};
        if (requestHeader == null) {
            return false;
        } else {
            requestHeader = requestHeader.toLowerCase();

            for (int i = 0; i < deviceArray.length; ++i) {
                if (requestHeader.indexOf(deviceArray[i]) > 0) {
                    return true;
                }
            }

            return false;
        }
    }

    public Visitor distinguishWebsite(String url, Visitor visitor) {
        if (url.contains("/solarController/main")) {
            visitor.setVisitorPageName("控制器主页");
        } else {
            String[] arr;
            String productId;
            if (url.contains("/solarController/productDetail")) {
                visitor.setVisitorPageName("控制器产品详情页");

                try {
                    arr = url.split("/solarController/productDetail/");
                    productId = arr[1];
                    visitor.setVisitorProductId(Integer.parseInt(productId));
                } catch (Exception var7) {
                    var7.printStackTrace();
                }
            } else if (url.contains("/solarController/productCenter")) {
                visitor.setVisitorPageName("控制器产品中心");
            } else if (url.contains("/solarController/aboutUs")) {
                visitor.setVisitorPageName("控制器关于我们");
            } else if (url.contains("/solarController/contact")) {
                visitor.setVisitorPageName("控制器联系我们");
            } else if (url.contains("/solarController/case")) {
                visitor.setVisitorPageName("控制器经典案例");
            } else if (url.contains("/solarPanel/main")) {
                visitor.setVisitorPageName("太阳能板主页");
            } else if (url.contains("/solarPanel/productDetail")) {
                visitor.setVisitorPageName("太阳能板详情页");

                try {
                    arr = url.split("/solarPanel/productDetail/");
                    productId = arr[1];
                    visitor.setVisitorProductId(Integer.parseInt(productId));
                } catch (Exception var6) {
                    var6.printStackTrace();
                }
            } else if (url.contains("/solarPanel/productCenter")) {
                visitor.setVisitorPageName("太阳能板产品中心");
            } else if (url.contains("/solarPanel/aboutUs")) {
                visitor.setVisitorPageName("太阳能板关于我们");
            } else if (url.contains("/solarPanel/contact")) {
                visitor.setVisitorPageName("太阳能板联系我们");
            } else if (url.contains("/solarPanel/case")) {
                visitor.setVisitorPageName("太阳能板经典案例");
            } else if (url.contains("/windEnergy/main")) {
                visitor.setVisitorPageName("风机主页");
            } else if (url.contains("/windEnergy/productDetail")) {
                visitor.setVisitorPageName("风机详情页");

                try {
                    arr = url.split("/windEnergy/productDetail/");
                    productId = arr[1];
                    visitor.setVisitorProductId(Integer.parseInt(productId));
                } catch (Exception var5) {
                    var5.printStackTrace();
                }
            } else if (url.contains("/windEnergy/productCenter")) {
                visitor.setVisitorPageName("风机产品中心");
            } else if (url.contains("/windEnergy/aboutUs")) {
                visitor.setVisitorPageName("风机关于我们");
            } else if (url.contains("/windEnergy/contact")) {
                visitor.setVisitorPageName("风机联系我们");
            } else if (url.contains("/windEnergy/case")) {
                visitor.setVisitorPageName("风机经典案例");
            }
        }

        return visitor;
    }
}
