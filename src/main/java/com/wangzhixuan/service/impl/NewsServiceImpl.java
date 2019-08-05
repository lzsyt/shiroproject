package com.wangzhixuan.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.wangzhixuan.mapper.NewsMapper;
import com.wangzhixuan.model.News;
import com.wangzhixuan.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class NewsServiceImpl extends ServiceImpl<NewsMapper, News> implements INewsService {


    @Autowired
    private NewsMapper newsMapper;

    @Resource
    public RedisTemplate<String, News> redisTemplate;

    @Override
    public List<News> selectAll(News news) {
        return newsMapper.selectAll(news);
    }

    @Override
    public List<News> selectAllNews(Map<String, Object> map) {
        Long start = Long.valueOf(String.valueOf(map.get("from")));
        Long end = start + Long.valueOf(String.valueOf(map.get("size"))) - 1;
        List<News> newsList = redisTemplate.opsForList().range("NewsList", start, end);
        if (newsList == null || newsList.size() == 0) {
            newsList = newsMapper.selectAllNews(map);
            redisTemplate.opsForList().leftPushAll("NewsList", newsList);
        }
        return newsList;
    }

    @Override
    public boolean deleteById(int id) {
        Integer index = findIndexFromRedis(id);
        if (index != null) {
            News redisNews = redisTemplate.opsForList().range("NewsList", index, index).get(0);
            redisTemplate.opsForList().remove("NewsList", 1, redisNews);
        }
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
        Integer index = findIndexFromRedis(news.getNewsId());
        if (index != null)
            redisTemplate.opsForList().set("NewsList", index, news);
        return newsMapper.updateNews(news);
    }


    public Integer findIndexFromRedis(int id) {
        List<News> newsList = redisTemplate.opsForList().range("NewsList", 0, -1);
//        System.out.println(redisTemplate.opsForList().range("NewsList", 0, -1).size());
        if (newsList != null && newsList.size() != 0) {
            for (int i = 0; i < newsList.size(); i++) {
                if (newsList.get(i).getNewsId() == id) {
                    return i;
                }
            }
        }
        return null;
    }

}
