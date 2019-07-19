package com.wangzhixuan.controller;

import com.wangzhixuan.model.vo.StatementVo;
import com.wangzhixuan.service.StatementService;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("statment")
public class StatementController {

    @Autowired
    private StatementService statementService;

    @RequestMapping("view")
    public String index(){
        return "/admin/statement/statement";
    }


    @RequestMapping("data")
    @ResponseBody
    public String data(){
        List<StatementVo> statementVos = statementService.find();
        List<String> date = new ArrayList<>();
        List<Integer> data = new ArrayList<>();

        for (StatementVo statmentvo: statementVos
             ) {
            data.add(statmentvo.getData());
        }

        for (StatementVo statementVo: statementVos) {
            date.add(statementVo.getDate()+"月");
        }

        JSONArray jsonArray = new JSONArray();
        jsonArray.add(date);
        jsonArray.add(data);
        return jsonArray.toString();
    }



    @RequestMapping("quaryMonth/{month}")
    @ResponseBody
    public String quaryMonth(@PathVariable("month") Integer month){
        List<StatementVo> statementVos = statementService.quaryMonth(month);
        List<String> date = new ArrayList<>();
        List<Integer> data = new ArrayList<>();

        for (StatementVo statmentvo: statementVos
        ) {
            data.add(statmentvo.getData());
        }

        for (StatementVo statementVo: statementVos) {
            date.add(statementVo.getDate()+"日");
        }

        JSONArray jsonArray = new JSONArray();
        jsonArray.add(date);
        jsonArray.add(data);
        return jsonArray.toString();
    }
}
