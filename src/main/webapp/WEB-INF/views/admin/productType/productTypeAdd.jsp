<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">

    $(function() {
        //下拉的方法
        $('#productTypeAddPid').combotree({
            url : '${path }/productType/tree',
            parentField : 'parentId',
            panelHeight : 'auto',
        });
        //清空的方法
        $(".clear").click(function(){
            $('#productTypeAddPid').combotree("clear");
        });
        //新增表單提交的方法
        $('#productTypeAddForm').form({
            url : '${path }/productType/add',
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
                    var form = $('#productTypeAddForm');
                    parent.$.messager.alert('提示', eval(result.msg), 'warning');
                }
            }
        });
        
    });


</script>
<div style="padding: 3px;">
    <!-- 添加界面-->
    <form id="productTypeAddForm" method="post">
        <table class="grid">
            <tr>
                <td>产品名称</td>
                <td><input name="productType" type="text" placeholder="请输入产品名称" class="easyui-validatebox" data-options="required:true" ></td>
                
            </tr>
            <tr>
                <td>上级资源</td>
                <td colspan="3">
                    <select id="productTypeAddPid" name="parentId" style="width:200px;height: 29px;">

                    </select>
                    <input type="button" value="清空" class="clear"></input>
                </td>
            </tr>
        </table>
    </form>
</div>