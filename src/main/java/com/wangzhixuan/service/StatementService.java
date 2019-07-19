package com.wangzhixuan.service;

import com.wangzhixuan.model.vo.StatementVo;

import java.util.List;

public interface StatementService {

    public List<StatementVo> find();

    List<StatementVo> quaryMonth(Integer month);
}
