package com.wangzhixuan.controller;

import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.commons.utils.IpAdrressUtil;
import com.wangzhixuan.model.*;
import com.wangzhixuan.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @description：用户管理
 * @author：zhixuan.wang
 * @date：2015/10/1 14:51
 */
@Controller
@RequestMapping("/windEnergy")
public class WindEnergyController extends BaseController {

    @Autowired
    private IProductService productService;
    @Autowired
    private IImageService imageService;
    @Autowired
    private ICustomerService customerService;
    @Autowired
    private IQuestionService questionService;
    @Autowired
    private INewsService newsService;
    /**
     * 前台主页面-首页
     *
     * @return
     */

    @GetMapping("/main")
    public String newIndex(HttpServletRequest request) {

        //查询前台广告图
        logger.info("首页");
        Image image = new Image();
        image.setImageType("11");
        List<Image> adImages = imageService.selectListByCondition(image);

        request.setAttribute("ADImages", adImages);
        //查询所有产品主图展示在主页

        image.setImageType("5");
        image.setProductType(4);
        List<Image> mainImages = imageService.selectListByCondition(image);
        request.setAttribute("mainImages", mainImages);

        //查询案例
        image.setImageType("12");
        List<Image> caseImage = imageService.selectListByCondition(image);
        logger.info("经典案例数目：" + caseImage);
        request.setAttribute("caseImage", caseImage);

        image.setImageType("13");
        List<Image> aboutImage = imageService.selectListByCondition(image);

        request.setAttribute("aboutImage", aboutImage);

        //查询新闻
        News news= new News();
        news.setProductType(4);
        List<News> newsList = newsService.selectAll(news);
        logger.info("新闻条数:"+newsList.size());
        request.setAttribute("newsList", newsList);

        request.setAttribute("pageId","main");
        return "customer/windEnergy/main";
    }

    @GetMapping("/index")
    public String index(HttpServletRequest request)
    {

        return "redirect:/windEnergy/main";
    }

    //进入详情页面
    @GetMapping("/productDetail/{productId}")
    public String productList(@PathVariable Integer productId, HttpServletRequest request) {
        logger.info("productId:" + productId);
        //获取产品信息
        Product product = productService.selectById(productId);
        Image image = new Image();
        image.setProductId(productId);
        //主图
        image.setImageType("5");
        List<Image> mainImage = imageService.selectListByCondition(image);
        logger.info("企业文化");
        image.setImageType("4");
        List<Image> aboutImage = imageService.selectListByCondition(image);


        //幻灯片
        image.setImageType("6");
        List<Image> images = imageService.selectListByCondition(image);
        //详情图
        image.setImageType("7");
        List<Image> detailImages = imageService.selectListByCondition(image);
        request.setAttribute("product", product);
        request.setAttribute("mainImage", mainImage);
        request.setAttribute("images", images);
        request.setAttribute("detailImages", detailImages);


        return "customer/windEnergy/productDetail";
    }
    //查询商品
    @GetMapping("/search/{name}")
    public String search(@PathVariable String name, HttpServletRequest request) {


        List<Image> list=imageService.findByName(name);

        request.setAttribute("imageList",list);
        return "customer/solarPower/productList";
    }

/**
 * 产品中心
 */


    @GetMapping("/productCenter")
    public String ProductsCenter( HttpServletRequest request,String productType) {
        Image image=new Image();

        image.setImageType("5");
        image.setProductType(4);
        List<Image> mainImages = imageService.selectListByCondition(image);
        request.setAttribute("imageList", mainImages);

        request.setAttribute("pageId","productCenter");
        return "customer/windEnergy/productCenter";
    }


    /**
     * 企业文化
     *
     * @param request
     * @return
     */

    @GetMapping("/aboutUs")
    public String newAboutUs(HttpServletRequest request) {
        Image image = new Image();
        //关于我们的图片
        logger.info("企业文化");
        image.setImageType("13");
        List<Image> aboutImage = imageService.selectListByCondition(image);
        request.setAttribute("aboutImage", aboutImage);
      request.setAttribute("pageId","aboutUs");
        return "customer/windEnergy/aboutUs";
    }
    /**
     * 常见问题解答
     */
    @GetMapping("/answer")
    public String answer(HttpServletRequest request) {
        List<Question> questions=questionService.selectList(null);
        request.setAttribute("questions",questions);
        return "customer/solarPower/answer";
    }



    /**
     * 联系我们
     */
    @GetMapping("/contact")
    public String newContact(HttpServletRequest request) {
      request.setAttribute("pageId","contact");
      return "customer/windEnergy/contact";
    }

    @GetMapping("/footer")
    public String newFooter(HttpServletRequest request) {

      return "customer/windEnergy/footer";
    }


    /**
     * 经典案例
     */

    @GetMapping("/case")
    public String newCase(HttpServletRequest request) {
        Image image = new Image();
        image.setImageType("12");
        //查询案例
        List<Image> caseImage = imageService.selectListByCondition(image);
        request.setAttribute("caseImage", caseImage);
        request.setAttribute("pageId","case");
        return "customer/windEnergy/case";
    }
    /**
     * 客户信息提交保存
     */
    @PostMapping("/customer")
    @ResponseBody
    public String customer(HttpServletRequest request,String phone,String name,String message,String website){

        Customer customer=new Customer();
        customer.setName(name);
        customer.setMessage(message);
        customer.setMobile(phone);
        customer.setWebsite(website);

        //获取IP
        String ip = IpAdrressUtil.getIpAdrress(request);
        customer.setIp(ip);
        //获取真实地址
        Map<String, String> realAddress = IpAdrressUtil.findRealAddress(request);
        String address = realAddress.get("address");
        logger.info("address====================="+address);
        customer.setAddress(address);

        customer.setRegisterTime(new Date());
        logger.info("phone:"+phone);
        customerService.insert(customer);
        return  "success";
    }
    //进入新闻详情页面
    @GetMapping("/newsDetail/{newsId}")
    public String newsDetail(@PathVariable Integer newsId, HttpServletRequest request) {
        logger.info("newsId:" + newsId);
        //获取新闻
        News news= newsService.selectById(newsId);
        request.setAttribute("news", news);
        return "customer/windEnergy/newsDetail";
    }

    /**
     * 下拉列表太阳能页面
     * @return
     */
    @GetMapping("/solarmain")
    public String solarmain( HttpServletRequest request) {
        //查询前台广告图
        logger.info("首页");
        Image image = new Image();
        String productType=request.getParameter("productType");
        image.setImageType("9");
        image.setProductType(Integer.parseInt(productType));
        List<Image> adImages = imageService.selectListByCondition(image);
        request.setAttribute("ADImages", adImages);
        //查询所有产品主图展示在主页
        image.setImageType("5");
        List<Image> mainImages = imageService.selectByTypeId(image);
        request.setAttribute("mainImages", mainImages);

        image.setImageType("8");
        //查询案例
        List<Image> caseImage = imageService.selectListByCondition(image);
        logger.info("经典案例数目：" + caseImage);
        request.setAttribute("caseImage", caseImage);

        image.setImageType("10");
        List<Image> aboutImage = imageService.selectListByCondition(image);
        request.setAttribute("aboutImage", aboutImage);
        return "customer/solarPower/main";

    }

    /**
     * 下拉列表硅能电池页面
     * @return
     */
    @GetMapping("/silicon")
    public String Silicon(HttpServletRequest request) {
        //查询前台广告图
        logger.info("首页");
        Image image = new Image();
        image.setImageType("1");
        List<Image> adImages = imageService.selectListByCondition(image);
        request.setAttribute("ADImages", adImages);
        //查询所有产品主图展示在主页

        image.setImageType("5");
        List<Image> mainImages = imageService.selectListByCondition(image);
        request.setAttribute("mainImages", mainImages);
        image.setImageType("3");

        //查询案例
        List<Image> caseImage = imageService.selectListByCondition(image);
        logger.info("经典案例数目：" + caseImage);
        request.setAttribute("caseImage", caseImage);

        image.setImageType("4");
        List<Image> aboutImage = imageService.selectListByCondition(image);
        request.setAttribute("aboutImage", aboutImage);
        return "customer/solarPower/silicon";

    }

    /**
     * 前台登录
     * @param request
     * @return
     */
    @PostMapping("/loginIndex")
    @ResponseBody
    public List<Customer> loginIndex(HttpServletRequest request, Customer customer,
                                String loginName, String password) throws ServletException,IOException{
        List list=new ArrayList();
        String phone= "^[1][3,4,5,7,8,9][0-9]{9}$";
        if(loginName.matches(phone)){
            customer.setMobile(loginName);
            customer.setPassword(password);
        }else{
            customer.setName(loginName);
            customer.setPassword(password);
        }
        List<Customer> customerList = customerService.selectName(customer);
        if (customerList!=null && customerList.size()>0) {
            for(int i=0;i<customerList.size();i++){
                customer = customerList.get(i);
                if(customer.getName().equals(loginName) || customer.getMobile().equals(loginName) && customer.getPassword().equals(password)){
                    return customerList;
                }else{
                    return list;
                }
            }
            logger.info("success");
            return customerList;
        }else{
                logger.info("失败");
                return null;
        }

    }

    /**
     * 退出登录
     * @param request
     * @return
     *
     */
    @PostMapping("/loginOutIndex")
    @ResponseBody
    public String LoginOutIndex(HttpServletRequest request){
           request.getSession().invalidate();
           return "success";
    }

    /**
     * 检测账户是否被使用
     * @param request
     * @param customer
     * @return
     */
    @PostMapping("/selectRegistName")
    @ResponseBody
    public String selectRegistName(HttpServletRequest request,String name,Customer customer){
        logger.info("进入注册"+customer.getName().length());
        if(customer.getName().length()==0){
            customer.setName(customer.getMobile());
            logger.info("name赋值:"+customer.getName());
        }
        customer.setRegisterTime(new Date());
        if(customer.getName().equals(name) ){
            List<Customer> list = customerService.selectRegistName(customer);
            if(list!=null && list.size()>0){
                    return "fail";
            }else {

                int count= customerService.insertCustomerName(customer);
                if(count>0){
                    return "success";
                }
            }
        }
        if(customer.getName().equals(customer.getMobile())){
            List<Customer> list = customerService.selectRegistName(customer);
            logger.info("手机"+list.size());
            if(list!=null && list.size()>0){
                return "phone";
            }else {

                int count= customerService.insertCustomerName(customer);
                logger.info("可以使用");
                if(count>0){
                    return "success";
                }
            }
        }
        return "";
    }

    /**
     * 检测用户名
     * @param request
     * @param customer
     * @return
     */
    @PostMapping("/selectCheckName")
    @ResponseBody
    public String selectCheckName(HttpServletRequest request,Customer customer,String name){
        logger.info("进入检测");
        logger.info("name:"+name);
        customer.setName(name);
        logger.info("name"+customer.getName());
        List<Customer> list=customerService.selectCheckName(customer);
        logger.info("list"+list.size());
        if(list!=null && list.size()>0){
            logger.info("用户名存在");
            return "use";
        }else{
            logger.info("用户名不存在");
            return "no";
        }

    }

    /**
     * 修改密码
     * @param request
     * @param customer
     * @return
     */
    @PostMapping("/updataPwd")
    @ResponseBody
    public String UpdataPwd(HttpServletRequest request,Customer customer){
        logger.info("进入修改");
        logger.info("密码"+customer.getPassword());
        int count=customerService.updatePwd(customer);
        if(count>0){
            logger.info("大于");
            return "success";
        }else{
            logger.info("大于");
            return "fail";
        }
    }

}
