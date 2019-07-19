<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/25
  Time: 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ include file="/commons/global.jsp" %>--%>
    <script src="${staticPath }/static/ueditor/ueditor.config.js"></script>
    <script src="${staticPath }/static/ueditor/ueditor.all.js"></script>
    <script src="${staticPath }/static/ueditor/lang/zh-cn/zh-cn.js"></script>
    <script src="${staticPath }/static/ueditor/ueditor.parse.js"></script>
    <link rel="stylesheet" type="text/css" href="${staticPath}/static/ueditor/themes/default/css/ueditor.css">
    <script>
      //新闻内容回显
      $(function(){
        //新闻内容放置在隐藏的input中
        var content = $("#content").val();
        var ue = UE.getEditor('newsContent');
        ue.ready(function () {
          ue.setContent(content);
        })
      })
      //表单提交的方法
      $('#newsEditForm').form({
        url : '${path }/news/edit',
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
            parent.$.modalDialog.openner_treeGrid.treegrid('reload');
            parent.$.modalDialog.handler.dialog('close');
          } else {
            var form = $('#newsEditForm');
            parent.$.messager.alert('错误', eval(result.msg), 'error');
          }
        }
      });
    </script>


  <div style="padding: 3px;">
    <form id="newsEditForm" method="post">
      <table class="grid">
        <input name="newsId" type="hidden"  value="${news.newsId}">
        <tr>
          <td>新闻名称</td>
          <td><input name="newsName" type="text" placeholder="请输入新闻名称"  data-options="required:true" value="${news.newsName}"></td>
          <td>新闻名称(英文)</td>
          <td><input name="enNewsName" type="text" placeholder="请输入新闻名称(英文)"  data-options="required:true" value="${news.enNewsName}"></td>

        </tr>
        <tr>
          <td>新闻描述</td>
          <td><textarea name="newsDescription" style="width: 300px; height: 70px;" required="required" >${news.newsDescription}</textarea></td>
          <td>新闻描述(英文)</td>
          <td><textarea name="enNewsDescription" style="width: 300px; height: 70px;" required="required">${news.enNewsDescription}</textarea></td>
        </tr>
        <tr>
          <td>产品类型</td>
          <td>
            <select required="required" name="productType"  style="width: 150px" >
              <option value="0">请选择产品类型</option>
              <option value="3">太阳能板</option>
              <option value="4">风力发电机</option>
              <option value="5">控制器</option>
            </select>
          </td>
        </tr>
        <tr>
          <td>新闻内容</td>
          <input type="hidden" id="content" value="${news.newsContent}" />
          <td colspan="3"><textarea id="newsContent" name="newsContent" type="textarea" style="width: 100%;height: 600px;" required="required" ></textarea></td>
        </tr>
        <tr>
          <td>新闻内容(英文)</td>
          <td colspan="3"><textarea id="enNewsContent" name="enNewsContent" style=";height: 70px;" required="required" value=""></textarea>
        </tr>

      </table>
    </form>
  </div>



