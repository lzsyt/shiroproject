package com.wangzhixuan.controller;

import com.wangzhixuan.commons.shiro.captcha.DreamCaptcha;
import net.dreamlu.module.ueditor.UeditorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

/**
 * 通用的控制器
 * @author L.cm
 *
 */
@Controller
public class CommonsController {
    @Autowired
    private DreamCaptcha dreamCaptcha;
    @Autowired
    private UeditorService ueditorService;
    
    /**
     * 图标页
     */
    @GetMapping("icons.html")
    public String icons() {
        return "icons";
    }
    
    /**
     * 图形验证码
     */
    @GetMapping("captcha.jpg")
    public void captcha(HttpServletRequest request, HttpServletResponse response) {
        dreamCaptcha.generate(request, response);
    }
    
    /**
     * ueditor编辑器
     */
    @RequestMapping("ueditor")
    public ResponseEntity<String> ueditor(HttpServletRequest request) {
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.TEXT_HTML);
        String json = ueditorService.exec(request);
        return new ResponseEntity<String>(json, headers, HttpStatus.OK);
    }
    /**
     * @description 流的方式得到图片
     * @param request
     * @param httpResponse
     */
    @RequestMapping(value = "/getPic", method = RequestMethod.GET)
    public void getMapPic1( String filename, HttpServletRequest request, HttpServletResponse httpResponse) {

        //String realPath = request.getSession().getServletContext().getRealPath("D:/images/"+filename);
        String filePath = "D:/images/"+filename;
        System.out.println("filePath:"+filePath);

         File file = new File(filePath);

        FileInputStream fis = null;
        try {

            httpResponse.setContentType("image/gif");
            OutputStream out = httpResponse.getOutputStream();
            fis = new FileInputStream(file);
            byte[] b = new byte[fis.available()];

            fis.read(b);
            out.write(b);
            out.flush();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (fis != null) {
                try {
                    fis.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }


}


