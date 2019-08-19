package com.wangzhixuan.commons.aspect;

import com.wangzhixuan.commons.utils.IpAdrressUtil;
import com.wangzhixuan.commons.utils.VisitorUtil;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;


@Aspect
@Component
public class VisitorAspect {

    Logger logger = LoggerFactory.getLogger(VisitorAspect.class);

    @Autowired
    private VisitorUtil visitorUtil;


    @Pointcut("execution(* com.wangzhixuan.controller.*.*(..))")
    public void cutCon() {
    }


    @Before("cutCon()")
    private void inv() {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        logger.info("调用insertVisitor方法线程" + Thread.currentThread().getName());
        if (request != null) {
            String uri = request.getRequestURI();
            if (!uri.contains("admin")) {
                int visitorType = isMobileDevice(request.getHeader("user-agent")) ? 1 : 2;
                String ip = IpAdrressUtil.getIpAdrress(request);
                visitorUtil.insertVisitor(uri, ip, visitorType);
            }

        }
    }

    private boolean isMobileDevice(String requestHeader) {
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
