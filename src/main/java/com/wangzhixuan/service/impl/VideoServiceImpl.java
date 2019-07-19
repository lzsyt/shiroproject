package com.wangzhixuan.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.wangzhixuan.mapper.VideoMapper;
import com.wangzhixuan.model.Video;
import com.wangzhixuan.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class VideoServiceImpl extends ServiceImpl<VideoMapper, Video> implements VideoService {
    @Autowired
    private VideoMapper videoMapper;

    @Override
    public List<Video> selectAll(Map<String, String> map) {
        List<Video> list = videoMapper.selectAll(map);
        return list;
    }

    @Override
    public int count(Map<String, String> map) {
        return videoMapper.count(map);
    }

    @Override
    public void deleteById(Long videoId) {
        videoMapper.delectVideoById(videoId);
    }

    @Override
    public Video selectById(Long videoId) {
        return videoMapper.selectVideoByid(videoId);
    }

    @Override
    public void updateVideo(Map<String, Object> map) {
        videoMapper.updateVideo(map);
    }

    @Override
    public void insertVadeo(Map<String, Object> map) {
        videoMapper.insertVideo(map);
    }


}
