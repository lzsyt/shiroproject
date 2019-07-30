<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    var customerTreeGrid;
    $(function() {
        customerTreeGrid = $('#customerTreeGrid').treegrid({
            url : '${path }/customer/treeGrid',
            idField : 'customerId',
            striped : true,
            treeField : '',
            pagination : true,
            fit : true,
            fitColumns : false,
            border : false,
            pageSize : 30,
            pageList : [ 10, 20, 30, 40, 50, 100, 200, 300, 400, 500 ],
            rownumbers : true,
            frozenColumns : [ [ {
                title : 'id',
                field : 'customerId',
                width : 40,
                hidden : true
            } ] ],
            columns : [ [ {
                field : 'mobile',
                title : '手机号',
                align:'center',
                width : 120
            },{
                field : 'name',
                title : '客户名',
                align:'center',
                width : 180
            }, {
                field : 'realName',
                title : '真实姓名',
                align:'center',
                width : 180
            }, {
                field : 'address',
                title : '地址',
                align:'center',
                width : 120
            },{
              field : 'email',
              title : '邮箱',
              align:'center',
              width : 120
            },  {
                width : '130',
                title : '性别',
                align:'center',
                field : 'sex',
                formatter : function(value, row, index) {
                  switch (value) {
                    case 0:
                      return '男';
                    case 1:
                      return '女';
                  }
                }
            },{
                field : 'age',
                title : '年龄',
                width : '30',
                align:'center'
            }, {
                field : 'registerTime',
                title : '注册时间',
                align:'center',
                width : '120'
            } , {
                field : 'ip',
                title : 'IP',
                align:'center',
                width : '120'
            } ,{
                field : 'message',
                title : '信息',
                align:'center',
                width : '200'
            },{
                    field : 'website',
                    title : '网站',
                    align:'center',
                    width : '100'
                },{
              field : 'remark',
              title : '备注',
              align:'center',
              width : '100'
            }, {
                field : 'action',
                title : '操作',
                align:'center',
                width:'130',
                formatter : function(value, row, index) {
                    var str = '';
                    str += $.formatString('<a href="javascript:void(0)" class="customer-easyui-linkbutton-edit" data-options="plain:true,iconCls:\'glyphicon-pencil icon-blue\'" onclick="editCustomerFun(\'{0}\');" >编辑</a>', row.customerId);
                    str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
                    str += $.formatString('<a href="javascript:void(0)" class="customer-easyui-linkbutton-del" data-options="plain:true,iconCls:\'glyphicon-trash icon-red\'" onclick="deleteCustomerFun(\'{0}\');" >删除</a>', row.customerId);
                    return str;
                }
            } ] ],
            onLoadSuccess:function(data){
                $('.customer-easyui-linkbutton-edit').linkbutton({text:'编辑'});
                $('.customer-easyui-linkbutton-del').linkbutton({text:'删除'});
            },
            toolbar : '#cusToolbar'
        });
    });

    function editCustomerFun(id) {
        if (id != undefined) {
            customerTreeGrid.treegrid('select', id);
        }
        var node = customerTreeGrid.treegrid('getSelected');
        if (node) {
            parent.$.modalDialog({
                title : '编辑',
                width :600,
                height : 350,
                href : '${path }/customer/editPage?id=' + id,
                buttons : [ {
                    text : '编辑',
                    handler : function() {
                        parent.$.modalDialog.openner_treeGrid = customerTreeGrid;//因为添加成功之后，需要刷新这个treeGrid，所以先预定义好
                        var f = parent.$.modalDialog.handler.find('#customerEditForm');
                        f.submit();
                    }
                } ]
            });
        }
    }

    function deleteCustomerFun(id) {
        if (id != undefined) {
            customerTreeGrid.treegrid('select', id);
        }
        var node = customerTreeGrid.treegrid('getSelected');
        if (node) {
            parent.$.messager.confirm('询问', '您是否要删除当前资源？', function(b) {
                if (b) {
                    progressLoad();
                    $.post('${path }/customer/delete', {
                        id : id
                    }, function(result) {
                        if (result.success) {
                            parent.$.messager.alert('提示', result.msg, 'info');
                            customerTreeGrid.treegrid('reload');
                        }else{
                            parent.$.messager.alert('提示', result.msg, 'info');
                        }
                        progressClose();
                    }, 'JSON');
                }
            });
        }
    }

  /*  function addCustomerFun() {
        parent.$.modalDialog({
            title : '添加',
            width : 500,
            height : 300,
            href : '${path }/customer/addPage',
            buttons : [ {
                text : '添加',
                handler : function() {
                    parent.$.modalDialog.openner_treeGrid = customerTreeGrid;//因为添加成功之后，需要刷新这个treeGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.quaryByYear('#customerAddForm');
                    f.submit();
                }
            } ]
        });
    }*/
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'center',border:false"  style="overflow: hidden;">
        <table id="customerTreeGrid"></table>
    </div>
    <%--<div id="cusToolbar" style="display: none;">
            <a onclick="addCustomerFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'glyphicon-plus icon-green'">添加</a>
    </div>--%>
</div>
