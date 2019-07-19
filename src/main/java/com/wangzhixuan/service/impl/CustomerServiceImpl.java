package com.wangzhixuan.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.wangzhixuan.commons.result.PageInfo;
import com.wangzhixuan.model.Customer;
import com.wangzhixuan.mapper.CustomerMapper;
import com.wangzhixuan.model.Role;
import com.wangzhixuan.service.ICustomerService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zmn
 * @since 2018-08-16
 */
@Service
public class CustomerServiceImpl extends ServiceImpl<CustomerMapper, Customer> implements ICustomerService {
    @Autowired
    private CustomerMapper customerMapper;


    @Override
    public List<Customer> selectAll(Map<String, Object> map) {
        List<Customer> list = customerMapper.selectAll(map);
        return list;
    }

    @Override
    public int count() {
        return customerMapper.count();
    }

    @Override
    public void selectDataGrid(PageInfo pageInfo) {
        Page<Customer> page = new Page<Customer>(pageInfo.getNowpage(), pageInfo.getSize());

        EntityWrapper<Customer> wrapper = new EntityWrapper<Customer>();
        wrapper.orderBy(pageInfo.getSort(), pageInfo.getOrder().equalsIgnoreCase("ASC"));
        selectPage(page, wrapper);

        pageInfo.setRows(page.getRecords());
        pageInfo.setTotal(page.getTotal());
    }

    @Override
    public void deleteByCustomerId(int id) {
        customerMapper.deleteByCustomerId(id);
    }

    @Override
    public List<Customer> selectTreeGrid() {
        EntityWrapper<Customer> wrapper = new EntityWrapper<Customer>();
        wrapper.orderBy("customer_id");
        return customerMapper.selectList(wrapper);
    }

    @Override
    public List<Customer> selectName(Customer customer) {
        return customerMapper.selectName(customer);
    }
    /**
     * 查询用户名和密码是否被使用
     * @param customer
     * @return
     */
    @Override
    public List<Customer> selectRegistName(Customer customer) {
        return customerMapper.selectRegistName(customer);
    }
    /**
     * 用户名新增
     * @param customer
     * @return
     */
    @Override
    public int insertCustomerName(Customer customer) {
        return customerMapper.insertCustomerName(customer);
    }
    /**
     * 电话新增
     * @param customer
     * @return
     */
    @Override
    public int insertCustomerMobile(Customer customer) {
        return customerMapper.insertCustomerMobile(customer);
    }
    /**
     * 检测名字是否存在
     * @param customer
     * @return
     */

    public List<Customer> selectCheckName(Customer customer) {
        return customerMapper.selectCheckName(customer);
    }
    /**
     * 修改密码
     * @param customer
     * @return
     */
    @Override
    public int updatePwd(Customer customer) {
        return customerMapper.updatePwd(customer);
    }

  @Override
  public int updateRemark(String id, String remark) {
    return customerMapper.updateRemark(id,remark);
  }

}
