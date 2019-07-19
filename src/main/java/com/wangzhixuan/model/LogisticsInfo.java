package com.wangzhixuan.model;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author zmn
 * @since 2018-07-19
 */
public class LogisticsInfo extends Model<LogisticsInfo> {

    private static final long serialVersionUID = 1L;

	@TableId(value="logistics_id", type= IdType.AUTO)
	private Integer logisticsId;
	private String goodsName;
	private String deliverName;
	private String deliverPhone;
	private String deliverRegion;
	private String deliverAddressDetail;
	private String goodsVolume;
	private Double goodsWeight;
	private Integer acceptRegion;
	private String acceptAddressDetail;
	private String acceptName;
	private String acceptPhone;
	private String comment;
    /**
     * 发货状态：1已发货，0未发货
     */
	private Integer state;
    /**
     * 运单号
     */
	private String trackingNumber;
    /**
     * 物流公司名称
     */
	private String logsticsType;


	public Integer getLogisticsId() {
		return logisticsId;
	}

	public void setLogisticsId(Integer logisticsId) {
		this.logisticsId = logisticsId;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getDeliverName() {
		return deliverName;
	}

	public void setDeliverName(String deliverName) {
		this.deliverName = deliverName;
	}

	public String getDeliverPhone() {
		return deliverPhone;
	}

	public void setDeliverPhone(String deliverPhone) {
		this.deliverPhone = deliverPhone;
	}

	public String getDeliverRegion() {
		return deliverRegion;
	}

	public void setDeliverRegion(String deliverRegion) {
		this.deliverRegion = deliverRegion;
	}

	public String getDeliverAddressDetail() {
		return deliverAddressDetail;
	}

	public void setDeliverAddressDetail(String deliverAddressDetail) {
		this.deliverAddressDetail = deliverAddressDetail;
	}

	public String getGoodsVolume() {
		return goodsVolume;
	}

	public void setGoodsVolume(String goodsVolume) {
		this.goodsVolume = goodsVolume;
	}

	public Double getGoodsWeight() {
		return goodsWeight;
	}

	public void setGoodsWeight(Double goodsWeight) {
		this.goodsWeight = goodsWeight;
	}

	public Integer getAcceptRegion() {
		return acceptRegion;
	}

	public void setAcceptRegion(Integer acceptRegion) {
		this.acceptRegion = acceptRegion;
	}

	public String getAcceptAddressDetail() {
		return acceptAddressDetail;
	}

	public void setAcceptAddressDetail(String acceptAddressDetail) {
		this.acceptAddressDetail = acceptAddressDetail;
	}

	public String getAcceptName() {
		return acceptName;
	}

	public void setAcceptName(String acceptName) {
		this.acceptName = acceptName;
	}

	public String getAcceptPhone() {
		return acceptPhone;
	}

	public void setAcceptPhone(String acceptPhone) {
		this.acceptPhone = acceptPhone;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getTrackingNumber() {
		return trackingNumber;
	}

	public void setTrackingNumber(String trackingNumber) {
		this.trackingNumber = trackingNumber;
	}

	public String getLogsticsType() {
		return logsticsType;
	}

	public void setLogsticsType(String logsticsType) {
		this.logsticsType = logsticsType;
	}

	@Override
	protected Serializable pkVal() {
		return this.logisticsId;
	}

}
