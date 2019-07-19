package com.wangzhixuan.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.wangzhixuan.mapper.QuestionMapper;
import com.wangzhixuan.model.Question;
import com.wangzhixuan.service.IQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zmn
 * @since 2018-11-23
 */
@Service
public class QuestionServiceImpl extends ServiceImpl<QuestionMapper, Question> implements IQuestionService {
    @Autowired
    QuestionMapper questionMapper;
    @Override
    public List<Question> findIntroduce() {
        return questionMapper.findIntroduce();
    }

    @Override
    public List<Question> findFile() {

        return questionMapper.findFile();
    }
}
