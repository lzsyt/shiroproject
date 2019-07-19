package com.wangzhixuan.model;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;

import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * 
 * </p>
 *
 * @author zmn
 * @since 2018-07-27
 */
public class Image extends Model<Image> {

    private static final long serialVersionUID = 1L;

	@TableId(value="image_id", type= IdType.AUTO)
	private Integer imageId;
	private String fileName;
	private String en_fileName;
	private String imagePath;

	private String imageType;
	private String imageTitle;
	private String en_imageTitle;
	private String imageDescription;
	private String en_imageDescription;
	private String imageDetail;
	private String en_imageDetail;



	private Integer productId;
	private Date updateTime;
	private Integer productType;
	@TableField(exist = false)
    private Product product;

	public String getEn_fileName() {
		return en_fileName;
	}

	public void setEn_fileName(String en_fileName) {
		this.en_fileName = en_fileName;
	}



	public String getEn_imageTitle() {
		return en_imageTitle;
	}

	public void setEn_imageTitle(String en_imageTitle) {
		this.en_imageTitle = en_imageTitle;
	}

	public String getEn_imageDescription() {
		return en_imageDescription;
	}

	public void setEn_imageDescription(String en_imageDescription) {
		this.en_imageDescription = en_imageDescription;
	}

	public String getEn_imageDetail() {
		return en_imageDetail;
	}

	public void setEn_imageDetail(String en_imageDetail) {
		this.en_imageDetail = en_imageDetail;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Integer getProductType() {
		return productType;
	}

	public void setProductType(Integer productType) {
		this.productType = productType;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

    public Integer getImageId() {
        return imageId;
    }

    public void setImageId(Integer imageId) {
        this.imageId = imageId;
    }

    public Date getUpdateTime() {
		return updateTime;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public String getImageType() {
		return imageType;
	}

	public void setImageType(String imageType) {
		this.imageType = imageType;
	}

	public String getImageTitle() {
		return imageTitle;
	}

	public void setImageTitle(String imageTitle) {
		this.imageTitle = imageTitle;
	}

	public String getImageDescription() {
		return imageDescription;
	}

	public void setImageDescription(String imageDescription) {
		this.imageDescription = imageDescription;
	}

	public String getImageDetail() {
		return imageDetail;
	}

	public void setImageDetail(String imageDetail) {
		this.imageDetail = imageDetail;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	@Override
	protected Serializable pkVal() {
		return this.imageId;
	}


	@Override
	public String toString() {
		return "Image{" +
				"imageType='" + imageType + '\'' +
				", productId=" + productId +
				'}';
	}
}
