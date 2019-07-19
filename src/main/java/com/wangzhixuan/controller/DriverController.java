package com.wangzhixuan.controller;

import com.wangzhixuan.commons.result.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/driver")
public class DriverController {

    /**
     * 司机管理页面
     *
     * @return
     */
    @GetMapping("/manager")
    public String manager() {
        return "admin/driver/driver";
    }

    @PostMapping("/dataGrid")
    @ResponseBody
    public Object dataGrid(Integer page, Integer rows, String sort, String order) {
        PageInfo pageInfo = new PageInfo(page, rows, sort, order);
        //roleService.selectDataGrid(pageInfo);
        return pageInfo;
    }
}
