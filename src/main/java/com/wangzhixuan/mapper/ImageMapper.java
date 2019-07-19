package com.wangzhixuan.mapper;

import com.wangzhixuan.model.Image;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.wangzhixuan.model.Product;
import org.apache.ibatis.annotations.Param;
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
public interface ImageMapper extends BaseMapper<Image> {
    List<Map<String, Object>> selectUserPage(Pagination page, Map<String, Object> params);
    /**
     *根据图片类型和产品id查
     * @param image
     * @return List
     */
    public List<Image>selectByCondition(Image image);
    /**
     * 根据名字查
     * @param name
     * @return List
     */
    public List<Image>findByName(String name);
    /**
     * 通过product_type,imageType查询
     * @param  image
     * @return List
     */
    public List<Image>selectByTypeId(Image image);
    /**
     * 通过imageId查询
     * @param imageId
     * @return Image
     */
    public Image selectImageById(long imageId);

    /**
     * 根据id查找ImgPath
     * @param productId
     * @return List
     */
    public List<Image> pidSelectImgPath(Integer productId);
    /**
     * 新增Image
     * @param image
     * @return int
     */
    public int insertToAll(Image image);
    /**
     * 修改方法
     * @param image
     * @return int
     */
    public int updateImage(Image image);
    /**
     * 删除方法
     * 根据id和类型
     * @param image
     * @return int
     */
    public int pidDeleteImage(Image image);

    /**
     * 根据id删除
     * @param productId
     * @return
     */
    public int pidDeleteImageToAll(long productId);

}