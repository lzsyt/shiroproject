package com.wangzhixuan.service.impl;

import com.wangzhixuan.mapper.StatementVoMapper;
import com.wangzhixuan.model.vo.StatementVo;
import com.wangzhixuan.service.StatementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
@Service
public class StatementServiceImpl implements StatementService {

    @Autowired
    private StatementVoMapper statementVoMapper;

    @Override
    public List<StatementVo> find(Integer year,String websiste) {
        if (year == null || year == 0) {
            Date date = new Date();
            year = Integer.valueOf(new SimpleDateFormat("yy").format(date));
        }
        return statementVoMapper.find(year,websiste);
    }

    @Override
    public List<StatementVo> quaryMonth(Integer month) {
        return statementVoMapper.quaryMonth(month);
    }

}
