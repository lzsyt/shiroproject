package com.wangzhixuan.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.wangzhixuan.mapper.NewsMapper;
import com.wangzhixuan.model.News;
import com.wangzhixuan.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class NewsServiceImpl extends ServiceImpl<NewsMapper, News> implements INewsService {
    @Autowired
    private NewsMapper newsMapper;
    @Override
    public List<News> selectAll(News news) {
        return newsMapper.selectAll(news);
    }

    @Override
    public List<News> selectAllNews(Map<String, Object> map) {
        return newsMapper.selectAllNews(map);
    }

    @Override
    public boolean deleteById(int id) {
        return newsMapper.deleteById(id);
    }

    @Override
    public News selectById(int id) {
        return newsMapper.selectById(id);
    }

  @Override
  public int selectAllSize() {
    return newsMapper.selectAllSize();
  }

  @Override
  public int updateNews(News news) {
    return newsMapper.updateNews(news);
  }

}
