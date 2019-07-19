package com.wangzhixuan.controller;

import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.commons.result.PageInfo;
import com.wangzhixuan.commons.utils.PropertyUtils;
import com.wangzhixuan.commons.utils.StringUtils;
import com.wangzhixuan.mapper.ProductTypeMapper;
import com.wangzhixuan.model.Video;
import com.wangzhixuan.service.IUserService;
import com.wangzhixuan.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

@Controller
@RequestMapping("/video")
public class VideoController extends BaseController {


   /* public Config config;

    {
        ApplicationContext context = new ClassPathXmlApplicationContext(new String[]{"spring/spring-config.xml"});
        config = (Config) context.getBean("dataSource");
    }

    String filepath = config.getFilepath();*/


    @Autowired
    private VideoService videoService;
    @Autowired
    private ProductTypeMapper productTypeMapper;
    @Autowired
    private IUserService iUserService;


    @GetMapping("/add")
    public String index() {
        return "admin/video/index";

    }

    @RequestMapping("/show")
    @ResponseBody
    public PageInfo select(String videoTitle, String productType, String userName) {
        Map<String, String> map = new HashMap<>();
        if (StringUtils.isNotBlank(videoTitle))
            map.put("videoTitle", '%' + videoTitle + '%');
        if (StringUtils.isNotBlank(productType))
            map.put("productType", '%' + productType + '%');
        if (StringUtils.isNotBlank(userName))
            map.put("userName", '%' + userName + '%');
        PageInfo info = new PageInfo();
        info.setTotal(videoService.count(map));
        info.setRows(videoService.selectAll(map));
        return info;
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Object delete(Long videoId) {
        videoService.deleteById(videoId);
        return renderSuccess("删除成功！");
    }

    @GetMapping("/editPage")
    public String editPage(Model model, Long videoId) {
        //获取产品信息
        Video video = videoService.selectById(videoId);
        model.addAttribute("video", video);
        model.addAttribute("videoName", video.getVideoName());
        return "admin/video/edit";
    }

    @PostMapping("/edit")
    @ResponseBody
    public Object edit(MultipartFile file, Long videoId, Long productType, String videoTitle) {

        String filename = null;
        if (file!=null){
            filename = file.getOriginalFilename();
        }

        Map<String, Object> map = new HashMap<>();
        setMap(videoId, productType, videoTitle, filename, map);
        uploadfile(file, filename);
        videoService.updateVideo(map);
        return renderSuccess("编辑成功！");
    }

    @GetMapping("addPage")
    public String addPage(Model model) {
        Video video = new Video();
        model.addAttribute("video", video);
        return "admin/video/add";
    }

    @PostMapping("/save")
    @ResponseBody
    public Object save(MultipartFile file, Long productType, String videoTitle) {
        logger.info("视频开始上传");
        String filename = null;

        if (!file.isEmpty()){
            filename = file.getOriginalFilename();
        }
        logger.info("filename:"+filename);
        Map<String, Object> map = new HashMap<>();
        Long videoId = null;
        setMap(videoId, productType, videoTitle, filename, map);
        videoService.insertVadeo(map);
        uploadfile(file, filename);
        return renderSuccess("添加成功！");
    }

    @RequestMapping("/download")
    public ResponseEntity<Resource> export(@RequestParam("strZipPath") String strZipPath) throws IOException {

        //从配置文件获取filepath
        Properties properties = PropertyUtils.getProperties();
        String filePath = properties.getProperty("filepath");

        //先设置根目录下一级的一个默认的目录，跟项目设置成一样
        String firstPath = "/static";
        //设置视频的安放地址
        String lastPath = "/fileupload/video/";
        //获得完整的视频上传地址
        String videoPath = filePath + firstPath + lastPath;


        //filepath 为视频的的路径
        //strZipPath 为视频的名字
        File file = new File(videoPath + "//" + strZipPath);
//        HttpHeaders headers = new HttpHeaders();
//
//        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
//        headers.setContentDispositionFormData("attachment", strZipPath);
//
//        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers, HttpStatus.CREATED);
        return download(file);
    }

    private void uploadfile(MultipartFile file, String filename) {
        //从配置文件获取filepath
        Properties properties = PropertyUtils.getProperties();
        String filePath = properties.getProperty("filepath");

        //先设置根目录下一级的一个默认的目录，跟项目设置成一样
        String firstPath = "/static";
        //设置视频的安放地址
        String lastPath = "/fileupload/video/";
        //获得完整的视频上传地址
        String videoPath = filePath + firstPath + lastPath;
        logger.info("videoPath:"+videoPath);
        if (StringUtils.isNotBlank(filename)) {
            File targeVideo = new File(videoPath , filename);
            logger.info("targeVideo:"+targeVideo);
            if (!targeVideo.exists() && !targeVideo.isDirectory()) {
                //不存在新建
                logger.info("新建之前");
                targeVideo.mkdirs();
                logger.info("新建之后");
            }
            try {
                logger.info("上传之前");
                file.transferTo(targeVideo);
                logger.info("上传之后");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void setMap(Long videoId, Long productType, String videoTitle, String filename, Map<String, Object> map) {
        if (videoId != null) {
            map.put("videoId", videoId);
        }
        if (productType != null) {
            map.put("productType", productType);
        }
        if (StringUtils.isNotBlank(videoTitle)) {
            map.put("videoTitle", videoTitle);
        }
        if (StringUtils.isNotBlank(filename)){
            map.put("videoName", filename);
            map.put("videoPath", "/fileupload/video/");
        }
        map.put("userId", getUserId());
        map.put("updateTime", new Date());
    }

}
