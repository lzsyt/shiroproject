package com.wangzhixuan.controller;

import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.commons.utils.IpAdrressUtil;
import com.wangzhixuan.model.Customer;
import com.wangzhixuan.model.Image;
import com.wangzhixuan.service.ICustomerService;
import com.wangzhixuan.service.IImageService;
import com.wangzhixuan.service.impl.CustomerServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @description：国外风机网站
 * @author：hua.huang
 * @date：2019/6/14 14:00
 */
@Controller
@RequestMapping("/foreignWindEnergy")
public class ForeignWindEnergy extends BaseController {
  @Autowired
  private IImageService imageService;
  @Autowired
  private ICustomerService customerService;

  /**
   * 返回PORTFOLIO数据
   *
   */
  @RequestMapping("/portfolio")
  @ResponseBody
  public Object portfolioData(HttpServletRequest request) {

    //查询portfolio数据
    logger.info("portfolio数据");
    Image image = new Image();
    //查询产品主图
    image.setImageType("5");
    image.setProductType(4);
    List<Image> mainImages = imageService.selectListByCondition(image);
    return mainImages;
  }
  /**
   * 返回team数据
   *
   */
  @RequestMapping("/team")
  @ResponseBody
  public Object teamData(HttpServletRequest request) {

    //查询team数据
    logger.info("team数据");
    Image image = new Image();
    //查询企业文化图片
    image.setImageType("13");
    List<Image> aboutImage = imageService.selectListByCondition(image);
    return aboutImage;
  }
  /**
   * 经典案例
   */

  @RequestMapping("/case")
  @ResponseBody
  public Object newCase(HttpServletRequest request) {
    //查询team数据
    logger.info("case数据");
    Image image = new Image();
    image.setImageType("12");
    //查询案例
    List<Image> caseImage = imageService.selectListByCondition(image);
    return caseImage;
  }
  /**
   * 后台登陆(为了适配国外网站后台)
   *
   * @param model
   * @return
   */
  @GetMapping("/admin")
  public String admin(Model model) {
    logger.info("index");
    return "login";
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
}
