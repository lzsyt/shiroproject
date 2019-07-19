package com.wangzhixuan.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.wangzhixuan.model.Product;
import com.wangzhixuan.model.Products;

import java.util.List;
import java.util.Map;

/**
 * <p>
  *  Mapper 接口
 * </p>
 *
 * @author zmn
 * @since 2018-07-27
 */
public interface ProductMapper extends BaseMapper<Product> {
    public List<Map<String, Object>> selectProductPage(Pagination page, Map<String, Object> params);
    public  Product TwoSelectOne(Product product);
    public List<Products> selectImageFind(Long productId);

}