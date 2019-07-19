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
    public List<StatementVo> find() {
        Date date = new Date();
        return statementVoMapper.find(new SimpleDateFormat("YY").format(date));
    }

    @Override
    public List<StatementVo> quaryMonth(Integer month) {
        return statementVoMapper.quaryMonth(month);
    }

}
