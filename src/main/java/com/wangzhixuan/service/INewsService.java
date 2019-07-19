package com.wangzhixuan.service;

import com.baomidou.mybatisplus.service.IService;
import com.wangzhixuan.model.News;

import java.util.List;
import java.util.Map;

public interface INewsService extends IService<News> {
    //获取总记录
    List<News> selectAll(News news);
    //获取每页的记录
    List<News> selectAllNews(Map<String, Object> map);
    boolean deleteById(int id);
    News selectById(int id);
    int selectAllSize();

    int updateNews(News news);
}
