<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
  $(function() {
    $('#customerEditForm').form({
      url : '${path }/customer/updateCustomer',
      onSubmit : function() {
        progressLoad();
        var isValid = $(this).form('validate');
        if (!isValid) {
          progressClose();
        }
        return isValid;
      },
      success : function(result) {
        progressClose();
        result = $.parseJSON(result);
        if (result.success) {
          parent.$.modalDialog.openner_treeGrid.treegrid('reload');//之所以能在这里调用到parent.$.modalDialog.openner_treeGrid这个对象，是因为job.jsp页面预定义好了
          parent.$.modalDialog.handler.dialog('close');
        } else {
          var form = $('#customerEditForm');
          parent.$.messager.alert('错误', eval(result.msg), 'error');
        }
      }
    });
  });
</script>
<div style="padding: 3px;">
  <form id="customerEditForm" method="post">
    <table class="grid">
      <input name="id" type="hidden"  value="${customer.customerId}">
      <tr>
        <td>手机号</td>
        <td><input  type="text"  value="${customer.mobile}" disabled="true"></td>
        <td>名字</td>
        <td><input  type="text" value="${customer.name}" disabled="true"></td>
      </tr>
      <tr>
        <td>真实姓名</td>
        <td><input  type="text"  value="${customer.realName}"disabled="true"></td>
        <td>身份证号</td>
        <td><input  type="text" value="${customer.IDCode}" disabled="true"></td>
      </tr>
      <tr>
        <td>地址</td>
        <td><input  type="text"  value="${customer.address}"disabled="true"></td>
        <td>性别</td>
        <td>
          <select class="easyui-combobox" value="${customer.sex}" disabled="true" data-options="width:140,height:29,editable:false,panelHeight:'auto'">
            <option value="0">男</option>
            <option value="1">女</option>
          </select>
        </td>
      </tr>
      <tr>
        <td>注册时间</td>
        <td><fmt:formatDate value="${customer.registerTime}" pattern="yyyy年MM月dd日HH点mm分ss秒" /></td>
        <td>留言</td>
        <td><input  type="text" value="${customer.message}" disabled="true"></td>
      </tr>
      <tr>
        <td>年龄</td>
        <td><input  type="text"  value="${customer.age}"disabled="true"></td>
        <td>IP</td>
        <td><input  type="text" value="${customer.ip}" disabled="true"></td>
      </tr>
      <tr >
        <td>邮箱</td>
        <td colspan="3" align="center">
          <input type="text" name="email" class="easyui-textbox" value="${customer.email}" style="width:100%" data-options="" disabled="true"/>
        </td>
      </tr>
      <tr >
        <td>备注</td>
        <td colspan="3" align="center">
          <input type="text" name="remark" class="easyui-textbox" style="width:100%" data-options=""/>
        </td>
      </tr>
    </table>
  </form>
</div>
<%--customer--%>
