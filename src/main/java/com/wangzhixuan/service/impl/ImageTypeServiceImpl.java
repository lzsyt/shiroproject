package com.wangzhixuan.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.wangzhixuan.commons.result.Tree;
import com.wangzhixuan.model.ImageType;
import com.wangzhixuan.mapper.ImageTypeMapper;
import com.wangzhixuan.model.ProductType;
import com.wangzhixuan.service.IImageTypeService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
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
 * @since 2018-07-27
 */
@Service
public class ImageTypeServiceImpl extends ServiceImpl<ImageTypeMapper, ImageType> implements IImageTypeService {
    @Autowired
    private ImageTypeMapper imageTypeMapper;

    /**
     *  selectTree方法
     * @return
     */
    public List<Tree> selectTree() {
        List<ImageType> imageTypeList =selectTreeGrid();

        List<Tree> trees = new ArrayList<Tree>();
        if (imageTypeList != null) {
            for (ImageType imageType : imageTypeList) {
                Tree tree = new Tree();
                tree.setId(imageType.getId());
                tree.setText(imageType.getTypeName());
                tree.setParentId(imageType.getParentId());
                trees.add(tree);
            }
        }
        return trees;
    }

    /**
     * selectTreeGrid方法
     * @return
     */
    @Override
    public List<ImageType> selectTreeGrid() {
        EntityWrapper<ImageType> wrapper = new EntityWrapper<ImageType>();
        return imageTypeMapper.selectList(wrapper);
    }

    @Override
    public ImageType selectByImageType(int imageType) {
        return imageTypeMapper.selectByImageType(imageType);
    }


}
