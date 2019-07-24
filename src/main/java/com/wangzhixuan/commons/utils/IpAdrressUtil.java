package com.wangzhixuan.commons.utils;

import com.sun.tools.corba.se.idl.constExpr.Xor;
import net.sf.json.JSONObject;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

public class IpAdrressUtil {
    private static final Logger LOGGER = LogManager.getLogger(IpAdrressUtil.class);

    /**
     * 获取Ip地址
     * @param request
     * @return
     */
    public static String getIpAdrress(HttpServletRequest request) {
        String Xip = request.getHeader("X-Real-IP");
        String XFor = request.getHeader("X-Forwarded-For");

        if (StringUtils.isNotBlank(XFor) && !"unKnown".equalsIgnoreCase(XFor)) {
            //多次反向代理后会有多个ip值，第一个ip才是真实ip
            int index = XFor.indexOf(",");
            if (index != -1) {
                LOGGER.info("返回X-Real-IP 第一个ip，ip={}", XFor.substring(0, index));
                return XFor.substring(0, index);
            } else {
                LOGGER.info("直接返回X-Real-IP  ip，IP={}", XFor);
                return XFor;
            }
        }
        XFor = Xip;

        if (StringUtils.isNotBlank(XFor) && !"unKnown".equalsIgnoreCase(XFor)) {
            LOGGER.info("返回xip,ip={}", Xip);
            return XFor;
        }
        if (StringUtils.isBlank(XFor) || "unknown".equalsIgnoreCase(XFor)) {
            XFor = request.getHeader("Proxy-Client-IP");
            if (StringUtils.isNotBlank(XFor)){
                LOGGER.info("返回request.getHeader(\"Proxy-Client-IP\")");
            }
        }
        if (StringUtils.isBlank(XFor) || "unknown".equalsIgnoreCase(XFor)) {
            XFor = request.getHeader("WL-Proxy-Client-IP");
            if (StringUtils.isNotBlank(XFor)){
                LOGGER.info("返回request.getHeader(\"WL-Proxy-Client-IP\")");
            }
        }
        if (StringUtils.isBlank(XFor) || "unknown".equalsIgnoreCase(XFor)) {
            XFor = request.getHeader("HTTP_CLIENT_IP");
            if (StringUtils.isNotBlank(XFor)){
                LOGGER.info("返回request.getHeader(\"HTTP_CLIENT_IP\")");
            }
        }
        if (StringUtils.isBlank(XFor) || "unknown".equalsIgnoreCase(XFor)) {
            XFor = request.getHeader("HTTP_X_FORWARDED_FOR");
            if (StringUtils.isNotBlank(XFor)){
                LOGGER.info("返回request.getHeader(\"HTTP_X_FORWARDED_FOR\")");
            }
        }
        if (StringUtils.isBlank(XFor) || "unknown".equalsIgnoreCase(XFor)) {
            XFor = request.getRemoteAddr();
            LOGGER.info("getRemoteAddr:" + XFor);
        }
      if (StringUtils.isNotBlank(XFor)){
          LOGGER.info("返回IP，XFor={}", XFor);
      }else{
          XFor = String.valueOf(Math.random());
          LOGGER.info("IP为空,使用随机数代替,XFor={}", XFor);
      }
        return XFor;

    }
    public  static Map<String,String> findRealAddress(HttpServletRequest request){
        String ip = getIpAdrress(request);
        if (StringUtils.isBlank(ip)){
            LOGGER.info("Map<String,String> findRealAddress 方法的得到的ip为空");
        }
        Map<String, String> addressMap = new HashMap<String, String>();

        if (ip != null && StringUtils.isNotBlank(ip)) {
            LOGGER.info(" Map<String,String> findRealAddress ip  不为空，已用进入通过ip获得地址的判断中");

            if (ip.equals("127.0.0.1")) {
                LOGGER.info("ip为本地ip");

                addressMap.put("ip", ip);
                addressMap.put("address", "本地");
            } else {
                LOGGER.info("ip不为本地ip");

                String url = "http://ip.taobao.com/service/getIpInfo.php";
                String rs = HttpUtils.sendPost(url, "ip=" + ip);
                java.lang.String address = "";

                if (StringUtils.isNotBlank(rs)) {
                    LOGGER.info("rs不为空，开始地址解析");
                    JSONObject result = JSONObject.fromObject(rs);

                    JSONObject data = JSONObject.fromObject(result.get("data"));
                    //country":"中国","area":"","region":"湖南","city":"长沙",
                    if (data.get("region") == null) {
                        address = String.valueOf(data.get("country"));

                    } else {
                        address = String.valueOf(data.get("region")) + String.valueOf(data.get("city"));
                    }

                }
                LOGGER.info("IP赋值，ip=[{}]", ip);
                addressMap.put("ip", ip);
                LOGGER.info("address赋值，adress=[{}]", address);
                addressMap.put("address", address);
            }


        }else{
            LOGGER.info(" Map<String,String> findRealAddress ip  为空，没用进入通过ip获得地址的判断中");
        }

        if (StringUtils.isBlank(addressMap.get("ip"))){
            LOGGER.info("ip赋值为随机数");
            addressMap.put("ip", String.valueOf(Math.random()));
        }


        return addressMap;
    }

    public static void main(String[] args) {
      /*  String url="http://ip.taobao.com/service/getIpInfo.php?ip= 175.13.240.137";

        JSONObject result= HttpUtils.sendGet(url,"");
        //country":"中国","area":"","region":"湖南","city":"长沙",
        String address=result.toString();
        System.out.println(address);*/
    }
}
