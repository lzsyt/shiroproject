package com.wangzhixuan.controller;

import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.commons.shiro.captcha.DreamCaptcha;
import com.wangzhixuan.commons.utils.StringUtils;
import com.wangzhixuan.model.Image;
import com.wangzhixuan.service.IImageService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.DisabledAccountException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @description：登录退出
 * @author：zhixuan.wang
 * @date：2015/10/1 14:51
 */
@Controller
public class LoginController extends BaseController {
    @Autowired
    private DreamCaptcha dreamCaptcha;
  @Autowired
  private IImageService imageService;

    /**
     * 光合硅能首页
     *
     * @return
     */
    @GetMapping("/")
    public String index(HttpServletRequest request) {
      //查询前台广告图
      logger.info("首页");
      Image image = new Image();
      image.setImageType("1");
      List<Image> adImages = imageService.selectListByCondition(image);
      request.setAttribute("ADImages", adImages);
      //查询所有产品主图展示在主页
      request.setAttribute("pageId","main");

      return "customer/solarPower/main";
    }
   /*设置默认启动页面*/
    /*@GetMapping("/")
    public String index(HttpServletRequest request) {
      return "redirect:en_windEnergy/en_main";

    }*/

    @GetMapping("/windEnergy")
    public String windEnergyIndex(){
        return "redirect:windEnergy/main";
    }

    @GetMapping("/en_windEnergy")
    public String en_windEnergyIndex(){
        return "redirect:en_windEnergy/en_main";
    }

    @GetMapping("/solarPanel")
    public String solarPanelIndex(){
        return "redirect:solarPanel/main";
    }

    @GetMapping("/en_solarPanel")
    public String en_solarPanelIndex(){
        return "redirect:en_solarPanel/en_main";
    }

    @GetMapping("/solarController")
    public String solarControllerIndex(){
        return "redirect:solarController/main";
    }

    @GetMapping("/en_solarController")
    public String en_solarControllerIndex(){
        return "redirect:en_solarController/en_main";
    }


    /**
     * 后台登陆
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
     * 首页
     *
     * @param model
     * @return
     */
    @GetMapping("/index")
    public String index(Model model, HttpServletRequest  request) {

        return "index";
    }

    /**
     * GET 登录
     * @return {String}
     */
    @GetMapping("/login")
    public String login(HttpServletRequest request) {
        request.getAttribute("signature");
       // String signature,String timestamp,String nonc
        logger.info("登陆页面");
        if (SecurityUtils.getSubject().isAuthenticated()) {
            return "redirect:/index";
        }
        return "login";
    }

    /**
     * POST 登录 shiro 写法
     *
     * @param username 用户名
     * @param password 密码
     * @return {Object}
     */
    @PostMapping("/login")
    @ResponseBody
    public Object loginPost(HttpServletRequest request, HttpServletResponse response,
            String username, String password, String captcha,
            @RequestParam(value = "rememberMe", defaultValue = "0") Integer rememberMe) {
        logger.info("POST请求登录");
        request.getSession().setAttribute("name",username);
        // 改为全部抛出异常，避免ajax csrf token被刷新
        if (StringUtils.isBlank(username)) {
            throw new RuntimeException("用户名不能为空");
        }
        if (StringUtils.isBlank(password)) {
            throw new RuntimeException("密码不能为空");
        }
        if (StringUtils.isBlank(captcha)) {
            throw new RuntimeException("验证码不能为空");
        }
        if (!dreamCaptcha.validate(request, response, captcha)) {
            throw new RuntimeException("验证码错误");
        }
        Subject user = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        // 设置记住密码
        token.setRememberMe(1 == rememberMe);
        try {
            user.login(token);
            return renderSuccess();
        } catch (UnknownAccountException e) {
            throw new RuntimeException("账号不存在！", e);
        } catch (DisabledAccountException e) {
            throw new RuntimeException("账号未启用！", e);
        } catch (IncorrectCredentialsException e) {
            throw new RuntimeException("密码错误！", e);
        } catch (Throwable e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    /**
     * 未授权
     * @return {String}
     */
    @GetMapping("/unauth")
    public String unauth() {
        if (SecurityUtils.getSubject().isAuthenticated() == false) {
            return "redirect:/login";
        }
        return "unauth";
    }

    /**
     * 退出
     * @return {Result}
     */
    @PostMapping("/logout")
    @ResponseBody
    public Object logout() {
        logger.info("登出");
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return renderSuccess();
    }


}
