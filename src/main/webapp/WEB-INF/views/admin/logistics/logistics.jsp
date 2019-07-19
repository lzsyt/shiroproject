<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<style>
    .custom{
        height: 20px;
        font-size: 12px;
    }
</style>
<script type="text/javascript">
    var logisticsDataGrid;
    $(function() {
        logisticsDataGrid = $('#logisticsDataGrid').datagrid({
            url : '${path }/logistics/dataGrid',
            striped : true,
            rownumbers : true,
            pagination : true,
            singleSelect : true,

        idField : 'id',
            sortName : 'id',
            sortOrder : 'asc',
            pageSize : 20,
            pageList : [ 10, 20, 30, 40, 50, 100, 200, 300, 400, 500 ],
            frozenColumns : [ [ {
                width : '180',
                title : '货物名称',
                field : 'goods_name',

            } , {
                width : '200',
                title : '总体积(立方)',
                field : 'goods_volume',

            } ,{
                width : '200',
                title : '总重量（公斤）',
                field : 'goods_weight',

            }, {
                width : '200',
                title : '发货人',
                field : 'deliver_name'
            },{
                width : '200',
                title : '收货人',
                field : 'accept_name'
            }, {
                width : '160',
                title : '状态',
                field : 'state',
                sortable : true,
                formatter : function(value, row, index) {
                    switch (value) {
                        case 0:
                            return '已发货';
                        case 1:
                            return '未发货';
                    }
                }
            }, {
                field : 'action',
                title : '操作',
                width : 200,
                formatter : function(value, row, index) {
                    var str = '';
                    <shiro:hasPermission name="/logistics/grant">
                    str += $.formatString('<a href="javascript:void(0)" class="logistics-easyui-linkbutton-ok" data-options="plain:true,iconCls:\'glyphicon-ok icon-green\'" onclick="grantlogisticsFun(\'{0}\');" >授权</a>', row.id);
                    </shiro:hasPermission>
                    <shiro:hasPermission name="/logistics/edit">
                    str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
                    str += $.formatString('<a href="javascript:void(0)" class="logistics-easyui-linkbutton-edit" data-options="plain:true,iconCls:\'glyphicon-pencil icon-blue\'" onclick="editlogisticsFun(\'{0}\');" >编辑</a>', row.id);
                    </shiro:hasPermission>
                    <shiro:hasPermission name="/logistics/delete">
                    str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
                    str += $.formatString('<a href="javascript:void(0)" class="logistics-easyui-linkbutton-del" data-options="plain:true,iconCls:\'glyphicon-trash icon-red\'" onclick="deletelogisticsFun(\'{0}\');" >删除</a>', row.id);
                    </shiro:hasPermission>
                    return str;
                }
            } ] ],
            onLoadSuccess:function(data){
                $('.logistics-easyui-linkbutton-ok').linkbutton({text:'授权'});
                $('.logistics-easyui-linkbutton-edit').linkbutton({text:'编辑'});
                $('.logistics-easyui-linkbutton-del').linkbutton({text:'删除'});
            },
            toolbar : '#logisticsToolbar'
        });
    });

    function addlogisticsFun() {
        parent.$.modalDialog({
            title : '添加',
            width : 800,
            height :500,
            href : '${path }/logistics/addPage',
            buttons : [ {
                text : '确定',
                handler : function() {
                    parent.$.modalDialog.openner_dataGrid = logisticsDataGrid;//因为添加成功之后，需要刷新这个treeGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.find('#logisticsAddForm');
                    f.submit();
                }
            } ]
        });
    }

    function editlogisticsFun(id) {
        if (id == undefined) {
            var rows = logisticsDataGrid.datagrid('getSelections');
            id = rows[0].id;
        } else {
            logisticsDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        parent.$.modalDialog({
            title : '编辑',
            width : 500,
            height : 300,
            href : '${path }/logistics/editPage?id=' + id,
            buttons : [ {
                text : '确定',
                handler : function() {
                    parent.$.modalDialog.openner_dataGrid = logisticsDataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.find('#logisticsEditForm');
                    f.submit();
                }
            } ]
        });
    }

    function deletelogisticsFun(id) {
        if (id == undefined) {//点击右键菜单才会触发这个
            var rows = logisticsDataGrid.datagrid('getSelections');
            id = rows[0].id;
        } else {//点击操作里面的删除图标会触发这个
            logisticsDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        parent.$.messager.confirm('询问', '您是否要删除当前角色？', function(b) {
            if (b) {
                progressLoad();
                $.post('${path }/logistics/delete', {
                    id : id
                }, function(result) {
                    if (result.success) {
                        parent.$.messager.alert('提示', result.msg, 'info');
                        logisticsDataGrid.datagrid('reload');
                    }
                    progressClose();
                }, 'JSON');
            }
        });
    }

    function grantlogisticsFun(id) {
        if (id == undefined) {
            var rows = logisticsDataGrid.datagrid('getSelections');
            id = rows[0].id;
        } else {
            logisticsDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }

        parent.$.modalDialog({
            title : '授权',
            width : 500,
            height : 500,
            href : '${path }/logistics/grantPage?id=' + id,
            buttons : [ {
                text : '确定',
                handler : function() {
                    parent.$.modalDialog.openner_dataGrid = logisticsDataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.find('#logisticsGrantForm');
                    f.submit();
                }
            } ]
        });
    }
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'center',fit:true,border:false">
        <table id="logisticsDataGrid" data-options="fit:true,border:false"></table>
    </div>
</div>
<div id="logisticsToolbar" style="display: none;">
    <shiro:hasPermission name="/logistics/add">
        <a onclick="addlogisticsFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'glyphicon-plus icon-green'">添加</a>
    </shiro:hasPermission>
</div>