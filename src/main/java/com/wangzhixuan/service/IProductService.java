package com.wangzhixuan.service;

import com.wangzhixuan.commons.result.Tree;
import com.wangzhixuan.model.Product;
import com.baomidou.mybatisplus.service.IService;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.wangzhixuan.commons.result.PageInfo;
import com.wangzhixuan.model.Products;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zmn
 * @since 2018-07-27
 */
public interface IProductService extends IService<Product> {
    void selectDataGrid(PageInfo pageInfo);
    public Product TwoSelectOne(Product product);
    List<Products> selectImageFind(Long productId);
}
