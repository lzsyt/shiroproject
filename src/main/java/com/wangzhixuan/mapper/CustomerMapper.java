package com.wangzhixuan.mapper;

import com.wangzhixuan.model.Customer;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;
import java.util.Map;

/**
 * <p>
  *  Mapper 接口
 * </p>
 *
 * @author zmn
 * @since 2018-08-16
 */
public interface CustomerMapper extends BaseMapper<Customer> {
     List<Customer> selectAll(Map<String, Object> map);

     int count();
    /**
     * 根据电话或者用户名及密码查询
     * @param customer
     * @return
     */
    List<Customer> selectName(Customer customer);

    /**
     * 查询用户名和密码是否被使用
     * @param customer
     * @return
     */
    List<Customer> selectRegistName(Customer customer);

    /**
     * 用户名新增
     * @param customer
     * @return
     */
    public int insertCustomerName(Customer customer);

    /**
     * 电话新增
     * @param customer
     * @return
     */
    public int insertCustomerMobile(Customer customer);

    /**
     * 检测名字是否存在
     * @param customer
     * @return
     */
    List<Customer> selectCheckName(Customer customer);

    /**
     * 修改密码
     * @param customer
     * @return
     */
    public int updatePwd(Customer customer);

    void deleteByCustomerId(int id);

    int updateRemark(@Param("id") String id, @Param("remark") String remark);
}
