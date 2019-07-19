<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    var productTypeTreeGrid;
    $(function() {
        //界面显示的方法
        productTypeTreeGrid = $('#productTypeTreeGrid').treegrid({
            url : '${path }/productType/treeGrid',
            idField : 'id',
            treeField : 'productType',
            parentField : 'parentId',
            fit : true,
            fitColumns : false,
            border : false,
            frozenColumns : [ [ {
                title : '产品编号',
                field : 'id',
                align:'center',
                width : 180
            } ] ],
            columns : [ [ {
                field : 'productType',
                title : '产品名称',
                align:'center',
                width : 180
            }, {
                field : 'parentId',
                title : '父id',
                width : 180,
                hidden:true
            },
                {
                field : 'action',
                title : '操作',
                align:'center',
                width : 130,
                formatter : function(value, row, index) {
                    var str = '';
                            str += $.formatString('<a href="javascript:void(0)" class="productType-easyui-linkbutton-edit" data-options="plain:true,iconCls:\'glyphicon-pencil icon-blue\'" onclick="editProductTypeFun(\'{0}\');" >编辑</a>', row.id);
                            str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
                            str += $.formatString('<a href="javascript:void(0)" class="productType-easyui-linkbutton-del" data-options="plain:true,iconCls:\'glyphicon-trash icon-red\'" onclick="deleteProductTypeFun(\'{0}\');" >删除</a>', row.id);

                    return str;
                }
            } ] ],
            onLoadSuccess:function(data){
                $('.productType-easyui-linkbutton-edit').linkbutton({text:'编辑'});
                $('.productType-easyui-linkbutton-del').linkbutton({text:'删除'});
            },
            toolbar : '#productTypeToolbar'
        });
    });
    //編輯方法
    function editProductTypeFun(id) {
        if (id != undefined) {
            productTypeTreeGrid.treegrid('select', id);
        }
        var node = productTypeTreeGrid.treegrid('getSelected');
        if (node) {
            parent.$.modalDialog({
                title : '编辑',
                width : 500,
                height : 300,
                href : '${path }/productType/editPage?id=' + node.id,
                buttons : [ {
                    text : '编辑',
                    handler : function() {
                        parent.$.modalDialog.openner_treeGrid = productTypeTreeGrid;//因为添加成功之后，需要刷新这个treeGrid，所以先预定义好
                        var f = parent.$.modalDialog.handler.find('#productTypeEditForm');
                        f.submit();
                    }
                } ]
            });
        }
    }
    //刪除方法
    function deleteProductTypeFun(id) {
        if (id != undefined) {
            productTypeTreeGrid.treegrid('select', id);
        }
        var node = productTypeTreeGrid.treegrid('getSelected');
        if (node) {
            parent.$.messager.confirm('询问', '您是否要删除当前资源？删除当前资源会连同子资源一起删除!', function(b) {
                if (b) {
                    progressLoad();
                    $.post('${path }/productType/delete', {
                        id : node.id
                    }, function(result) {
                        if (result.success) {
                            parent.$.messager.alert('提示', result.msg, 'info');
                            productTypeTreeGrid.treegrid('reload');
                        }else{
                            parent.$.messager.alert('提示', result.msg, 'info');
                        }
                        progressClose();
                    }, 'JSON');
                }
            });
        }
    }
    //添加方法
    function addProductTypeFun() {
        parent.$.modalDialog({
            title : '添加',
            width : 500,
            height : 300,
            href : '${path }/productType/addPage',
            buttons : [ {
                text : '添加',
                handler : function() {
                    parent.$.modalDialog.openner_treeGrid = productTypeTreeGrid;//因为添加成功之后，需要刷新这个treeGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.find('#productTypeAddForm');
                    f.submit();
                }
            } ]
        });
    }
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'center',border:false"  style="overflow: hidden;">
        <table id="productTypeTreeGrid"></table>
    </div>
    <div id="productTypeToolbar" style="display: none;">

            <a onclick="addProductTypeFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'glyphicon-plus icon-green'">添加</a>

    </div>
</div>