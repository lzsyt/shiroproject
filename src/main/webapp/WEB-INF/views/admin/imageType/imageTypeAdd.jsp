<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">

    $(function() {
        //下拉的方法
        $('#ImageTypeAddPid').combotree({
            url : '${path }/imageType/tree',
            parentField : 'parentId',
            panelHeight : 'auto',
        });
        //清空的方法
        $(".clear").click(function(){
            $('#ImageTypeAddPid').combotree("clear");
        });
        //表單提交的方法
        $('#ImageTypeAdd').form({
            url : '${path }/imageType/add',
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
                    parent.$.modalDialog.openner_treeGrid.treegrid('reload');//之所以能在这里调用到parent.$.modalDialog.openner_treeGrid这个对象，是因为imageType.jsp页面预定义好了
                    parent.$.modalDialog.handler.dialog('close');
                } else {
                    var form = $('#ImageTypeAdd');
                    parent.$.messager.alert('提示', eval(result.msg), 'warning');
                }
            }
        });
        
    });


</script>
<div style="padding: 3px;">
    <!--- 添加界面 -->
    <form id="ImageTypeAdd" method="post">
        <table class="grid">
            <tr>
                <td>图片名称</td>
                <td><input name="typeName" type="text" placeholder="请输入图片名称" class="easyui-validatebox" data-options="required:true" ></td>
            </tr>
            <tr>
                <td>所属归类</td>
                <td colspan="3">
                    <select id="ImageTypeAddPid" name="parentId" style="width:200px;height: 29px;">

                </select>
                    <input type="button" value="清空" class="clear"></input>
                </td>
            </tr>
        </table>
    </form>
</div>