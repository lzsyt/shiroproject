<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    $(function() {
        //下拉的方法，及下拉赋值
        $('#productTypeEditPid').combotree({
            url : '${path }/productType/tree?flag=false',
            parentField : 'parentId',
            panelHeight : 'auto',
            value :'${productType.parentId}'
        });
        //清空的方法
        $(".clear").click(function(){
            $('#productTypeEditPid').combotree("clear");
        });
        //编辑表单提交的方法
        $('#productTypeEditForm').form({
            url : '${path }/productType/edit',
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
                    parent.$.modalDialog.openner_treeGrid.treegrid('reload');//之所以能在这里调用到parent.$.modalDialog.openner_treeGrid这个对象，是因为productType.jsp页面预定义好了
                    parent.$.modalDialog.handler.dialog('close');
                } else {
                    var form = $('#productTypeEditForm');
                    parent.$.messager.alert('提示', eval(result.msg), 'warning');
                }
            }
        });
        
    });
</script>
<div style="padding: 3px;">
    <form id="productTypeEditForm" method="post">
        <table class="grid">
            <tr>
                <td>产品编号</td>
                <td><input name="id" type="text" value="${productType.id}" readonly="readonly"/></td>
                <td>产品名称</td>
                <td><input name="productType" type="text" value="${productType.productType}" placeholder="请输入产品名称" class="easyui-validatebox" data-options="required:true" ></td>
            </tr>
            <tr>
                <td>上级资源</td>
                <td colspan="3"><select id="productTypeEditPid" name="parentId" style="width: 200px; height: 29px;"></select>
                    <input type="button" value="清空" class="clear"></input>
            </tr>
        </table>
    </form>
</div>
