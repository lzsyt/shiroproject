package com.wangzhixuan.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.wangzhixuan.model.News;

import java.util.List;
import java.util.Map;

public interface NewsMapper extends BaseMapper<News> {
    List<News> selectAll(News news);
    List<News> selectAllNews(Map<String, Object> map);
    boolean deleteById(int id);
    News selectById(int id);
    int selectAllSize();
    int updateNews(News news);
}
