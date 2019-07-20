package com.wangzhixuan.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.wangzhixuan.model.vo.StatementVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StatementVoMapper extends BaseMapper<StatementVo> {

    public List<StatementVo> find(@Param("year") Integer year, @Param("website") String website);

    public List<StatementVo> quaryMonth(@Param("year") Integer year, @Param("month") Integer month, @Param("website") String website);


}
