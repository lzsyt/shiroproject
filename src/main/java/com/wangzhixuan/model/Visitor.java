package com.wangzhixuan.model;

import com.baomidou.mybatisplus.activerecord.Model;
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
 * @since 2018-11-17
 */
public class Visitor extends Model<Visitor> {

    private static final long serialVersionUID = 1L;

	@TableId(value="id", type= IdType.AUTO)
	private Integer id;
	private String visitorName;
	private String ip;
	private String visitorPage;
	private Date visitorTime;
	private String visitorAddr;
	private String visitorPagename;
	private Integer visitorType;
    private Integer visitorProductid;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getVisitorName() {
		return visitorName;
	}

	public void setVisitorName(String visitorName) {
		this.visitorName = visitorName;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getVisitorPage() {
		return visitorPage;
	}

	public void setVisitorPage(String visitorPage) {
		this.visitorPage = visitorPage;
	}

	public Date getVisitorTime() {
		return visitorTime;
	}

	public void setVisitorTime(Date visitorTime) {
		this.visitorTime = visitorTime;
	}

	public String getVisitorAddr() {
		return visitorAddr;
	}

	public void setVisitorAddr(String visitorAddr) {
		this.visitorAddr = visitorAddr;
	}

	public Integer getVisitorType() {
		return visitorType;
	}

	public void setVisitorType(Integer visitorType) {
		this.visitorType = visitorType;
	}

	public String getVisitorPageName() {
		return visitorPagename;
	}

	public void setVisitorPageName(String visitorPageName) {
		this.visitorPagename = visitorPageName;
	}

	public Integer getVisitorProductId() {
		return visitorProductid;
	}

	public void setVisitorProductId(Integer visitorProductId) {
		this.visitorProductid = visitorProductId;
	}

	@Override
	protected Serializable pkVal() {
		return this.id;
	}

}
