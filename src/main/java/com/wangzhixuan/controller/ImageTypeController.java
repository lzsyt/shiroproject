package com.wangzhixuan.controller;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.commons.result.PageInfo;
import com.wangzhixuan.model.Image;
import com.wangzhixuan.model.ImageType;
import com.wangzhixuan.model.ProductType;
import com.wangzhixuan.service.IImageService;
import com.wangzhixuan.service.IImageTypeService;
import com.wangzhixuan.service.IProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import java.util.Date;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author liuzhi
 * @since 2018-09-26
 */
@Controller
@RequestMapping("/imageType")
public class ImageTypeController extends BaseController {

    @Autowired
    private IImageTypeService imageTypeService;
    /**
     * 图片分类主页
     *
     * @return
     */
    @GetMapping(value = "/type")
    public String manager() {
        return "admin/imageType/imageType";
    }
    /**
     * 图片资源树
     *
     * @return
     */
    @PostMapping(value = "/tree")
    @ResponseBody
    public Object tree() {
        logger.info("图片主页"+imageTypeService.selectTree());

        return imageTypeService.selectTree();
    }

    /**
     * 图片类型列表
     *
     * @return
     */
    @RequestMapping("/treeGrid")
    @ResponseBody
    public Object treeGrid() {
        List<ImageType> list = imageTypeService.selectTreeGrid();

        return list;
    }
    /**
     * 显示新增页面
     *
     * @return
     */
    @RequestMapping("/addPage")
    public String addPage() {
        return "admin/imageType/imageTypeAdd";
    }
    /**
     * 添加图片
     * @return
     */
    @RequestMapping("/add")
    @ResponseBody
    public Object add(@Valid ImageType imageType) {
        imageTypeService.insert(imageType);
        return renderSuccess("添加成功！");
    }
    /**
     * 删除图片
     *
     * @param id
     * @return
     */
    @RequestMapping("/delete")
    @ResponseBody
    public Object delete(Long id) {
        imageTypeService.deleteById(id);
        return renderSuccess("删除成功！");
    }
    /**
     * 编辑图片页
     *
     * @param
     * @param id
     * @return
     */
    @GetMapping("/editPage")
    public String editPage(Model model, Long id) {
        ImageType imageType = imageTypeService.selectById(id);
        logger.info("imageType:"+imageType.getParentId());
        model.addAttribute("imageType", imageType);
        return "admin/imageType/imageTypeEdit";
    }
    /**
     * 编辑图片
     *
     * @param
     * @return
     */
    @RequestMapping("/edit")
    @ResponseBody
    public Object edit(@Valid ImageType imageType) {
        logger.info("edit"+imageTypeService.updateById(imageType));
        imageTypeService.updateById(imageType);
        return renderSuccess("编辑成功！");
    }



}
