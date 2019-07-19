package com.wangzhixuan.service.impl;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.wangzhixuan.mapper.CustomerMapper;
import com.wangzhixuan.mapper.JobStateMapper;
import com.wangzhixuan.model.Customer;
import com.wangzhixuan.model.JobState;
import com.wangzhixuan.service.ICustomerService;
import com.wangzhixuan.service.IJobStateService;
import org.springframework.stereotype.Service;

@Service
public class IJobStateServiceImpl extends ServiceImpl<JobStateMapper, JobState> implements IJobStateService {


}
