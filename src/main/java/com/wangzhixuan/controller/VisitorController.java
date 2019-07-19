package com.wangzhixuan.controller;

import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.commons.result.PageInfo;
import com.wangzhixuan.model.Visitor;
import com.wangzhixuan.service.IVisitorService;
import org.apache.shiro.crypto.hash.Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author zmn
 * @since 2018-11-17
 */
@Controller
@RequestMapping("/visitor")
public class VisitorController extends BaseController {

    @Autowired private IVisitorService visitorService;
    
    @GetMapping("/manager")
    public String manager() {
        return "admin/visitor/visitor";
    }
    
    @PostMapping("/dataGrid")
    @ResponseBody
    public PageInfo dataGrid(Integer page, Integer rows, String sort,String order,String pagename) {
        PageInfo pageInfo = new PageInfo(page, rows, sort, order);
        HashMap map = new HashMap();
        map.put("visitor_pageName", pagename);
        pageInfo.setCondition(map);
       // logger.debug("分页:"+pageInfo.getSize()+","+pageInfo.getNowpage());

        visitorService.selectDataGrid(pageInfo);
        return pageInfo;
    }
    

}
