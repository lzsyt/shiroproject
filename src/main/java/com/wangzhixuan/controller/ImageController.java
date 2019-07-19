package com.wangzhixuan.controller;

import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.commons.result.PageInfo;
import com.wangzhixuan.commons.utils.PropertyUtils;
import com.wangzhixuan.model.Image;
import com.wangzhixuan.model.ImageType;
import com.wangzhixuan.model.vo.ImageVo;
import com.wangzhixuan.service.IImageService;
import com.wangzhixuan.service.IImageTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author zmn
 * @since 2018-07-27
 */
@Controller
@RequestMapping("/image")
public class ImageController extends BaseController {

    @Autowired
    private IImageService imageService;
    @Autowired
    private IImageTypeService imageTypeService;
    private int indexOf;

    /**
     * 图片管理页
     * @return
     */
    @GetMapping("/manager")
    public String manager() {
        return "admin/image/image";
    }

    /**
     * 图片展示列表
     * @param imageType
     * @param page
     * @param rows
     * @return
     */
    @PostMapping("/dataGrid")
    @ResponseBody
    public PageInfo dataGrid(String imageType, Integer page, Integer rows, String sort, String order,
                             Integer productTypeId, Image image, String productName, ImageVo imageVo) {

        PageInfo pageInfo = new PageInfo(page, rows,sort, order);
        Map<String, Object> condition = new HashMap<String, Object>();
        if (imageType!= null) {
            condition.put("imageType",imageType);
        }
        if(productTypeId!=null){
            condition.put("productTypeId",productTypeId);
        }
        if(image.getImageTitle()!=null){
            condition.put("imageTitle",image.getImageTitle());
        }
        if(productName!=null){
            condition.put("productName",productName);
        }
        if (imageVo.getCreatedateStart() != null) {
            condition.put("startTime", imageVo.getCreatedateStart());
        }
        if (imageVo.getCreatedateEnd() != null) {
            condition.put("endTime", imageVo.getCreatedateEnd());
        }
        pageInfo.setCondition(condition);
        imageService.selectDataGrid(pageInfo);
        return pageInfo;
    }


    /**
     * 显示图片新增页面
     * @return
     */
    @GetMapping("/addPage")
    public String addPage() {
        return "admin/image/imageAdd";
    }

    /**
     * 添加图片
     * @param
     * @return
     */
/*

    @PostMapping("/add")
    @ResponseBody
    public Object add(@Valid Image image, HttpServletRequest request,@RequestParam("file") CommonsMultipartFile file,@RequestParam("file") CommonsMultipartFile  files,@RequestParam("file") CommonsMultipartFile  filess) throws
            IOException,IllegalStateException {
        //从配置文件获取filepath
        Properties properties = PropertyUtils.getProperties();
        String filepath = properties.getProperty("filepath");
        logger.info("filepath:" + filepath);
        logger.info("添加成功:" + image.getImageType());
            logger.info("image:" + image);
            //根据id选择设置图片的路径


            ImageType imageType = imageTypeService.selectByImageType(Integer.valueOf(image.getImageType()));
            logger.info(imageType);
            //根据id选择设置图片的路径
            if(imageType.getId()==1 || imageType.getParentId()==1 ){
                image.setImagePath("/images/ad/");
            }else if(imageType.getId()==2 || imageType.getParentId()==2 ){
                image.setImagePath("/images/product/");
            }else if(imageType.getId()==3 || imageType.getParentId()==3 ){
                image.setImagePath("/images/case/");
            }else if(imageType.getId()==4 || imageType.getParentId()==4 ){
                image.setImagePath("/images/about/");
            }

            logger.info("imagetitle:"+image.getImageTitle());
        logger.info("getBytes:"+image.getImageTitle().getBytes().length);

        logger.info("是否为true"+(image.getImageTitle().length()!=image.getImageTitle().getBytes().length));

        if (image.getImageTitle().length()!=image.getImageTitle().getBytes().length) {

               //先设置根目录下一级的一个默认的目录，跟项目设置成一样
                String firstPath = "/static";
                //根据jsp页面上传的id获得图片的安放地址
                String lastPath = image.getImagePath();
                logger.info("图片地址是：" + lastPath);
                //将first和lastPath拼起来，这是由于jsp页面的设置${staticPath}/static/images/ghlogo.png
                String imgPath = filepath + firstPath + lastPath;
                logger.info("imagePath:" + imgPath);
                //获得完整的图片上传地址
            //    String imgFolder = request.getSession().getServletContext().getRealPath(imgPath);
            //   String imgFolder = filepath + imgPath;

                //解析路径,指定路径
                // String imgFolder  = request.getSession().getServletContext().getRealPath("/static/images");
                logger.info("上传的路径" + imgPath);
                // 图片原名字
                String oldName = file.getOriginalFilename();
                // 后缀名
                String exeName = oldName.substring(oldName.lastIndexOf("."));
                //用当前时间给图片重新命名
                String imgUrl = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + exeName;
                //将图片的名字保存
                image.setFileName(imgUrl);
                //新建file对象，将路径和名字保存起来
                File targetImg = new File(imgPath, imgUrl);
                logger.info("imgUrl....."+imgUrl);
            //    File targetImg = new File(imgPath, imgUrl);
                String type = null;// 文件类型
                type = imgUrl.indexOf(".") != -1 ? imgUrl.substring(imgUrl.lastIndexOf(".") + 1, imgUrl.length()) : null;
                logger.info("type:" + type);
                if (type != null) {
                    //toUpperCase() 方法将字符串小写字符转换为大写。
                    if ("GIF".equals(type.toUpperCase()) || "PNG".equals(type.toUpperCase()) || "JPG".equals(type.toUpperCase())) {
                        //判断文件是否存在
                        */
/*if (!targetImg.exists()) {
                            logger.info("不存在新建");
                            targetImg.mkdirs();//不存在新建
                        }*//*

                        //保存targetImg
                        logger.info("上传图片开始！");
                        file.transferTo(targetImg);
                        logger.info("上传图片结束！");

                    }

                }

            } else {
                String title = image.getImageTitle() + "/";
               */
/* String he = image.getImagePath() + title;
                image.setImagePath(he);*//*

                //先设置根目录下一级的一个默认的目录，跟项目设置成一样
                String firstPath = "/static";
                //根据jsp页面上传的id获得图片的安放地址
                String lastPath = image.getImagePath();
                logger.info("图片地址是：" + lastPath);
                //将first和lastPath拼起来，这是由于jsp页面的设置${staticPath}/static/images/ghlogo.png

                String imgPath = filepath + firstPath + lastPath;
                //获得完整的图片上传地址
              //  String imgFolder = request.getSession().getServletContext().getRealPath(imgPath);
                // 图片原名字
                String oldName = file.getOriginalFilename();
                // 后缀名
                String exeName = oldName.substring(oldName.lastIndexOf("."));
                //用当前时间给图片重新命名
                String imgUrl = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + exeName;
                //将图片的名字保存
                image.setFileName(imgUrl);
                //新建file对象，将路径和名字保存起来
                File targetImg = new File(imgPath, imgUrl);
                String type = null;// 文件类型
                type = imgUrl.indexOf(".") != -1 ? imgUrl.substring(imgUrl.lastIndexOf(".") + 1, imgUrl.length()) : null;
                if (type != null) {
                    //toUpperCase() 方法将字符串小写字符转换为大写。
                    if ("GIF".equals(type.toUpperCase()) || "PNG".equals(type.toUpperCase()) || "JPG".equals(type.toUpperCase())) {
                        //判断文件是否存在
                        if (!targetImg.exists()) {
                            targetImg.mkdirs();//不存在新建
                        }
                        //保存targetImg
                        file.transferTo(targetImg);
                    }

                }
            }

        //讲图片的的修改时间保存
        image.setUpdateTime(new Date());
        //保存新增的信息
        boolean b = imageService.insert(image);
        //返回的信息
        if (b) {
            return renderSuccess("添加成功！");
        } else {
            return renderError("添加失败！");
        }
    }
*/
    @PostMapping("/add")
    @ResponseBody
    public Object add(@Valid Image image, HttpServletRequest request,@RequestParam("file") CommonsMultipartFile[] file,@RequestParam("file") CommonsMultipartFile  files,@RequestParam("file") CommonsMultipartFile  filess) throws
            IOException,IllegalStateException{
        //从配置文件获取filepath
        Properties properties = PropertyUtils.getProperties();
        String filepath = properties.getProperty("filepath");
        //添加一个图片是否添加成功的标记
        boolean b = false;


            logger.info("filepath:" + filepath);
            logger.info("添加成功:" + image.getImageType());
            logger.info("image:" + image);
            //根据id选择设置图片的路径


            ImageType imageType = imageTypeService.selectByImageType(Integer.valueOf(image.getImageType()));
            logger.info(imageType);
            //根据id选择设置图片的路径
            if(imageType.getId()==1 || imageType.getParentId()==1 ){
                image.setImagePath("/images/main/");
            }else if(imageType.getId()==2 || imageType.getParentId()==2 ){
                image.setImagePath("/images/product/");
            }else if(imageType.getId()==3 || imageType.getParentId()==3 ){
                image.setImagePath("/images/case/");
            }else if(imageType.getId()==4 || imageType.getParentId()==4 ){
                image.setImagePath("/images/about/");
            }
            //先设置根目录下一级的一个默认的目录，跟项目设置成一样
            String firstPath = "/static";
            //根据jsp页面上传的id获得图片的安放地址
            String lastPath = image.getImagePath();
            logger.info("图片地址是：" + lastPath);
            //将first和lastPath拼起来，这是由于jsp页面的设置${staticPath}/static/images/ghlogo.png
            String imgPath = filepath + firstPath + lastPath;
            logger.info("上传的路径" + imgPath);
            for(int i = 0;i<file.length;i++){
                if (!file[i].isEmpty()) {
                    // 图片原名字
                    String oldName = file[i].getOriginalFilename();
                    // 后缀名
                    String exeName = oldName.substring(oldName.lastIndexOf("."));
                    //用当前时间给图片重新命名
                    String imgUrl = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + exeName;
                    //将图片的中文名保存
                    image.setFileName(imgUrl);
                    if(i==1){
                        imgUrl = "en_" + imgUrl;
                        //将图片的英文名字保存
                        image.setEn_fileName(imgUrl);
                    }

                    //新建file对象，将路径和名字保存起来
                    File targetImg = new File(imgPath, imgUrl);
                    logger.info("imgUrl....."+imgUrl);
                    logger.info("targetImg....."+targetImg);
                    //    File targetImg = new File(imgPath, imgUrl);
                    String type = null;// 文件类型
                    type = imgUrl.indexOf(".") != -1 ? imgUrl.substring(imgUrl.lastIndexOf(".") + 1, imgUrl.length()) : null;
                    logger.info("type:" + type);
                    if (type != null) {
                        //toUpperCase() 方法将字符串小写字符转换为大写。
                        if ("GIF".equals(type.toUpperCase()) || "PNG".equals(type.toUpperCase()) || "JPG".equals(type.toUpperCase())) {

                            //保存targetImg
                            logger.info("上传图片开始！");
                            file[i].transferTo(targetImg);
                            logger.info("上传图片结束！");

                        }

                    }
                    //将图片的的修改时间保存
                    image.setUpdateTime(new Date());
                }

        }
        //保存新增的信息 在这里入库
        b = imageService.insert(image);
        logger.info(b);
        //返回的信息
        if (b) {
            return renderSuccess("添加成功！");
        } else {
            return renderError("添加失败！");
        }
    }


    /**
     * 删除图片
     * @param imageId
     * @return
     */
    @PostMapping("/delete")
    @ResponseBody
    public Object delete(Integer imageId) {
        imageService.deleteById(imageId);
        return renderSuccess("删除成功！");
    }

    /**
     * 编辑图片页
     * @param model
     * @param imageId
     * @return
     */
    @GetMapping("/editPage")
    public String editPage(Model model, Integer imageId) {
        Image image = imageService.selectImageById(imageId);
        model.addAttribute("image", image);
        return "admin/image/imageEdit";
    }

    /**
     * 编辑图片
     * @param
     * @return
     */
    @PostMapping("/edit")
    @ResponseBody
    public Object edit(@Valid Image image,HttpServletRequest request,@RequestParam("file") CommonsMultipartFile[] file)  throws
            IOException,IllegalStateException{
        //从配置文件获取filepath
        Properties properties = PropertyUtils.getProperties();
        String filepath = properties.getProperty("filepath");
        for(int i = 0;i<file.length;i++) {
            if (!file[i].isEmpty()) {
                String firstPath = "/static";
                //根据jsp页面上传的id获得图片的安放地址
                //将first和lastPath拼起来，这是由于jsp页面的设置${staticPath}/static/customer/images/ghlogo.png
                String imgPath = filepath + firstPath + image.getImagePath();
                logger.info("imagePath:" + imgPath);
                //获得完整的图片上传地址
                //    String imgFolder = request.getSession().getServletContext().getRealPath(imgPath);
                //   logger.info("imgFolder:"+imgFolder);
                //解析路径,指定路径
                // 图片原名字
                String oldName = file[i].getOriginalFilename();
                // 后缀名
                String exeName = oldName.substring(oldName.lastIndexOf("."));
                //用当前时间给图片重新命名
                String imgUrl = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + exeName;
                image.setFileName(imgUrl);
                //新建file对象，将路径和名字保存起来
                //   File targetImg = new File(imgFolder, imgUrl);
                if(i == 1){
                    imgUrl = "en_" + imgUrl;
                    image.setEn_fileName(imgUrl);
                }
                File targetImg = new File(imgPath, imgUrl);
                logger.info("targetImg:" + targetImg);
                String type = null;// 文件类型
                type = imgUrl.indexOf(".") != -1 ? imgUrl.substring(imgUrl.lastIndexOf(".") + 1, imgUrl.length()) : null;
                if (type != null) {
                    //toUpperCase() 方法将字符串小写字符转换为大写。
                    if ("GIF".equals(type.toUpperCase()) || "PNG".equals(type.toUpperCase()) || "JPG".equals(type.toUpperCase())) {
                        //判断文件是否存在
                        if (!targetImg.exists()) {
                            targetImg.mkdirs();//不存在新建
                        }
                        //保存targetImg
                        logger.info("图片编辑之前");
                        file[i].transferTo(targetImg);
                        logger.info("图片编辑之后");
                    }

                }
            }
        }

        image.setUpdateTime(new Date());
        imageService.updateById(image);
        return renderSuccess("编辑成功！");
    }


}
