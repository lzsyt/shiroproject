package com.wangzhixuan.controller;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.commons.result.PageInfo;
import com.wangzhixuan.model.Image;
import com.wangzhixuan.model.Product;
import com.wangzhixuan.model.Products;
import com.wangzhixuan.service.IImageService;
import com.wangzhixuan.service.IProductService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @description：产品分类
 * @author：lz
 * @date：2018/9/25
 */
@Controller
@RequestMapping("/product")
public class ProductController extends BaseController {
    @Autowired
    private IProductService productService;
    @Autowired
    private IImageService imageService;

    /**
     * 产品页
     *
     * @return
     */
    @GetMapping("/battery")
    public String manager() {
        return "admin/battery/product";
    }

    /**
     * 产品展示列表
     *
     * @param productType
     * @param page
     * @param rows
     * @return
     */
    @PostMapping("/dataGrid")
    @ResponseBody
    public Object dataGrid(String productType, Integer page, HttpServletRequest request, Integer rows,String productName
            ,String productTypeName,String sort, String order,String creater) {
        PageInfo pageInfo = new PageInfo(page, rows,sort, order);
        Map<String, Object> condition = new HashMap<String, Object>();
        if (productType != null) {
            condition.put("productType", productType);
        }
        if(productName!=null){
            condition.put("productName",productName);
        }
        if(productTypeName!=null){
            condition.put("productTypeName",productTypeName);
        }
        if(creater!=null){
            condition.put("creater",creater);
        }
        pageInfo.setCondition(condition);
        productService.selectDataGrid(pageInfo);
        return pageInfo;
    }

    /**
     * 添加产品页
     *
     * @return
     */
    @RequestMapping("/addPage")
    public String addPage() {
        return "admin/battery/productAdd";
    }

    /**
     * 添加产品
     *
     * @return GET和POST请求传的参数会自动转换赋值到@RequestParam 所注解的变量上
     */
    @RequestMapping("/add")
    @ResponseBody
    public Object add(@Valid Product product, Image image, HttpServletRequest request, @RequestParam("mainFile") MultipartFile[] mainFile, @RequestParam("slideFile") MultipartFile[] slideFile, @RequestParam("paramFile") MultipartFile[] paramFile) throws
            IOException, IllegalStateException {

        List imglist = new ArrayList();
        image.setImagePath("/images/product/");
        String loginname="";
        if (request.getSession().getAttribute("name")!=null){
             loginname= request.getSession().getAttribute("name").toString();
        }
        image.setImageTitle(product.getProductName());
        product.setCreater(loginname);
        logger.info("文件名" + mainFile[0].getOriginalFilename());
        logger.info("是否有文件" + mainFile[0].isEmpty());


        productService.insert(product);

        String title = product.getProductName() + "/";
        String he = image.getImagePath() + title;

    if (mainFile.length>0 && !mainFile[0].isEmpty()) {
            for (int i = 0; i < mainFile.length; i++) {
                if (product.getProductName().length()!=product.getProductName().getBytes().length) {
                    //先设置根目录下一级的一个默认的目录，跟项目设置成一样
                    String firstPath = "/static";
                    //拼路径
                    String imgPath = firstPath + image.getImagePath();
                    logger.info("路径" + image.getImagePath());
                    image.setImageType("5");
                    //获得图片的完整路径
                    String imgFolder = request.getSession().getServletContext().getRealPath(imgPath);
                    //获取图片原来的名字
                    String oldName = mainFile[i].getOriginalFilename();
                    //获取文件后缀名称
                    String exeName = oldName.substring(oldName.lastIndexOf("."), oldName.length());
                    //重命名
                    String imgUrl = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + "_" + new Random().nextInt(1000) + exeName;
                    image.setFileName(imgUrl);
                    imglist.add(imgUrl);
                    //图片的的修改时间保存
                    image.setUpdateTime(new Date());
                    // File.separator为路径分隔符
                    logger.info("图片路径" + imgFolder);
                    //新建file对象,
                    File targetImg = new File(imgFolder, imgUrl);
                    //存储文件（判断文件夹及文件名称是否已经存在）
                    if (!targetImg.exists() && !targetImg.isDirectory()) {
                        //不存在新建
                        targetImg.mkdirs();
                    }
                    //保存targetImg
                    mainFile[i].transferTo(targetImg);
                } else {
                    //将first和lastPath拼起来，这是由于jsp页面的设置${staticPath}/static/customer/images/ghlogo.png
                    String imgPath = "/static" + he;
                    image.setImagePath(he);
                    //获得图片的完整路径
                    String imgFolder = request.getSession().getServletContext().getRealPath(imgPath);
                    //获取图片原来的名字
                    String oldName = mainFile[i].getOriginalFilename();
                    image.setImageType("5");
                    //获取文件后缀名称
                    String exeName = oldName.substring(oldName.lastIndexOf("."), oldName.length());
                    //重命名
                    String imgUrl = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + "_" + new Random().nextInt(1000) + exeName;
                    imglist.add(imgUrl);
                    //保存图片名
                    image.setFileName(imgUrl);
                    //讲图片的的修改时间保存
                    image.setUpdateTime(new Date());
                    // File.separator为路径分隔符
                    //新建file对象,
                    File targetImg = new File(imgFolder, imgUrl);
                    //存储文件（判断文件夹及文件名称是否已经存在）
                    if (!targetImg.exists() && !targetImg.isDirectory()) {
                        targetImg.mkdirs();//不存在新建
                    }
                    //保存targetImg
                    mainFile[i].transferTo(targetImg);
                }
                Product pro = productService.TwoSelectOne(product);
                image.setProductId(pro.getProductId());
                imageService.insertToAll(image);
            }
        }
        if (slideFile.length>0&&!slideFile[0].isEmpty()) {
            for (int j = 0; j < slideFile.length; j++) {
                if (product.getProductName().length()!=product.getProductName().getBytes().length) {
                    //先设置根目录下一级的一个默认的目录，跟项目设置成一样
                    String firstPath = "/static";
                    //拼路径
                    String imgPath = firstPath + image.getImagePath();
                    image.setImageType("6");
                    //获得图片的完整路径
                    String imgFolder = request.getSession().getServletContext().getRealPath(imgPath);
                    //获取图片原来的名字
                    String oldName = slideFile[j].getOriginalFilename();
                    //获取文件后缀名称
                    String exeName = oldName.substring(oldName.lastIndexOf("."), oldName.length());
                    //重命名
                    String imgUrl = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + "_" + new Random().nextInt(1000) + exeName;
                    image.setFileName(imgUrl);
                    imglist.add(imgUrl);
                    //图片的的修改时间保存
                    image.setUpdateTime(new Date());
                    // File.separator为路径分隔符
                    logger.info("图片路径" + imgFolder);
                    //新建file对象,
                    File targetImg = new File(imgFolder, imgUrl);
                    //存储文件（判断文件夹及文件名称是否已经存在）
                    if (!targetImg.exists() && !targetImg.isDirectory()) {
                        //不存在新建
                        targetImg.mkdirs();
                    }
                    //保存targetImg
                    slideFile[j].transferTo(targetImg);
                } else {

                    //将first和lastPath拼起来，这是由于jsp页面的设置${staticPath}/static/customer/images/ghlogo.png
                    String imgPath = "/static" + he;
                    image.setImagePath(he);
                    //获得图片的完整路径
                    String imgFolder = request.getSession().getServletContext().getRealPath(imgPath);
                    logger.info("重命名2" + imgFolder);
                    //获取图片原来的名字
                    String oldName = slideFile[j].getOriginalFilename();
                    image.setImageType("6");
                    //获取文件后缀名称
                    String exeName = oldName.substring(oldName.lastIndexOf("."), oldName.length());
                    //重命名
                    String imgUrl = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + "_" + new Random().nextInt(1000) + exeName;
                    imglist.add(imgUrl);
                    //保存图片名
                    image.setFileName(imgUrl);
                    //讲图片的的修改时间保存
                    image.setUpdateTime(new Date());
                    //新建file对象,
                    File targetImg = new File(imgFolder, imgUrl);
                    if (!targetImg.exists() && !targetImg.isDirectory()) {
                        //不存在新建
                        targetImg.mkdirs();
                    }
                    //保存targetImg
                    slideFile[j].transferTo(targetImg);
                }
                Product pro = productService.TwoSelectOne(product);
                image.setProductId(pro.getProductId());
                imageService.insertToAll(image);
            }
        }
        if (paramFile.length>0&&!paramFile[0].isEmpty()) {
            for (int j = 0; j < paramFile.length; j++) {
                if (product.getProductName().length()!=product.getProductName().getBytes().length) {
                    //先设置根目录下一级的一个默认的目录，跟项目设置成一样
                    String firstPath = "/static";
                    //拼路径
                    String imgPath = firstPath + image.getImagePath();
                    image.setImageType("7");
                    //获得图片的完整路径
                    String imgFolder = request.getSession().getServletContext().getRealPath(imgPath);
                    //获取图片原来的名字
                    String oldName = paramFile[j].getOriginalFilename();
                    logger.info("名字=" + oldName);
                    //获取文件后缀名称
                    String exeName = oldName.substring(oldName.lastIndexOf("."), oldName.length());
                    //重命名
                    String imgUrl = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + "_" + new Random().nextInt(1000) + exeName;
                    image.setFileName(imgUrl);
                    imglist.add(imgUrl);
                    //图片的的修改时间保存
                    image.setUpdateTime(new Date());
                    // File.separator为路径分隔符
                    logger.info("图片路径" + imgFolder);
                    //新建file对象,
                    File targetImg = new File(imgFolder, imgUrl);
                    //存储文件（判断文件夹及文件名称是否已经存在）
                    if (!targetImg.exists() && !targetImg.isDirectory()) {
                        //不存在新建
                        targetImg.mkdirs();
                    }
                    //保存targetImg
                    paramFile[j].transferTo(targetImg);
                } else {
                    //将first和lastPath拼起来，这是由于jsp页面的设置${staticPath}/static/customer/images/ghlogo.png
                    String imgPath = "/static" + he;
                    image.setImagePath(he);
                    //获得图片的完整路径
                    String imgFolder = request.getSession().getServletContext().getRealPath(imgPath);
                    //获取图片原来的名字
                    String oldName = paramFile[j].getOriginalFilename();
                    image.setImageType("7");
                    //获取文件后缀名称
                    String exeName = oldName.substring(oldName.lastIndexOf("."), oldName.length());
                    //重命名
                    String imgUrl = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + "_" + new Random().nextInt(1000) + exeName;
                    imglist.add(imgUrl);
                    //保存图片名
                    image.setFileName(imgUrl);
                    //讲图片的的修改时间保存
                    image.setUpdateTime(new Date());
                    // File.separator为路径分隔符
                    //新建file对象,
                    File targetImg = new File(imgFolder, imgUrl);
                    //存储文件（判断文件夹及文件名称是否已经存在）
                    if (!targetImg.exists() && !targetImg.isDirectory()) {
                        //不存在新建
                        targetImg.mkdirs();
                    }
                    //保存targetImg
                    paramFile[j].transferTo(targetImg);
                }
                Product pro = productService.TwoSelectOne(product);
                image.setProductId(pro.getProductId());
                imageService.insertToAll(image);
            }
        }
return renderSuccess("添加成功！");
    }

    /**
     * 删除产品
     *
     * @param
     * @return
     */
    @RequestMapping("/delete")
    @ResponseBody
    public Object delete(Long productId) {
        logger.info("删除");
        productService.deleteById(productId);
       int count= imageService.pidDeleteImageToAll(productId);
        if(count>0){
                logger.info("删除图片:"+count);
        }
        return renderSuccess("删除成功！");
    }

    /**
     * 编辑产品页
     *
     * @param
     * @param
     * @return
     */
    @GetMapping("/editPage")
    public String editPage(Model model, Long productId, HttpServletRequest request) {
        //获取产品信息
        Product product= productService.selectById(productId);
        //获取图片信息
        Image image=new Image();
        image.setProductId(new Long(productId).intValue());
        List <Image> imgList=imageService.selectListByCondition(image);
        logger.info("编辑电池页" + productId);

        model.addAttribute("Imglist", imgList);
        model.addAttribute("product", product);
        return "admin/battery/productEdit";
    }

    /**
     * 编辑产品
     *
     * @param
     * @return
     */
    @RequestMapping("/edit")
    @ResponseBody
    public Object edit(@Valid Product product, Image image, HttpServletRequest request, @RequestParam("Mafile") MultipartFile[] Mafile, @RequestParam("Ptfile") MultipartFile[] Ptfile, @RequestParam("Parmfile") MultipartFile[] Parmfile) throws
            IOException, IllegalStateException {
        logger.info("进来了edit=" + product.getProductId());
        // logger.info("进来了edit=" + image.getProductId());
        String loginname= request.getSession().getAttribute("name").toString();
        logger.info("loginname:"+loginname);
        product.setCreater(loginname);
        List imglist = new ArrayList();
        String path="";
        List<Image> list = imageService.pidSelectImgPath(product.getProductId());
        logger.info("Mainfile集合" + list.size());
        //for循环list集合
        for (int a = 0; a < list.size(); a++) {
            image = list.get(a);
            path =image.getImagePath();
            logger.info("path"+image.getImagePath());
        }
        //主图循环
        if (Mafile != null && Mafile.length > 0) {
            for (int i = 0; i < Mafile.length; i++) {
                if (!Mafile[i].isEmpty()) {
                    image.setImageType("5");
                    image.setProductId(product.getProductId());
                    if(i==0) {
                        int count = imageService.pidDeleteImage(image);
                    }
                      //先设置根目录下一级的一个默认的目录，跟项目设置成一样
                      String firstPath = "/static";
                      //组合成根目录下图片的安放路径
                      String imgPath = firstPath + path;
                      logger.info("Mafile" + imgPath + "图片路径" + image.getImagePath());
                      //获得图片的完整路径
                       image.setImagePath(path);
                      String imgFolder = request.getSession().getServletContext().getRealPath(imgPath);
                      logger.info("图片的完整路径"+imgFolder);
                      //获取图片原来的名字
                      String oldName = Mafile[i].getOriginalFilename();
                      logger.info("旧名字" + oldName);
                      //获取文件后缀名称
                      String exeName = oldName.substring(oldName.lastIndexOf("."), oldName.length());
                      //重命名
                      String imgUrl = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + "_" + new Random().nextInt(1000) + exeName;
                      logger.info("新名字" + imgUrl);
                      //保存图片的新命名
                      image.setFileName(imgUrl);
                      //添加到图片列表
                      imglist.add(imgUrl);
                      //获得最新的修改时间
                      image.setUpdateTime(new Date());
                      //新建file对象
                      File targetImg = new File(imgFolder, imgUrl);
                      //存储文件（判断文件夹及文件名称是否已经存在）
                      if (!targetImg.exists() && !targetImg.isDirectory()) {
                          //不存在新建
                          targetImg.mkdirs();
                      }
                      //保存targetImg
                      Mafile[i].transferTo(targetImg);
                      imageService.insertToAll(image);
                }
            }
        }
        //幻灯片图片数组循环
        if (Ptfile != null && Ptfile.length > 0) {
            for (int i = 0; i < Ptfile.length; i++) {
                if (!Ptfile[i].isEmpty()) {
                    image.setImageType("6");
                    image.setProductId(product.getProductId());
                    if(i==0) {
                        int count = imageService.pidDeleteImage(image);
                    }
                    //先设置根目录下一级的一个默认的目录，跟项目设置成一样
                    String firstPath = "/static";
                    //组合成根目录下图片的安放路径
                    String imgPath = firstPath + path;
                    //获得图片的完整路径
                    String imgFolder = request.getSession().getServletContext().getRealPath(imgPath);
                    //获取图片原来的名字
                    String oldName = Ptfile[i].getOriginalFilename();
                    logger.info("旧名字" + oldName);
                    //获取文件后缀名称
                    String exeName = oldName.substring(oldName.lastIndexOf("."), oldName.length());
                    //重命名
                    String imgUrl = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + "_" + new Random().nextInt(1000) + exeName;
                    logger.info("新名字" + imgUrl);
                    //保存图片的新命名
                    image.setFileName(imgUrl);
                    //添加到图片列表
                    imglist.add(imgUrl);
                    //获得最新的修改时间
                    image.setUpdateTime(new Date());
                    //新建file对象
                    File targetImg = new File(imgFolder, imgUrl);
                    //存储文件（判断文件夹及文件名称是否已经存在）
                    if (!targetImg.exists() && !targetImg.isDirectory()) {
                        //不存在新建
                        targetImg.mkdirs();
                    }
                    //保存targetImg
                    Ptfile[i].transferTo(targetImg);
                    imageService.insertToAll(image);
                }
                //保存修改的信息
            }
        }
        //参数图片数组循环
        if (Parmfile != null && Parmfile.length > 0) {
            for (int i = 0; i < Parmfile.length; i++) {
                if (!Parmfile[i].isEmpty()) {
                    image.setImageType("7");
                    image.setProductId(product.getProductId());
                    if(i==0) {
                        int count = imageService.pidDeleteImage(image);
                    }
                    //先设置根目录下一级的一个默认的目录，跟项目设置成一样
                    String firstPath = "/static";
                    //组合成根目录下图片的安放路径
                    String imgPath = firstPath + path;
                    //获得图片的完整路径
                    String imgFolder = request.getSession().getServletContext().getRealPath(imgPath);
                    //获取图片原来的名字
                    String oldName = Parmfile[i].getOriginalFilename();
                    logger.info("旧名字" + oldName);
                    //获取文件后缀名称
                    String exeName = oldName.substring(oldName.lastIndexOf("."), oldName.length());
                    //重命名
                    String imgUrl = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + "_" + new Random().nextInt(1000) + exeName;
                    logger.info("新名字" + imgUrl);
                    //保存图片的新命名
                    image.setFileName(imgUrl);
                    //添加到图片列表
                    imglist.add(imgUrl);
                    //获得最新的修改时间
                    image.setUpdateTime(new Date());
                    //新建file对象
                    File targetImg = new File(imgFolder, imgUrl);
                    //存储文件（判断文件夹及文件名称是否已经存在）
                    if (!targetImg.exists() && !targetImg.isDirectory()) {
                        //不存在新建
                        targetImg.mkdirs();
                    }
                    //保存targetImg
                    Parmfile[i].transferTo(targetImg);
                    imageService.insertToAll(image);
                }
            }
        }
        productService.updateById(product);
        return renderSuccess("编辑成功！");
    }

    /**
     * 产品下拉框
     * @param
     * @return
     */
    @PostMapping("/selectProductId")
    @ResponseBody
    public  List<Product> selectImageProductId(Model model, String type){
        EntityWrapper<Product> var1=new EntityWrapper<Product>();
        List<Product>selectList =new ArrayList<Product>();
        Product product=new Product();
        product.setProductName("空");
        product.setProductId(0);
        selectList.add(product);

        if (type!=null&&StringUtils.isNotBlank(type)){
            var1.where("product_type = {0}", type);
        }
        List<Product> list =productService.selectList(var1);
        selectList.addAll(list);
        return  selectList;
    }
}
