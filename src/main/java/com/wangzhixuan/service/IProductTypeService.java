package com.wangzhixuan.service;

import com.baomidou.mybatisplus.service.IService;
import com.wangzhixuan.model.ProductType;
import com.wangzhixuan.commons.result.Tree;
import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zmn
 * @since 2018-08-16
 */
public interface IProductTypeService extends IService<ProductType> {
	List<Tree> selectTree();
	List<ProductType> selectTreeGrid();
}
