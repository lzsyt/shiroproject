package com.wangzhixuan.service;

import com.wangzhixuan.model.Video;

import java.util.List;
import java.util.Map;

public interface VideoService {
    public List<Video> selectAll(Map<String, String> map);

    public int count(Map<String, String> map);

    void deleteById(Long videoId);

    Video selectById(Long videoId);

    void updateVideo(Map<String, Object> map);

    void insertVadeo(Map<String, Object> map);
}
