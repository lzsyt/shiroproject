package com.wangzhixuan.service.impl;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.wangzhixuan.mapper.ImageMapper;
import com.wangzhixuan.model.Image;
import com.wangzhixuan.model.Product;
import com.wangzhixuan.service.IImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wangzhixuan.commons.result.PageInfo;
import com.baomidou.mybatisplus.plugins.Page;
import java.io.IOException;
import java.util.List;
import java.io.File;
import java.util.UUID;
import java.util.Map;
import org.springframework.web.multipart.MultipartFile;
/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zmn
 * @since 2018-07-27
 */

@Service
public class ImageServiceImpl extends ServiceImpl<ImageMapper, Image> implements IImageService {
    @Autowired
    ImageMapper imageMapper;
    public void selectDataGrid(PageInfo pageInfo) {
        Page<Map<String, Object>> page = new Page<Map<String, Object>>(pageInfo.getNowpage(), pageInfo.getSize());
        page.setOrderByField(pageInfo.getSort());
        //page.setAsc(pageInfo.getOrder().equalsIgnoreCase("asc"));
        //查询条件
        List<Map<String, Object>> list = imageMapper.selectUserPage(page, pageInfo.getCondition());
        //显示的记录
        pageInfo.setRows(list);
        //总记录
        pageInfo.setTotal(page.getTotal());

    }

    /**
     * 根据条件查询
     * @param wrapper
     * @return List
     */
    @Override
    public List<Image> selectList(Wrapper<Image> wrapper) {
        return  imageMapper.selectList(wrapper);
    }

    /**
     * 插入一条记录
     * @param image
     * @return Integer
     */
    public Integer insertImage(Image image){
        return imageMapper.insert(image);
    }

    /**
     *根据图片类型和产品id查
     * @param image
     * @return List
     */
    public List<Image> selectListByCondition(Image image){
        return imageMapper.selectByCondition(image);
    }
    /**
     * 根据名字查
     * @param name
     * @return List
     */
    public List<Image>findByName(String name){
        return imageMapper.findByName(name);
    }

    /**
     * 通过product_type,imageType查询
     * @param  image
     * @return List
     */
    public List<Image>selectByTypeId(Image image){
        return  imageMapper.selectByTypeId(image);
    }

    /**
     * 通过imageId查询
     * @param imageId
     * @return Image
     */
    public Image selectImageById(Integer imageId){
        return  imageMapper.selectImageById(imageId);
    }


    /**
     * 根据id查找ImgPath
     * @param productId
     * @return List
     */
    public List<Image> pidSelectImgPath(Integer productId){
        return  imageMapper.pidSelectImgPath(productId);
    }

    /**
     * 新增Image
     * @param image
     * @return int
     */
    public int insertToAll(Image image){
        return  imageMapper.insertToAll(image);
    }

    /**
     * 修改方法
     * @param image
     * @return int
     */
    public int  updateImage(Image image){
        return  imageMapper.updateImage(image);
    }

    /**
     * 根基id和类型删除方法
     * @param image
     * @return int
     */
    public int pidDeleteImage(Image image) {
        return imageMapper.pidDeleteImage(image);
    }

    /**
     *根据id删除
     * @param productId
     * @return
     */
    public int pidDeleteImageToAll(long productId){
       return  imageMapper.pidDeleteImageToAll(productId);
    }
}
