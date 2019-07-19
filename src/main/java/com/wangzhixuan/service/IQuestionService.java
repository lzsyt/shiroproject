package com.wangzhixuan.service;

import com.wangzhixuan.model.Question;
import com.baomidou.mybatisplus.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zmn
 * @since 2018-11-23
 */
public interface IQuestionService extends IService<Question> {
    List<Question> findIntroduce();
    List<Question> findFile();
}
