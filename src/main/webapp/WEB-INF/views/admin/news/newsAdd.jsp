<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script src="${staticPath }/static/ueditor/ueditor.config.js"></script>
<script src="${staticPath }/static/ueditor/ueditor.all.js"></script>
<script src="${staticPath }/static/ueditor/lang/zh-cn/zh-cn.js"></script>
<script src="${staticPath }/static/ueditor/ueditor.parse.js"></script>
<link rel="stylesheet" type="text/css" href="${staticPath}/static/ueditor/themes/default/css/ueditor.css">
<script type="text/javascript">
    $(function() {
        $('#newsAddForm').form({
            url : '${path }/news/add',
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
                    parent.$.modalDialog.openner_treeGrid.treegrid('reload');//之所以能在这里调用到parent.$.modalDialog.openner_treeGrid这个对象，是因为organization.jsp页面预定义好了
                    parent.$.modalDialog.handler.dialog('close');
                } else {
                    var form = $('#newsAddForm');
                    parent.$.messager.alert('提示', eval(result.msg), 'warning');
                }
            }
        });
    });


</script>
<div style="padding: 3px;">
    <form id="newsAddForm" method="post">
        <table class="grid">
            <tr>
                <td>新闻名称</td>
                <td><input name="newsName" type="text" placeholder="请输入新闻名称"  data-options="required:true" ></td>
                <td>新闻名称(英文)</td>
                <td><input name="enNewsName" type="text" placeholder="请输入新闻名称(英文)"  data-options="required:true" ></td>

            </tr>
            <tr>
                <td>新闻描述</td>
                <td><textarea name="newsDescription" style="width: 170px; height: 70px;" required="required" /></td>
                <td>新闻描述(英文)</td>
                <td><textarea name="enNewsDescription" style="width: 170px; height: 70px;" required="required" /></td>
            </tr>
            <tr>
                <td>新闻内容</td>
                <td colspan="3"><textarea id="newsContent" name="newsContent" type="textarea" style="width: 100%;height: 600px;" required="required" /></td>
            </tr>
            <tr>
                <td>新闻内容(英文)</td>
                <td colspan="3"><textarea id="enNewsContent" name="enNewsContent" style=";height: 70px;" required="required"></textarea>
            </tr>
          <tr>
            <td>产品类型</td>
            <td>
              <select required="required" name="productType">
                <option value="0">请选择产品类型</option>
                <option value="3">太阳能板</option>
                <option value="4">风力发电机</option>
                <option value="5">控制器</option>
              </select>
            </td>
          </tr>
        </table>
    </form>
</div>
<script type="text/javascript">
  var ue = UE.getEditor('newsContent');
</script>
