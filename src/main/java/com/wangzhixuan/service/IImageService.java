package com.wangzhixuan.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.wangzhixuan.model.Image;
import com.wangzhixuan.commons.result.PageInfo;

import java.util.List;

import com.wangzhixuan.model.Product;
import org.springframework.web.multipart.MultipartFile;
/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zmn
 * @since 2018-07-27
 */
public interface IImageService extends IService<Image>{
        //查询树状图的方法
        void selectDataGrid(PageInfo pageInfo);
        public List<Image> selectList(Wrapper<Image> wrapper);
        //新增图片
        public Integer insertImage(Image image);
        //通过产品productId和imageType查询
        public List<Image> selectListByCondition(Image image);
        //通过名字查询
        public List<Image>findByName(String name);
        //通过product_type,imageType查询
        public List<Image>selectByTypeId(Image image);
        //通过imageId查询
        public Image selectImageById(Integer imageId);
        //根据id查图片表和产品表
        public List<Image> pidSelectImgPath(Integer productId);
        // 新增图片
        public int insertToAll(Image image);
        public int  updateImage(Image image);
        //根据id,类型删除
        public int pidDeleteImage(Image image);
        //根据id删除
        public int pidDeleteImageToAll(long productId);

    }
