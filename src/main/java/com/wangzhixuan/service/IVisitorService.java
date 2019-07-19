package com.wangzhixuan.service;

import com.baomidou.mybatisplus.service.IService;
import com.wangzhixuan.commons.result.PageInfo;
import com.wangzhixuan.model.Visitor;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zmn
 * @since 2018-11-17
 */
public interface IVisitorService extends IService<Visitor> {
    void selectDataGrid(PageInfo pageInfo);

}
