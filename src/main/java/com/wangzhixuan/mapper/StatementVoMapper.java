package com.wangzhixuan.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.wangzhixuan.model.vo.StatementVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StatementVoMapper extends BaseMapper<StatementVo> {

    public List<StatementVo> find(@Param("year") String year);

    public List<StatementVo> quaryMonth(@Param("month") Integer month);


}
