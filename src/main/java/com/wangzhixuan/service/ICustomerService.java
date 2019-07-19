package com.wangzhixuan.service;

import com.wangzhixuan.commons.result.PageInfo;
import com.wangzhixuan.model.Customer;
import com.baomidou.mybatisplus.service.IService;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zmn
 * @since 2018-08-16
 */
public interface ICustomerService extends IService<Customer> {
   List<Customer> selectAll(Map<String, Object> map);
   int count();
   void selectDataGrid(PageInfo pageInfo);
   void deleteByCustomerId(int id);
   List<Customer> selectTreeGrid();
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

    int updateRemark(String id, String remark);
}
