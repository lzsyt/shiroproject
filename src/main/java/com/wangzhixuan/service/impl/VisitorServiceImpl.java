package com.wangzhixuan.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.wangzhixuan.commons.result.PageInfo;
import com.wangzhixuan.commons.scan.DataSource;
import com.wangzhixuan.mapper.VisitorMapper;
import com.wangzhixuan.model.Visitor;
import com.wangzhixuan.service.IVisitorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zmn
 * @since 2018-11-17
 */

@Service
public class VisitorServiceImpl extends ServiceImpl<VisitorMapper, Visitor> implements IVisitorService {
    @Autowired
    VisitorMapper visitorMapper;
    public void selectDataGrid(PageInfo pageInfo){
        Page<Map<String, Object>> page = new Page<Map<String, Object>>(pageInfo.getNowpage(), pageInfo.getSize());

        List<Map<String,Object>> visitors=visitorMapper.selectVisitor(page,pageInfo.getCondition());
        pageInfo.setRows(visitors);
        pageInfo.setTotal(page.getTotal());

    }


}
