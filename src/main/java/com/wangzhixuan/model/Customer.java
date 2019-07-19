package com.wangzhixuan.model;

import com.baomidou.mybatisplus.enums.IdType;
import java.util.Date;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 *
 * </p>
 *
 * @author zmn
 * @since 2018-08-16
 */
public class Customer extends Model<Customer> {

    private static final long serialVersionUID = 1L;

	@TableId(value="customer_id", type= IdType.AUTO)
	private Integer customerId;
	private String mobile;
	private String name;
	private String realName;

	@TableField(exist = false)
	private Integer IDCode;

	private String address;
	private Integer sex;
	private Integer age;
	private Date registerTime;
	private String message;
    private String password;
	private String ip;
	private String website;
  private String remark;
  private String email;

  @Override
  public String toString() {
    return "Customer{" +
      "customerId=" + customerId +
      ", mobile='" + mobile + '\'' +
      ", name='" + name + '\'' +
      ", realName='" + realName + '\'' +
      ", IDCode=" + IDCode +
      ", address='" + address + '\'' +
      ", sex=" + sex +
      ", age=" + age +
      ", registerTime=" + registerTime +
      ", message='" + message + '\'' +
      ", password='" + password + '\'' +
      ", ip='" + ip + '\'' +
      ", website='" + website + '\'' +
      ", remark='" + remark + '\'' +
      ", email='" + email + '\'' +
      '}';
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getRemark() {
    return remark;
  }

  public void setRemark(String remark) {
    this.remark = remark;
  }

  public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public Integer getIDCode() {
		return IDCode;
	}

	public void setIDCode(Integer IDCode) {
		this.IDCode = IDCode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

    public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Date getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(Date registerTime) {
		this.registerTime = registerTime;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	@Override
	protected Serializable pkVal() {
		return this.customerId;
	}

}
