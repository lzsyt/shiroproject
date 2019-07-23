package com.wangzhixuan.controller;


import com.wangzhixuan.commons.utils.StringUtils;
import com.wangzhixuan.service.StatementService;
import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("statment")
public class StatementController {

    @Autowired
    private StatementService statementService;

    @RequestMapping("view")
    public String index() {
        return "/admin/statement/statement";
    }


    @RequestMapping("data")
    @ResponseBody
    public String data(@RequestParam(value = "year", required = false) Integer year,
                       @RequestParam(value = "month", required = false) Integer month) {
        if (year == null || year == 0) {
            Date date = new Date();
            year = Integer.valueOf(new SimpleDateFormat("yy").format(date));
        }
        JSONArray jsonValues = null;

        if (month == null || month == 0) {
            jsonValues = statementService.find(year);
        } else {
            jsonValues = statementService.quaryMonth(year, month);
        }
        jsonValues.add(statementService.getYear());
        return jsonValues.toString();
    }


    @RequestMapping("quaryMonth")
    @ResponseBody
    public String quaryMonth(@RequestParam(value = "year") Integer year){
        JSONArray json = new JSONArray();
        json.add(statementService.quaryMonth(year));
        System.out.println(json.toString());
        return json.toString();
    }
}
