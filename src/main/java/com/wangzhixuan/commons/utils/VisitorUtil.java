package com.wangzhixuan.commons.utils;

import com.wangzhixuan.model.Visitor;
import com.wangzhixuan.service.IVisitorService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.Map;

@Component
public class VisitorUtil {

    @Autowired
    private IVisitorService visitorService;

    private static final Logger LOGGER  =  LogManager.getLogger(VisitorUtil.class);

    @Async
    public void insertVisitor(HttpServletRequest request) {
        LOGGER.info("执行insertVisitor方法线程" + Thread.currentThread().getName());
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

                if (StringUtils.isBlank(map.get("ip"))) {
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
                if (url.contains("en_")) {
                    visitor.setVisitorPageName("英文" + visitor.getVisitorPageName());
                }
                visitorService.insert(visitor);
            }
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

    public boolean isMobileDevice(String requestHeader) {
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

}
