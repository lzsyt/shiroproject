
 package com.wangzhixuan.commons.utils;

 import com.wangzhixuan.commons.util.CommonUtil;
 import net.sf.json.JSONObject;

 import java.io.BufferedReader;
 import java.io.IOException;
 import java.io.InputStreamReader;
 import java.io.PrintWriter;
 import java.net.URL;
 import java.net.URLConnection;
 import java.util.List;
 import java.util.Map;

 public class HttpUtils {
     /**
      * 向指定URL发送GET方法的请求
      *
      * @param url
      *            发送请求的URL
      * @param param
      *            请求参数，请求参数应该是 name1=value1&name2=value2 的形式。
      * @return URL 所代表远程资源的响应结果
      */
     public static JSONObject sendGet(String url, String param) {
         StringBuffer result = new StringBuffer();
         BufferedReader in = null;
         JSONObject jsonObject=null;
         try {
             String urlNameString = url + "?" + param;
             URL realUrl = new URL(urlNameString);
             // 打开和URL之间的连接
             URLConnection connection = realUrl.openConnection();
             // 设置通用的请求属性
             connection.setRequestProperty("accept", "*/*");
             connection.setRequestProperty("connection", "Keep-Alive");
             connection.setRequestProperty("user-agent",
                     "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
             // 建立实际的连接
             connection.connect();
             // 获取所有响应头字段
             Map<String, List<String>> map = connection.getHeaderFields();
             // 遍历所有的响应头字段
             for (String key : map.keySet()) {
                 System.out.println(key + "--->" + map.get(key));
             }
             // 定义 BufferedReader输入流来读取URL的响应
             in = new BufferedReader(new InputStreamReader(
                     connection.getInputStream()));
             String line;
             while ((line = in.readLine()) != null) {
                 System.out.println("line:" + line);

                 result.append(line);
             }
              jsonObject = JSONObject.fromObject(result.toString());

         } catch (Exception e) {
             System.out.println("发送GET请求出现异常！" + e);
             e.printStackTrace();
         }
         // 使用finally块来关闭输入流
         finally {
             try {
                 if (in != null) {
                     in.close();
                 }
             } catch (Exception e2) {
                 e2.printStackTrace();
             }
         }
         return jsonObject;
     }

     /**
      * 向指定 URL 发送POST方法的请求
      * @param url 发送请求的 URL
      * @param param 请求参数，请求参数应该是 name1=value1&name2=value2 的形式。
      * @return 所代表远程资源的响应结果
      */
     public static String sendPost(String url, String param) {
         PrintWriter out = null;
         BufferedReader in = null;
         StringBuffer result = new StringBuffer();
         JSONObject j=null;
         try {
             URL realUrl = new URL(url);
             // 打开和URL之间的连接
             URLConnection conn = realUrl.openConnection();
             // 设置通用的请求属性
             conn.setRequestProperty("accept", "*/*");
             conn.setRequestProperty("connection", "Keep-Alive");
             conn.setRequestProperty("user-agent","Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
             // 发送POST请求必须设置如下两行
             conn.setDoOutput(true);
             conn.setDoInput(true);
             //1.获取URLConnection对象对应的输出流
             out = new PrintWriter(conn.getOutputStream());
             //2.中文有乱码的需要将PrintWriter改为如下
             //out=new OutputStreamWriter(conn.getOutputStream(),"UTF-8")
             // 发送请求参数
             out.print(param);
             // flush输出流的缓冲
             out.flush();
             // 定义BufferedReader输入流来读取URL的响应
             in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
             String line;
             while ((line = in.readLine()) != null) {
                 result.append(line);
             }
         } catch (Exception e) {
             System.out.println("发送 POST 请求出现异常！"+e);
             e.printStackTrace();


         }
         //使用finally块来关闭输出流、输入流
         finally{
             try{
                 if(out!=null){
                     out.close();
                 }
                 if(in!=null){
                     in.close();
                 }
             }
             catch(IOException ex){
                 ex.printStackTrace();
             }
         }
         System.out.println("post推送结果："+result);
         return result.toString();
     }

     public static void main(String[] args) {

/*
         String url="http://ip.taobao.com/service/getIpInfo.php";

         JSONObject result= CommonUtil.httpRequest(url,"POST","ip=175.13.240.137");
         System.out.println(result);*/
        String url = "http://data.zz.baidu.com/urls?site=www.yongdong.com.cn&token=97a1Hb2z3i0DE73K";
        String[] param = {"http://www.yongdong.com.cn/windEnergy/main",
                          "http://www.yongdong.com.cn/windEnergy/aboutUs",
                          "http://www.yongdong.com.cn/windEnergy/productCenter",
                          "http://www.yongdong.com.cn/windEnergy/contact",
                          "http://www.yongdong.com.cn/windEnergy/case",
                          "http://www.yongdong.com.cn/windEnergy/productCenter/28",
                          "http://www.yongdong.com.cn/en_windEnergy/en_main",
                          "http://www.yongdong.com.cn/en_windEnergy/en_aboutUs",
                          "http://www.yongdong.com.cn/en_windEnergy/en_productCenter",
                          "http://www.yongdong.com.cn/en_windEnergy/en_contact",
                          "http://www.yongdong.com.cn/en_windEnergy/en_case",
                          "http://www.yongdong.com.cn/en_windEnergy/en_productCenter/28",
                          "http://www.yongdong.com.cn/windEnergy/newsDetail/60",
                          "http://www.yongdong.com.cn/windEnergy/newsDetail/61",
                          "http://www.yongdong.com.cn/windEnergy/newsDetail/62",
                          "http://www.yongdong.com.cn/windEnergy/newsDetail/63",
                          "http://www.yongdong.com.cn/windEnergy/newsDetail/64",
                          "http://www.yongdong.com.cn/windEnergy/newsDetail/65"
                          };
       String result = post(url, param);
       System.out.println(result);

     }
   /**
    * 百度链接实时推送
    * @param PostUrl
    * @param Parameters
    * @return
    */
   public static String post(String PostUrl,String[] Parameters){
     if(null == PostUrl || null == Parameters || Parameters.length ==0){
       return null;
     }
     String result="";
     PrintWriter out=null;
     BufferedReader in=null;
     try {
       //建立URL之间的连接
       URLConnection conn=new URL(PostUrl).openConnection();
       //设置通用的请求属性
       conn.setRequestProperty("Host","data.zz.baidu.com");
       conn.setRequestProperty("User-Agent", "curl/7.12.1");
       conn.setRequestProperty("Content-Length", "83");
       conn.setRequestProperty("Content-Type", "text/plain");

       //发送POST请求必须设置如下两行
       conn.setDoInput(true);
       conn.setDoOutput(true);

       //获取conn对应的输出流
       out=new PrintWriter(conn.getOutputStream());
       //发送请求参数
       String param = "";
       for(String s : Parameters){
         param += s+"\n";
       }
       out.print(param.trim());
       //进行输出流的缓冲
       out.flush();
       //通过BufferedReader输入流来读取Url的响应
       in=new BufferedReader(new InputStreamReader(conn.getInputStream()));
       String line;
       while((line=in.readLine())!= null){
         result += line;
       }

     } catch (Exception e) {
       System.out.println("发送post请求出现异常！"+e);
       e.printStackTrace();
     } finally{
       try{
         if(out != null){
           out.close();
         }
         if(in!= null){
           in.close();
         }

       }catch(IOException ex){
         ex.printStackTrace();
       }
     }
     return result;
   }

 }


