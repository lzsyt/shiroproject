package com.wangzhixuan.model;

import com.baomidou.mybatisplus.activerecord.Model;

import java.io.Serializable;
import java.util.Date;

public class News extends Model<News> {
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
    private String title;
    private String keyword;
    private String description;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

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


    @Override
    public String toString() {
        return "News{" +
                "newsId=" + newsId +
                ", newsName='" + newsName + '\'' +
                ", newsDescription='" + newsDescription + '\'' +
                ", newsContent='" + newsContent + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", enNewsName='" + enNewsName + '\'' +
                ", enNewsDescription='" + enNewsDescription + '\'' +
                ", enNewsContent='" + enNewsContent + '\'' +
                ", productType=" + productType +
                ", title='" + title + '\'' +
                ", keyword='" + keyword + '\'' +
                ", description='" + description + '\'' +
                '}';
    }

    @Override
    protected Serializable pkVal() {
        return this.newsId;
    }
}
