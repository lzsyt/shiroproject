package com.wangzhixuan.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.wangzhixuan.model.Visitor;

import java.util.List;
import java.util.Map;

public interface VisitorMapper extends BaseMapper<Visitor> {

    List<Map<String,Object>>selectVisitor(Page page,Map<String, Object> params);

}
