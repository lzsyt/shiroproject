package com.wangzhixuan.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.wangzhixuan.mapper.NewsMapper;
import com.wangzhixuan.model.News;
import com.wangzhixuan.service.INewsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class NewsServiceImpl extends ServiceImpl<NewsMapper, News> implements INewsService {

    private static final Logger LOGGER = LoggerFactory.getLogger(NewsServiceImpl.class);

    @Autowired
    private NewsMapper newsMapper;

    @Cacheable(value = "HomePageUser")
    @Override
    public List<News> selectAll(News news) {
        LOGGER.debug("查询HomePageUser");
        return newsMapper.selectAll(news);
    }

    @Cacheable(value = "AdminUser")
    @Override
    public List<News> selectAllNews(Map<String, Object> map) {
        LOGGER.debug("查询AdminUser");
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


    @Cacheable(value = "NewsCenterUser")
    @Override
    public Page selectByPage(int form,int size,int producttype) {
//        this.selectPage(page,wrapper);
        LOGGER.debug("查询NewsCenterUser");
        News news = new News();
        news.setProductType(producttype);
        List<News> newsList = newsMapper.selectAll(news);
        List<News> newss = new ArrayList<>();
        for (int i = form; i < size; i++) {
            newss.add(newsList.get(i));
        }
        Page page = new Page(form, size);
        page.setRecords(newss);
        return page;
    }

    @Override
    public int updateNews(News news) {
        return newsMapper.updateNews(news);
    }

}
