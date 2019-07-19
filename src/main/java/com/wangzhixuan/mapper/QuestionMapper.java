package com.wangzhixuan.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.wangzhixuan.model.Question;

import java.util.List;

/**
 * <p>
  *  Mapper 接口
 * </p>
 *
 * @author zmn
 * @since 2018-11-23
 */
public interface QuestionMapper extends BaseMapper<Question> {

    List<Question> findIntroduce();

    List<Question> findFile();


}