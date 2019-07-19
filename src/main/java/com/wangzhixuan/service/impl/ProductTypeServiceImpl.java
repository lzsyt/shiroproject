package com.wangzhixuan.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.wangzhixuan.commons.result.Tree;
import com.wangzhixuan.mapper.CustomerMapper;
import com.wangzhixuan.mapper.ProductMapper;
import com.wangzhixuan.mapper.ProductTypeMapper;
import com.wangzhixuan.model.Customer;
import com.wangzhixuan.model.Organization;
import com.wangzhixuan.model.ProductType;
import com.wangzhixuan.service.ICustomerService;
import com.wangzhixuan.service.IProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zmn
 * @since 2018-08-16
 */
@Service
public class ProductTypeServiceImpl extends ServiceImpl<ProductTypeMapper, ProductType> implements IProductTypeService {
    @Autowired
    private ProductTypeMapper productTypeMapper;

    public List<Tree> selectTree() {
        List<ProductType> productTypeList =selectTreeGrid();

        List<Tree> trees = new ArrayList<Tree>();
        if (productTypeList != null) {
            for (ProductType productType : productTypeList) {
                Tree tree = new Tree();
                tree.setId(productType.getId());
                tree.setText(productType.getProductType());
                tree.setParentId(productType.getParentId());
                trees.add(tree);
            }
        }
        return trees;
    }

    public List<ProductType> selectTreeGrid(){
        EntityWrapper<ProductType> wrapper = new EntityWrapper<ProductType>();
        return productTypeMapper.selectList(wrapper);
    }
}
