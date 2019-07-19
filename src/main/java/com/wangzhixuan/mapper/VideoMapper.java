package com.wangzhixuan.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.wangzhixuan.model.Video;

import java.util.List;
import java.util.Map;

public interface VideoMapper extends BaseMapper<Video> {

    public List<Video> selectAll(Map<String, String> map);

    public int count(Map<String, String> map);

    void delectVideoById(Long videoId);

    Video selectVideoByid(Long id);

    void updateVideo(Map<String, Object> map);

    void insertVideo(Map<String, Object> map);
}
