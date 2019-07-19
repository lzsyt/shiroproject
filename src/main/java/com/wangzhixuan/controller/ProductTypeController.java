package com.wangzhixuan.controller;

import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.model.ImageType;
import com.wangzhixuan.model.Organization;
import com.wangzhixuan.model.ProductType;
import com.wangzhixuan.service.IOrganizationService;
import com.wangzhixuan.service.IProductTypeService;
import org.apache.velocity.runtime.directive.Foreach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import java.util.*;

/**
 * @description：产品类别
 * @author：liuzhi
 * @date：2018/9/21
 */
@Controller
@RequestMapping("/productType")
public class ProductTypeController extends BaseController {

    @Autowired
    private IProductTypeService productTypeService;

    /**
     * 产品管理主页
     *
     * @return
     */
    @GetMapping(value = "/type")
    public String manager() {
        return "admin/productType/productType";
    }
    /**
     * 产品资源树
     *
     * @return
     */
    @PostMapping(value = "/tree")
    @ResponseBody
    public Object tree() {
        return productTypeService.selectTree();
    }
    /**
     * 产品列表
     *
     * @return
     */
    @RequestMapping("/treeGrid")
    @ResponseBody
    public Object treeGrid() {
        return productTypeService.selectTreeGrid();
    }

    /**
     * 产品类型下拉框
     */
    @RequestMapping("/productTypeList")
    @ResponseBody
    public Object getProductType(){
        List<ProductType> productTypes=productTypeService.selectTreeGrid();
        List<ProductType>list=new ArrayList<ProductType>();
        ProductType pt=new ProductType();
        pt.setProductType("全部");
        pt.setId(0);
        list.add(pt);
        list.addAll(productTypes);
        return list;
    }
    /**
     * 添加产品页
     *
     * @return
     */
    @RequestMapping("/addPage")
    public String addPage() {
        return "admin/productType/productTypeAdd";
    }

    /**
     * 添加产品
     * @return
     */
    @RequestMapping("/add")
    @ResponseBody
    public Object add(@Valid ProductType productType) {
        productTypeService.insert(productType);
        return renderSuccess("添加成功！");
    }
    /**
     * 删除产品
     *
     * @param id
     * @return
     */
    @RequestMapping("/delete")
    @ResponseBody
    public Object delete(Long id) {
        productTypeService.deleteById(id);
        return renderSuccess("删除成功！");
    }
    /**
     * 编辑产品页
     *
     * @param
     * @param id
     * @return
     */
    @GetMapping("/editPage")
    public String editPage(Model model, Long id) {
        ProductType productType = productTypeService.selectById(id);
        model.addAttribute("productType", productType);
        return "admin/productType/productTypeEdit";
    }
    /**
     * 编辑产品
     *
     * @param
     * @return
     */
    @RequestMapping("/edit")
    @ResponseBody
    public Object edit(@Valid ProductType productType) {
        productTypeService.updateById(productType);
        return renderSuccess("编辑成功！");
    }
}