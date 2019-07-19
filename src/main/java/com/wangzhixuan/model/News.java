package com.wangzhixuan.model;

import java.util.Date;

public class News {
    private Integer newsId;
    private String newsName;
    private String newsDescription;
    private String newsContent;
    private Date createTime;
    private Date updateTime;
    private String enNewsName;
    private String enNewsDescription;
    private String enNewsContent;
    private Integer productType;

  public Integer getProductType() {
    return productType;
  }

  public void setProductType(Integer productType) {
    this.productType = productType;
  }

  public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }

    public String getNewsName() {
        return newsName;
    }

    public void setNewsName(String newsName) {
        this.newsName = newsName;
    }

    public String getNewsDescription() {
        return newsDescription;
    }

    public void setNewsDescription(String newsDescription) {
        this.newsDescription = newsDescription;
    }

    public String getNewsContent() {
        return newsContent;
    }

    public void setNewsContent(String newsContent) {
        this.newsContent = newsContent;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getEnNewsName() {
        return enNewsName;
    }

    public void setEnNewsName(String enNewsName) {
        this.enNewsName = enNewsName;
    }

    public String getEnNewsDescription() {
        return enNewsDescription;
    }

    public void setEnNewsDescription(String enNewsDescription) {
        this.enNewsDescription = enNewsDescription;
    }

    public String getEnNewsContent() {
        return enNewsContent;
    }

    public void setEnNewsContent(String enNewsContent) {
        this.enNewsContent = enNewsContent;
    }
}
