package com.wangzhixuan.service.impl;

import com.baomidou.mybatisplus.mapper.Condition;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.wangzhixuan.commons.redis.util.LzsRedisUtil;
import com.wangzhixuan.mapper.NewsMapper;
import com.wangzhixuan.model.News;
import com.wangzhixuan.service.INewsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;

import java.util.*;

@Service
public class NewsServiceImpl extends ServiceImpl<NewsMapper, News> implements INewsService {

    private static final Logger LOGGER = LoggerFactory.getLogger(NewsServiceImpl.class);

    @Autowired
    private NewsMapper newsMapper;


    @Autowired
    private LzsRedisUtil lzsRedisUtil;

    /**
     * 新闻中心的缓存
     *
     * @param form
     * @param size
     * @param producttype
     * @return
     */
    @Cacheable(value = "redis_news", key = "'NewsCenterNews_'+#form+'_'+#size+'_'+#producttype")
    @Override
    public Page selectByPage(int form, int size, int producttype) {
        Page page = new Page(form, size);
        this.selectPage(page, Condition.create().eq("product_Type", producttype));
        return page;
    }

    /**
     * 首页的新闻缓存
     *
     * @param news
     * @return
     */
    @Cacheable(value = "redis_news", key = "'HomePageNews_'+#news.productType")
    @Override
    public List<News> selectAll(News news) {
        LOGGER.debug("查询HomePageUser");
        return newsMapper.selectAll(news);
    }

    /**
     * 查询数量的方法
     *
     * @return
     */
    @Override
    public int selectAllSize() {
        int size = newsMapper.selectAllSize();
        LOGGER.debug("selectAllSize()={}", size);
        return size;
    }

    /**
     * 后台管理的缓存
     *
     * @param currentPage
     * @param size
     * @return
     */
    @Cacheable(value = "redis_news", key = "'AdminNewsList_'+#currentPage+'_'+#size")
    @Override
    public List<News> selectAllNews(int currentPage, int size) {
        LOGGER.debug("查询AdminUser");
        int from = (currentPage - 1) * size;
        Map<String, Object> map = new HashMap<>();
        map.put("from", from);
        map.put("size", size);
        List<News> newsList = newsMapper.selectAllNews(map);
        return newsList;
    }

    /**
     * 根据id找到某一个
     *
     * @param id
     * @return
     */
    @Cacheable(value = "news", key = "'AdminNews_'+#id")
    @Override
    public News findById(int id) {
        LOGGER.info("findById,id={}", id);
        News news = newsMapper.selectById(id);
        return news;
    }

    /**
     * 删除
     *
     * @param id
     * @return
     */
    @CacheEvict(value = "news", key = "'AdminNews_'+#id", beforeInvocation = false)
    @Override
    public boolean deleteById(int id) {
        reflushRedis();
        LOGGER.info("deleteById,key=AdminNews_{}", id);
        return newsMapper.deleteById(id);
    }

    /**
     * 更新
     *
     * @param news
     * @return
     */
    @CachePut(value = "news", key = "'AdminNews_'+#news.newsId")
    @Override
    public News updateNews(News news) {
        reflushRedis();
        LOGGER.info("updateNews,key=AdminNews_{}", news.getNewsId());
        newsMapper.updateNews(news);
        return news;
    }

    /**
     * 插入
     *
     * @param news
     * @return
     */
    @CachePut(value = "news", key = "'AdminNews_'+#news.newsId")
    @Override
    public News insertNews(News news) {
        reflushRedis();
        this.insert(news);
        News dbNews = newsMapper.selectOne(news);
        LOGGER.info("insertNews,key=AdminNews_{}", news.getNewsId());
        return dbNews;
    }

    /**
     * 此方法用于刷掉redis 里面的脏数据
     */
    public void reflushRedis() {
        Jedis jedis = lzsRedisUtil.getJedis();
        try {
            Set<String> keySet = new HashSet<>();
            keySet.addAll(jedis.keys("redis_news:NewsCenterNews_*"));
            keySet.addAll(jedis.keys("redis_news:HomePageNews_*"));
            keySet.addAll(jedis.keys("redis_news:AdminNewsList_*"));
            Iterator<String> keyIterable = keySet.iterator();
            while (keyIterable.hasNext()) {
                jedis.del(keyIterable.next());
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            jedis.close();
        }
        LOGGER.info("刷掉redis 里面的脏数据");
    }
}
