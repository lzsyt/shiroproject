package com.wangzhixuan.controller;

import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.commons.result.PageInfo;
import com.wangzhixuan.commons.utils.IpAdrressUtil;
import com.wangzhixuan.commons.utils.StringUtils;
import com.wangzhixuan.model.Customer;
import com.wangzhixuan.model.Image;
import com.wangzhixuan.model.Product;
import com.wangzhixuan.model.Question;
import com.wangzhixuan.service.ICustomerService;
import com.wangzhixuan.service.IImageService;
import com.wangzhixuan.service.IProductService;
import com.wangzhixuan.service.IQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.*;

/**
 * @description：用户管理
 * @author：zhixuan.wang
 * @date：2015/10/1 14:51
 */
@Controller
@RequestMapping("/customer")
public class CustomerController extends BaseController {

    @Autowired
    private IProductService productService;
    @Autowired
    private IImageService imageService;
    @Autowired
    private ICustomerService customerService;
    @Autowired
    private IQuestionService questionService;
    /**
     * 图片管理页
     * @return
     */
    @GetMapping("/manager")
    public String manager() {
        return "admin/customer/customer";
    }
    /**
     * 客户列表
     *
     * @return
     */
    @RequestMapping("/treeGrid")
    @ResponseBody
    public Object dataGrid(String page,String rows) {
        PageInfo pageInfo = new PageInfo();
        Map<String, Object> map = new HashMap<>();
        //获取当前显示页码
        int pageNum = Integer.parseInt(page);
        //获取每页显示条数
        int size = Integer.parseInt(rows);
        //获取每页起始项
        int from = (pageNum-1)*size;
        map.put("size",size);
        map.put("from",from);
        //将查询的总记录数存入pageInfo
        pageInfo.setTotal(customerService.count());
        //将查询的每页的记录存入pageInfo
      pageInfo.setRows(customerService.selectAll(map));

        return pageInfo;
    }
    /*编辑页面*/
  @GetMapping("/editPage")
  public String toupdateremark(HttpServletRequest request, String id) {
    Customer customer = customerService.selectById(id);
    logger.info("customer:"+customer);
    request.setAttribute("customer", customer);
    return "/admin/customer/editCustomer";
  }
  /*编辑*/
  @RequestMapping("/updateCustomer")
  @ResponseBody
  public Object updateremark(@RequestParam("id") String id, @RequestParam("remark") String remark) {
    logger.info("id:"+id+"==="+"remark:"+remark);
    customerService.updateRemark(id, remark);
    return renderSuccess("修改成功");
  }
    /**
     * 删除客户记录
     *
     * @param id
     * @return
     */
    @RequestMapping("/delete")
    @ResponseBody
    public Object delete(String id) {
        customerService.deleteByCustomerId(Integer.parseInt(id));
        return renderSuccess("删除成功！");
    }
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
        image.setImageType("1");
        List<Image> adImages = imageService.selectListByCondition(image);
        request.setAttribute("ADImages", adImages);
        //查询所有产品主图展示在主页
        request.setAttribute("pageId","main");
        return "customer/solarPower/main";
    }

    @GetMapping("/index")
    public String index(HttpServletRequest request,String pageId)
    {
       /* String target=request.getParameter("target");
        request.setAttribute("target",target);*/
        request.setAttribute("pageId",pageId);
        return "redirect:/customer/main";
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

        return "customer/solarPower/productDetail";
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
    @GetMapping("/productsCenter")
    public String productsCenter( HttpServletRequest request,String productType) {
        Image image=new Image();
        if (StringUtils.isNotBlank(productType)){
            image.setProductType(Integer.valueOf(productType));
            if (productType.equals("2")){
                request.setAttribute("type", "光合硅能");

            }

            if (productType.equals("3")){
                request.setAttribute("type", "太阳能电池板");

            }

        }else {
            image.setProductType(2);
            request.setAttribute("type", "光合硅能");
        }
        image.setImageType("5");
        List<Image> mainImages = imageService.selectListByCondition(image);
        request.setAttribute("imageList", mainImages);
      request.setAttribute("pageId","productsCenter");
        return "customer/solarPower/productList";
    }
    /**
     * 企业文化
     *
     * @param request
     * @return
     */
    @GetMapping("/aboutUs")
    public String aboutUs(HttpServletRequest request) {

        Image image = new Image();
        //关于我们的图片
        logger.info("企业文化");
        image.setImageType("4");
        List<Image> aboutImage = imageService.selectListByCondition(image);

        request.setAttribute("aboutImage", aboutImage);
      request.setAttribute("pageId","aboutUs");
        return "customer/solarPower/aboutUs";
    }

    /**
     * 常见问题解答
     */
    @GetMapping("/answer")
    public String answer(HttpServletRequest request) {
        List<Question> questions=questionService.selectList(null);
        //电池养护
        List<Question> introduces=questionService.findIntroduce();
        logger.info(introduces.toString());;
        request.setAttribute("introduce",introduces);
        request.setAttribute("questions",questions);
        return "customer/solarPower/answer";
    }
    /**
     * 资料下载
     */
    @GetMapping("/introduce")
    public String introduce(HttpServletRequest request){
        List<Question> files=questionService.findFile();
        request.setAttribute("files",files);
        return "customer/solarPower/introduce";
    }
    /**
     * 下载资料的方法
     */
    @GetMapping("/download")
    public ResponseEntity<Resource> downloadFile(HttpServletRequest request,String path){
        String base=request.getSession().getServletContext().getRealPath("/");
        File file=new File(base+path);
        return download(file);
    }



    /**
     * 联系我们
     */
    @GetMapping("/contact")
    public String contact(HttpServletRequest request) {
        request.setAttribute("pageId","contact");
        return "customer/solarPower/contact";
    }
    /**
     * 经典案例
     */
    @GetMapping("/case")
    public String classicCase(HttpServletRequest request) {
        Image image = new Image();
        image.setImageType("3");
        image.setProductType(2);

        //查询案例
        List<Image> caseImage = imageService.selectListByCondition(image);
        logger.info("经典案例数目：" + caseImage);
        request.setAttribute("caseImage", caseImage);
        request.setAttribute("pageId","case");
        return "customer/solarPower/classicCase";
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
