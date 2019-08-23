package com.wangzhixuan.commons.redis.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.stereotype.Component;
import org.springframework.util.ReflectionUtils;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import java.lang.reflect.Field;

@Component
public class JedisUtil {
    @Autowired
    private JedisConnectionFactory jedisConnectionFactory;

    private JedisPool jedisPool;

    public Jedis getJedis() {
        afterPropertiesSet();
        return jedisPool.getResource();
    }

    private void afterPropertiesSet() {
        Field poolField = ReflectionUtils.findField(JedisConnectionFactory.class, "pool");
        ReflectionUtils.makeAccessible(poolField);
        jedisPool = (JedisPool) ReflectionUtils.getField(poolField, jedisConnectionFactory);
    }
}
