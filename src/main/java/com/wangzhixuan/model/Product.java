package com.wangzhixuan.model;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * <p>
 * 
 * </p>
 *
 * @author zmn
 * @since 2018-07-27
 */
public class Product extends Model<Product> {

    private static final long serialVersionUID = 1L;

	@TableId(value="product_id", type= IdType.AUTO)
	private Integer productId;
    /**
     * 产品图片路径
     */
	private String productName;
	private BigDecimal price;
    /**
     * 创建人
     */
	private String creater;
	private String productSynopsis;
	private String productDescription;
	private String isdelet;
	private Integer productType;
	private Integer type;
	private String productNum;
	private String en_productName;
	private String en_productSynopsis;
	private String en_productDescription;

	public String getEn_productSynopsis() {
		return en_productSynopsis;
	}

	public void setEn_productSynopsis(String en_productSynopsis) {
		this.en_productSynopsis = en_productSynopsis;
	}

	public String getEn_productDescription() {
		return en_productDescription;
	}

	public void setEn_productDescription(String en_productDescription) {
		this.en_productDescription = en_productDescription;
	}

	public String getEn_productName() {
		return en_productName;
	}

	public void setEn_productName(String en_productName) {
		this.en_productName = en_productName;
	}




	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getCreater() {
		return creater;
	}

	public void setCreater(String creater) {
		this.creater = creater;
	}

	public String getProductSynopsis() {
		return productSynopsis;
	}

	public void setProductSynopsis(String productSynopsis) {
		this.productSynopsis = productSynopsis;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getIsdelet() {
		return isdelet;
	}

	public void setIsdelet(String isdelet) {
		this.isdelet = isdelet;
	}

	public Integer getProductType() {
		return productType;
	}

	public void setProductType(Integer productType) {
		this.productType = productType;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getProductNum() {
		return productNum;
	}

	public void setProductNum(String productNum) {
		this.productNum = productNum;
	}

	@Override

	protected Serializable pkVal() {
		return this.productId;
	}



}
