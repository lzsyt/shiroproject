package com.wangzhixuan.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.wangzhixuan.commons.utils.RedisUtil;
import com.wangzhixuan.mapper.NewsMapper;
import com.wangzhixuan.model.News;
import com.wangzhixuan.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

@Service
public class NewsServiceImpl extends ServiceImpl<NewsMapper, News> implements INewsService {


    @Autowired
    private NewsMapper newsMapper;

    @Resource
    private RedisUtil redisUtil;


    @Override
    public List<News> selectAll(News news) {
        return newsMapper.selectAll(news);
    }

    @Override
    public List<News> selectAllNews(Map<String, Object> map) {
        String from = String.valueOf(map.get("from"));
        String size = String.valueOf(map.get("size"));
        List<Object> objects = redisUtil.lGet("NewsList", Long.parseLong(from), Long.valueOf(size));

        List<News> newsList = null;

        if (objects != null && objects.size() != 0) {
            newsList = format(objects);
        } else {
            newsList = newsMapper.selectAllNews(map);
            newsList.forEach(news -> {
                redisUtil.lSet("NewsList", news);
            });
        }
        return newsList;
    }

    @Override
    public boolean deleteById(int id) {
        News news = newsMapper.selectById(id);
        redisUtil.lRemove("NewsList", 1, news);
        return newsMapper.deleteById(id);
    }

    @Override
    public News selectById(int id) {
        AtomicReference<News> news = new AtomicReference<>();
        List<News> newsList = format(redisUtil.lGet("NewsList", 0, redisUtil.lGetListSize("NewsList")));
        newsList.forEach(news1 -> {
            if (news1.getNewsId()==id){
                news.set(news1);
            }
        });
        if (news.get()!=null){
            return news.get();
        }else{
            return newsMapper.selectById(id);
        }

    }

    @Override
    public int selectAllSize() {
        Long size = redisUtil.lGetListSize("NewsList");
        if (size!=0){
            return Math.toIntExact(size);
        }else{
            return newsMapper.selectAllSize();
        }
    }

    @Override
    public int updateNews(News news) {
        List<Object> objects = redisUtil.lGet("NewsList", 0, redisUtil.lGetListSize("NewsList"));
        if (objects != null && objects.size() != 0) {
            List<News> newsList = format(objects);
            AtomicReference<News> atomicReference = new AtomicReference<>();
            newsList.forEach(news1 -> {
                if (news1.getNewsId() == news.getNewsId()) {
                    atomicReference.set(news1);
                }
            });
            redisUtil.lRemove("NewsList", 1, atomicReference.get());
            redisUtil.lSet("NewsList", news);
        }
        return newsMapper.updateNews(news);
    }


    public List<News> format(List<Object> list){
        List<News> newsList = new ArrayList<>();
        list.forEach(object -> {
            newsList.add((News) object);
        });
        return newsList;
    }
}
