package com.wangzhixuan.mapper;

import com.wangzhixuan.model.ImageType;
import com.baomidou.mybatisplus.mapper.BaseMapper;

/**
 * <p>
  *  Mapper 接口
 * </p>
 *
 * @author zmn
 * @since 2018-07-27
 */
public interface ImageTypeMapper extends BaseMapper<ImageType> {
    ImageType selectByImageType(int imageId);
}