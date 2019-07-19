package com.wangzhixuan.service;

import com.wangzhixuan.model.Image;
import com.wangzhixuan.model.ImageType;
import com.baomidou.mybatisplus.service.IService;
import com.wangzhixuan.commons.result.Tree;
import com.wangzhixuan.model.ProductType;

import java.util.List;
/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zmn
 * @since 2018-07-27
 */
public interface IImageTypeService extends IService<ImageType> {
    List<Tree> selectTree();
    List<ImageType> selectTreeGrid();
    ImageType selectByImageType(int imageType);
}
