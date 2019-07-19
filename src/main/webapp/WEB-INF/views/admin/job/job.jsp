<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    var jobTreeGrid;
    $(function () {
        jobTreeGrid = $('#jobTreeGrid').treegrid({
            url: '${path }/job/treeGrid',
            idField: 'id',
            striped: true,
            treeField: '',
            pagination: true,
            fit: true,
            fitColumns: false,
            border: false,
            pageSize: 20,
            pageList: [10, 20, 30, 40, 50, 100, 200, 300, 400, 500],
            rownumbers: true,
            frozenColumns: [[{
                title: 'id',
                field: 'id',
                width: 40,
                hidden: true
            }]],
            columns: [[{
                field: 'jobName',
                title: '任务名称',
                align: 'center',
                width: '220',
            }, {
                field: 'jobState',
                title: '任务状态',
                align: 'center',
                width: '220',
                formatter: function (value, row, index) {
                    if (row.jobState == 0) {
                        return '正在运行';
                    } else if (row.jobState == 1) {
                        return '暂停';
                    } else if (row.jobState) {
                        return '恢复'
                    } else if (row.jobState) {
                        return '修改';
                    }
                }
            }, {
                width: '220',
                title: '每日执行时间',
                align: 'center',
                field: 'cronExpression'
            }, {
                field: 'action',
                title: '操作',
                align: 'center',
                width: '300',
                formatter: function (value, row, index) {
                    var str = '';
                    str += $.formatString('<a href="javascript:void(0)"  onclick="pausejob(\'{0}\');" >暂停</a>', row.id);
                    str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
                    str += $.formatString('<a href="javascript:void(0)"  onclick="resumejob(\'{0}\');" >恢复</a>', row.id);
                    str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
                    str += $.formatString('<a href="javascript:void(0)" data-options="plain:true,iconCls:\'glyphicon-pencil icon-blue\'" onclick="editJobFun(\'{0}\');" >编辑</a>', row.id);
                    return str;
                }
            }]],
            onLoadSuccess: function (data) {
                $('.job-easyui-linkbutton-edit').linkbutton({text: '编辑'});
            },
            toolbar: '#jobToolbar'
        });
    });

    function pausejob(id) {
        $.post('${path }/job/edit', {id: id, jobState: 1}, function (result) {
            console.info("界面刷新")
            jobTreeGrid.treegrid('reload');
        });
    }
    function resumejob(id) {
        $.post('${path }/job/edit', {id: id, jobState: 2}, function (result) {
            console.info("界面刷新")
            jobTreeGrid.treegrid('reload');
        });
    }

    function editJobFun(id) {
        if (id != undefined) {
            jobTreeGrid.treegrid('select', id);
        }
        var node = jobTreeGrid.treegrid('getSelected');
        if (node) {
            parent.$.modalDialog({
                title: '编辑',
                width: 500,
                height: 300,
                href: '${path }/job/editPage?id=' + node.id,
                buttons: [{
                    text: '保存',
                    handler: function () {
                        parent.$.modalDialog.openner_treeGrid = jobTreeGrid;//因为添加成功之后，需要刷新这个treeGrid，所以先预定义好
                        var f = parent.$.modalDialog.handler.find('#jobEditForm');
                        f.submit();
                    }
                }]
            });
        }
    }
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'center',border:false" style="overflow: hidden;">
        <table id="jobTreeGrid"></table>
    </div>

</div>