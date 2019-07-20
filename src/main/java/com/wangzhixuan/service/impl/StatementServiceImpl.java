package com.wangzhixuan.service.impl;

import com.wangzhixuan.mapper.StatementVoMapper;
import com.wangzhixuan.model.vo.StatementVo;
import com.wangzhixuan.service.StatementService;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Service
public class StatementServiceImpl implements StatementService {

    @Autowired
    private StatementVoMapper statementVoMapper;

    @Override
    public JSONArray find(Integer year, String websiste) {
        List<StatementVo> statementVos = statementVoMapper.find(year, websiste);
        List<String> date = new ArrayList<>();
        List<Integer> data = new ArrayList<>();
        for (StatementVo statmentvo: statementVos) {
            data.add(statmentvo.getData());
        }
        for (StatementVo statementVo: statementVos) {
            date.add(statementVo.getDate()+"月");
        }
        JSONArray jsonArray = new JSONArray();
        jsonArray.add(date);
        jsonArray.add(data);
        return jsonArray;
    }

    @Override
    public JSONArray quaryMonth(Integer year, Integer month, String websiste) {
        List<StatementVo> statementVos = statementVoMapper.quaryMonth(year,month,websiste);
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
        return jsonArray;
    }

}
