package com.wangzhixuan.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.wangzhixuan.model.vo.StatementVo;
import com.wangzhixuan.service.INewsService;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface StatementVoMapper extends BaseMapper<StatementVo> {

    public List<StatementVo> find(@Param("year") Integer year, @Param("website") String website);

    public List<StatementVo> quaryMonth(@Param("year") Integer year, @Param("month") Integer month, @Param("website") String website);

    @Select("select max(DATE_FORMAT(visitor_time,'%m')) from visitor where DATE_FORMAT(visitor_time,'%y')=#{year}")
    public Integer quartMaxMonth(@Param("year") Integer year);

    @Select("select min(DATE_FORMAT(visitor_time,'%m')) from visitor where DATE_FORMAT(visitor_time,'%y')=#{year}")
    public Integer quartMixMonth(@Param("year") Integer year);

    @Select("select max(DATE_FORMAT(visitor_time,'%d')) from  visitor where DATE_FORMAT(visitor_time,'%y')=#{year} and DATE_FORMAT(visitor_time,'%m')=#{month}")
    public Integer quartMaxDay(@Param("year") Integer year, @Param("month") Integer month);

    @Select("select min(DATE_FORMAT(visitor_time,'%d')) from  visitor where DATE_FORMAT(visitor_time,'%y')=#{year} and DATE_FORMAT(visitor_time,'%m')=#{month}")
    public Integer quartMinDay(@Param("year") Integer year, @Param("month") Integer month);

    public List<Integer> findYear();

    public int findByMonth(@Param("website") String website, @Param("month") Integer month, @Param("year") Integer year);

    public int findByDay(@Param("website") String website, @Param("day") int day, @Param("month") Integer month, @Param("year") Integer year);

}
