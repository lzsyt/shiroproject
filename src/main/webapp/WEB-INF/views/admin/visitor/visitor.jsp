<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    var userDataGrid;
    var organizationTree;

    $(function() {
      //访客列表
        userDataGrid = $('#userDataGrid').datagrid({
            url : '${path }/visitor/dataGrid',
            fit : true,
            striped : true,
            rownumbers : true,
            pagination : true,
            singleSelect : true,
            idField : 'id',
            sortName : 'createTime',
	        sortOrder : 'asc',
            pageSize : 20,
            pageList : [ 10, 20, 30, 40, 50, 100, 200, 300, 400, 500 ],
            columns : [ [ {
                width : '120',
                title : '访问时间',
                align:'center',
                field : 'visitor_time',
                sortable : true
            }, {
                width : '80',
                title : '访问方式',
                align:'center',
                field : 'visitor_type',
                sortable : true,
                formatter : function(value, row, index) {
                    switch (value) {
                        case 1:
                            return '手机';
                        case 2:
                            return '电脑';
                    }
                }
            },{
                width : '120',
                title : '被访问页面',
                align:'center',
                field : 'visitor_pageName',

                formatter: function(value,row,index){
                    return '<a style="color:blue" href="${staticPath}/customer/index?target='+row.visitor_page+'">'+row.visitor_pageName+'</a>';
                }
            },{
                width : '100',
                title : '访客位置',
                align:'center',
                field : 'visitor_addr'
            },{
                width : '130',
                title : 'IP',
                align:'center',
                field : 'ip',
                sortable : true
            }

             ] ],
            onLoadSuccess:function(data){
                $('.user-easyui-linkbutton-edit').linkbutton({text:'编辑'});
                $('.user-easyui-linkbutton-del').linkbutton({text:'删除'});
            },
            toolbar : '#userToolbar'
        });
    });




    function searchUserFun() {
        userDataGrid.datagrid('load', $.serializeObject($('#searchUserForm')));
    }
    function cleanUserFun() {
        $('#searchUserForm input').val('');
        userDataGrid.datagrid('load', {});
    }
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'north',border:false" style="height: 30px; overflow: hidden;background-color: #fff">
        <form id="searchUserForm">
            <table>
                <tr>
                    <th>&nbsp;&nbsp;&nbsp;&nbsp;请选择您要查询的网站:&nbsp;&nbsp;</th>
                    <td>
                        <select name="pagename">
                            <option value=""></option>
                            <option value="光合硅能">光合硅能</option>
                            <option value="控制器">控制器</option>
                            <option value="风机">风机</option>
                            <option value="太阳能板">太阳能板</option>
                            <option value="手机">光合硅能手机</option>
                        </select>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0);" class="easyui-linkbutton"
                                                   data-options="iconCls:'glyphicon-search',plain:true"
                                                   onclick="searchUserFun();">查询&nbsp;&nbsp;</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0);" class="easyui-linkbutton"
                                                   data-options="iconCls:'glyphicon-remove-circle',plain:true"
                                                   onclick="cleanUserFun();">清空&nbsp;&nbsp;</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div data-options="region:'center',border:true,title:'访客列表'">
        <table id="userDataGrid" data-options="fit:true,border:false"></table>
    </div>

</div>
