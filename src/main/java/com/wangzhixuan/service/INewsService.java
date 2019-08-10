package com.wangzhixuan.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import com.wangzhixuan.model.News;

import java.util.List;

public interface INewsService extends IService<News> {
    //获取总记录
    List<News> selectAll(News news);

    //获取每页的记录
    List<News> selectAllNews(int currentPage, int size);

    boolean deleteById(int id);

    News findById(int id);

    int selectAllSize();

    public Page selectByPage(int form,int size,int producttype);

    News updateNews(News news);

    public News insertNews(News news);
}
