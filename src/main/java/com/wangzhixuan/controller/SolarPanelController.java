package com.wangzhixuan.controller;

import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.commons.utils.IpAdrressUtil;
import com.wangzhixuan.model.Customer;
import com.wangzhixuan.model.Image;
import com.wangzhixuan.model.News;
import com.wangzhixuan.model.Product;
import com.wangzhixuan.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @description：太阳能电池板
 * @author：hua.huang
 * @date：2019/3/15 16:20
 */
@Controller
@RequestMapping("/solarPanel")
public class SolarPanelController extends BaseController{
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
    public String main(HttpServletRequest request) {
        //查询前台广告图
        logger.info("首页");
        Image image = new Image();
        image.setImageType("9");
        List<Image> adImages = imageService.selectListByCondition(image);
        request.setAttribute("ADImages", adImages);
        //查询所有产品主图展示在主页

        image.setImageType("5");
        image.setProductType(3);
        List<Image> mainImages = imageService.selectListByCondition(image);
        request.setAttribute("mainImages", mainImages);

        //查询案例
        image.setImageType("8");
        List<Image> caseImage = imageService.selectListByCondition(image);
        logger.info("经典案例数目：" + caseImage);
        request.setAttribute("caseImage", caseImage);

        //介绍图
        image.setImageType("10");
        List<Image> aboutImage = imageService.selectListByCondition(image);
        request.setAttribute("aboutImage", aboutImage);

        //查询新闻
        News news= new News();
        news.setProductType(3);
        List<News> newsList = newsService.selectAll(news);
        logger.info("新闻条数:"+newsList.size());
        request.setAttribute("newsList", newsList);

        request.setAttribute("pageId","main");
        return "customer/solarPanel/main";
    }
    @GetMapping("/index")
    public String index(HttpServletRequest request,String pageId)
    {
        request.setAttribute("pageId",pageId);
        return "redirect:/solarPanel/main";
    }
    @GetMapping("/case")
    public String newCase(HttpServletRequest request) {
        Image image = new Image();
        image.setImageType("8");
        //查询案例
        List<Image> caseImage = imageService.selectListByCondition(image);
        request.setAttribute("caseImage", caseImage);
        request.setAttribute("pageId","case");
        return "customer/solarPanel/case";
    }
    @GetMapping("/aboutUs")
    public String newAboutUs(HttpServletRequest request) {
        Image image = new Image();
        //关于我们的图片
        logger.info("企业文化");
        image.setImageType("10");
        List<Image> aboutImage = imageService.selectListByCondition(image);
        request.setAttribute("aboutImage", aboutImage);
        request.setAttribute("pageId","aboutUs");
        return "customer/solarPanel/aboutUs";
    }
    @GetMapping("/contact")
    public String newContact(HttpServletRequest request) {
      request.setAttribute("pageId","contact");
      return "customer/solarPanel/contact";
    }

    @GetMapping("/productCenter")
    public String newProductsCenter( HttpServletRequest request,String productType) {
        logger.info("productType:" + productType);
        Image image=new Image();

        image.setImageType("5");
        image.setProductType(3);
        List<Image> mainImages = imageService.selectListByCondition(image);
        request.setAttribute("imageList", mainImages);
        request.setAttribute("pageId","productCenter");
        return "customer/solarPanel/productCenter";
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

        return "customer/solarPanel/productDetail";
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
        customer.setRegisterTime(new Date());
        logger.info("phone:"+phone);
      //获取真实地址
      Map<String, String> realAddress = IpAdrressUtil.findRealAddress(request);
      String address = realAddress.get("address");
      logger.info("address====================="+address);
      customer.setAddress(address);
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
      return "customer/solarPanel/newsDetail";
    }

}
