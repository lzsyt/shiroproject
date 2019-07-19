package com.wangzhixuan.controller;

import com.baomidou.mybatisplus.mapper.Condition;
import com.baomidou.mybatisplus.plugins.Page;
import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.commons.utils.IpAdrressUtil;
import com.wangzhixuan.model.*;
import com.wangzhixuan.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.*;

/**
 * @description：用户管理
 * @author：zhixuan.wang
 * @date：2015/10/1 14:51
 */
@Controller
@RequestMapping("/solarController")
public class SolarController extends BaseController {

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
    public String newIndex(HttpServletRequest request,String pageId) {
        //查询前台广告图
        logger.info("首页");
        Image image = new Image();
        image.setImageType("15");
        List<Image> adImages = imageService.selectListByCondition(image);
        request.setAttribute("ADImages", adImages);
        //查询所有产品主图展示在主页

        image.setImageType("5");
        image.setProductType(5);
        List<Image> mainImages = imageService.selectListByCondition(image);
        request.setAttribute("mainImages", mainImages);

        //查询案例
        image.setImageType("16");
        List<Image> caseImage = imageService.selectListByCondition(image);
        logger.info("经典案例数目：" + caseImage);
        request.setAttribute("caseImage", caseImage);

        //介绍图
        image.setImageType("17");
        List<Image> aboutImage = imageService.selectListByCondition(image);

        request.setAttribute("pageId",pageId);
        request.setAttribute("aboutImage", aboutImage);

        //查询新闻
        News news= new News();
        news.setProductType(5);
        List<News> newsList = newsService.selectAll(news);
        logger.info("新闻条数:"+newsList.size());
        request.setAttribute("newsList", newsList);
        request.setAttribute("pageId","main");
        return "customer/solarController/main";
    }

    @GetMapping("/index")
    public String index(HttpServletRequest request)
    {
        //总的框架页面，param决定iframe是哪个页面
        /*String target=request.getParameter("target");*/

        /*logger.info("page:"+page);
        logger.info("风机首页导航");*/
        //查询前台广告图
/*        Image image = new Image();
        image.setImageType("1");
        List<Image> adImages = imageService.selectListByCondition(image);
        //主图
        image.setImageType("5");
        List<Image> mainImage = imageService.selectListByCondition(image);
        logger.debug("mainImage:"+mainImage.size());*/
/*
        request.setAttribute("mainImage", mainImage);
        request.setAttribute("ADImages", adImages);*/
        //查询所有产品主图展示在主页
       /* request.setAttribute("target",target);
        request.setAttribute("param",page);
*/
        return "redirect:/solarController/main";
    }

    //进入详情页面
    @GetMapping("/productDetail/{productId}")
    public String productList(@PathVariable Integer productId, HttpServletRequest request) {
        logger.info("productId:" + productId);
        //获取产品信息
        Product product = productService.selectById(productId);
        logger.info("产品....................."+product);
        Image image = new Image();
        image.setProductId(productId);
        //主图
        image.setImageType("5");
        List<Image> mainImage = imageService.selectListByCondition(image);
        logger.info("企业文化");
        image.setImageType("17");
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
        request.setAttribute("productId",productId);
        return "customer/solarController/productDetail";
    }

    /**
     * 产品中心
     */


    @GetMapping("/productCenter")
    public String ProductsCenter( HttpServletRequest request,String productType) {
        Image image=new Image();

        image.setImageType("5");
        image.setProductType(5);
        List<Image> mainImages = imageService.selectListByCondition(image);
        request.setAttribute("imageList", mainImages);

        request.setAttribute("pageId","productCenter");
        return "customer/solarController/productCenter";
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
        image.setImageType("17");
        List<Image> aboutImage = imageService.selectListByCondition(image);
        request.setAttribute("aboutImage", aboutImage);
        request.setAttribute("pageId","aboutUs");
        return "customer/solarController/aboutUs";
    }
    /**
     * 联系我们
     */
    @GetMapping("/contact")
    public String newContact(HttpServletRequest request) {
        request.setAttribute("pageId","contact");
        return "customer/solarController/contact";
    }

    @GetMapping("/footer")
    public String newFooter(HttpServletRequest request) {
        return "customer/solarController/footer";
    }


    /**
     * 经典案例
     */

    @GetMapping("/case")
    public String newCase(HttpServletRequest request) {
        Image image = new Image();
        image.setImageType("16");
        //查询案例
        List<Image> caseImage = imageService.selectListByCondition(image);
        request.setAttribute("caseImage", caseImage);
        request.setAttribute("pageId","case");
        return "customer/solarController/case";
    }
    /*
    * 新闻中心
    * */
    @RequestMapping("/newsCenter")
    public String newsCenter(Model model, @RequestParam(value = "pg",defaultValue = "1") Integer pg, @RequestParam(value = "pageSize",defaultValue = "5") Integer pageSize) {
      Page<News> page = new Page<>(pg,pageSize);
      //根据product_Type进行分页查询
      newsService.selectPage(page, Condition.create().eq("product_Type",5));
      /*System.out.println("新闻总数=======" + page.getTotal());
      System.out.println("新闻纪录=======" + page.getRecords());
      System.out.println("新闻条数=======" + page.getSize());
      System.out.println("是否有下一页" + page.hasNext());
      System.out.println("是否有上一页" + page.hasPrevious());
      System.out.println("当前页======" + page.getCurrent());
      System.out.println("总页数======" + page.getPages());*/
      model.addAttribute("page",page);
      return "customer/solarController/newsCenter";
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
      return "customer/solarController/newsDetail";
    }

}
