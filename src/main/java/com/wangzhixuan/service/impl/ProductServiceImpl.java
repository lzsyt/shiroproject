package com.wangzhixuan.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.wangzhixuan.commons.result.PageInfo;
import com.wangzhixuan.mapper.ProductMapper;
import com.wangzhixuan.model.Product;
import com.wangzhixuan.model.Products;
import com.wangzhixuan.service.IProductService;
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
 * @since 2018-07-27
 */
@Service
public class ProductServiceImpl extends ServiceImpl<ProductMapper, Product> implements IProductService {
    @Autowired
    private ProductMapper productMapper;

    public void selectDataGrid(PageInfo pageInfo) {
        Page<Map<String, Object>> page = new Page<Map<String, Object>>(pageInfo.getNowpage(), pageInfo.getSize());
        System.out.println("nowPage====="+pageInfo.getNowpage());
        System.out.println("size====="+pageInfo.getSize());
        System.out.println("total====="+page.getTotal());
        page.setOrderByField(pageInfo.getSort());
        //查询条件
        List<Map<String, Object>> list = productMapper.selectProductPage(page, pageInfo.getCondition());
        //显示的记录
        pageInfo.setRows(list);
        //总记录
        System.out.println("total====="+page.getTotal());
        pageInfo.setTotal(page.getTotal());
    }

    public  Product TwoSelectOne(Product product){
        return  productMapper.TwoSelectOne(product);
    }

    public  List<Products> selectImageFind(Long productId){
        return productMapper.selectImageFind(productId);
    }

}
