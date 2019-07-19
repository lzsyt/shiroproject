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
@RequestMapping("/en_windEnergy")
public class En_WindEnergyController extends BaseController {

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

    @GetMapping("/en_main")
    public String newIndex(HttpServletRequest request,String pageId) {
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

        image.setImageType("4");
        List<Image> aboutImage = imageService.selectListByCondition(image);

        HttpSession session = request.getSession();
        session.setAttribute("pageId",pageId);
        request.setAttribute("aboutImage", aboutImage);
        //查询新闻
        News news= new News();
        news.setProductType(4);
        List<News> newsList = newsService.selectAll(news);
        logger.info("新闻条数:"+newsList.size());
        request.setAttribute("newsList", newsList);

        request.setAttribute("pageId","main");

      return "customer/windEnergy/en_main";

    }

    @GetMapping("/en_index")
    public String index(HttpServletRequest request,String pageId)
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
        request.setAttribute("pageId",pageId);
        return "redirect:/en_windEnergy/en_main";
    }

    //进入详情页面
    @GetMapping("/en_productDetail/{productId}")
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
        request.setAttribute("productId",productId);
        return "customer/windEnergy/en_productDetail";
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


    @GetMapping("/en_productCenter")
    public String ProductsCenter( HttpServletRequest request,String productType) {
        Image image=new Image();

        image.setImageType("5");
        image.setProductType(4);
        List<Image> mainImages = imageService.selectListByCondition(image);
        request.setAttribute("imageList", mainImages);

        request.setAttribute("pageId","productCenter");
        return "customer/windEnergy/en_productCenter";
    }


    /**
     * 企业文化
     *
     * @param request
     * @return
     */

    @GetMapping("/en_aboutUs")
    public String newAboutUs(HttpServletRequest request) {
        Image image = new Image();
        //关于我们的图片
        logger.info("企业文化");
        image.setImageType("13");
        List<Image> aboutImage = imageService.selectListByCondition(image);
        request.setAttribute("aboutImage", aboutImage);
      request.setAttribute("pageId","aboutUs");
        return "customer/windEnergy/en_aboutUs";
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
    @GetMapping("/en_contact")
    public String newContact(HttpServletRequest request) {
      request.setAttribute("pageId","contact");
      return "customer/windEnergy/en_contact";
    }

    @GetMapping("/en_footer")
    public String newFooter(HttpServletRequest request) {
        return "customer/windEnergy/en_footer";
    }


    /**
     * 经典案例
     */

    @GetMapping("/en_case")
    public String newCase(HttpServletRequest request) {
        Image image = new Image();
        image.setImageType("12");
        //查询案例
        List<Image> caseImage = imageService.selectListByCondition(image);
        request.setAttribute("caseImage", caseImage);
        request.setAttribute("pageId","case");
        return "customer/windEnergy/en_case";
    }
    /**
     * 客户信息提交保存
     */
    @PostMapping("/customer")
    @ResponseBody
    public String customer(HttpServletRequest request,String email,String message,String website){

        Customer customer=new Customer();
        customer.setEmail(email);
        customer.setMessage(message);
        customer.setWebsite(website);

        //获取IP
        String ip = IpAdrressUtil.getIpAdrress(request);
        customer.setIp(ip);
        customer.setRegisterTime(new Date());

        //获取真实地址
        Map<String, String> realAddress = IpAdrressUtil.findRealAddress(request);
        String address = realAddress.get("address");
        logger.info("address====================="+address);
        customer.setAddress(address);
        customerService.insert(customer);
        return  "success";
    }
    //进入新闻详情页面
    @GetMapping("/en_newsDetail/{newsId}")
    public String newsDetail(@PathVariable Integer newsId, HttpServletRequest request) {
      logger.info("newsId:" + newsId);
      //获取新闻
      News news= newsService.selectById(newsId);
      request.setAttribute("news", news);
      return "customer/windEnergy/en_newsDetail";
    }

}
