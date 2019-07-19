<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    $(function() {
        $('#jobEditForm').form({
            url : '${path }/job/edit',
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
                    var form = $('#jobEditForm');
                    parent.$.messager.alert('错误', eval(result.msg), 'error');
                }
            }
        });

        $("#jobState").val('${jobState.jobState}');
    });
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'center',border:false" title="" style="overflow: hidden;padding: 3px;">
        <form id="jobEditForm" method="post">
            <table class="grid">
                <tr>
                    <td>任务名称</td>
                    <td>
                        <input name="id" type="hidden"  value="${jobState.id}">
                        <input name="jobState" type="hidden"  value="3">
                        <input name="jobName" type="text" class="easyui-validatebox" disabled="true" value="${jobState.jobName}">
                    </td>
                </tr>
                <tr>
                    <td>备份时间</td>
                    <td><input name="cronExpression" id="changTime" type="text" placeholder="请输入备份时间" class="easyui-timespinner" style="width:160px;height: 30px;" data-options="showSeconds:true" value="${jobState.cronExpression}"></td>
                </tr>
            </table>
        </form>
    </div>
</div>
