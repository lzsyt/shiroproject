<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    var imageTypeTreeGrid;
    $(function() {
        //界面显示的方法
        imageTypeTreeGrid = $('#imageTypeTreeGrid').treegrid({
            url : '${path }/imageType/treeGrid',
            idField : 'id',
            treeField : 'typeName',
            parentField : 'parentId',
            fit : true,
            fitColumns : false,
            border : false,
            frozenColumns : [ [ {
                title : '图片编号',
                field : 'id',
                align:'center',
                width : 180
            } ] ],
            columns : [ [ {
                field : 'typeName',
                title : '图片名称',
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

                        str += $.formatString('<a href="javascript:void(0)" class="imageType-easyui-linkbutton-edit" data-options="plain:true,iconCls:\'glyphicon-pencil icon-blue\'" onclick="editImageTypeFun(\'{0}\');" >编辑</a>', row.id);


                        str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
                        str += $.formatString('<a href="javascript:void(0)" class="imageType-easyui-linkbutton-del" data-options="plain:true,iconCls:\'glyphicon-trash icon-red\'" onclick="deleteImageTypeFun(\'{0}\');" >删除</a>', row.id);

                        return str;
                    }
                } ] ],
            onLoadSuccess:function(data){
                $('.imageType-easyui-linkbutton-edit').linkbutton({text:'编辑'});
                $('.imageType-easyui-linkbutton-del').linkbutton({text:'删除'});
            },
            toolbar : '#imageTypeToolbar'
        });
    });
    //編輯的方法
    function editImageTypeFun(id) {
        if (id != undefined) {
            imageTypeTreeGrid.treegrid('select', id);
        }
        var node = imageTypeTreeGrid.treegrid('getSelected');
        if (node) {
            parent.$.modalDialog({
                title : '编辑',
                width : 500,
                height : 300,
                href : '${path }/imageType/editPage?id=' + node.id,
                buttons : [ {
                    text : '编辑',
                    handler : function() {
                        parent.$.modalDialog.openner_treeGrid = imageTypeTreeGrid;//因为添加成功之后，需要刷新这个treeGrid，所以先预定义好
                        var f = parent.$.modalDialog.handler.find('#ImageTypeEditForm');
                        f.submit();
                    }
                } ]
            });
        }
    }
    //刪除的方法
    function deleteImageTypeFun(id) {
        if (id != undefined) {
            imageTypeTreeGrid.treegrid('select', id);
        }
        var node = imageTypeTreeGrid.treegrid('getSelected');
        if (node) {
            parent.$.messager.confirm('询问', '您是否要删除当前资源？删除当前资源会连同子资源一起删除!', function(b) {
                if (b) {
                    progressLoad();
                    $.post('${path }/imageType/delete', {
                        id : node.id
                    }, function(result) {
                        if (result.success) {
                            parent.$.messager.alert('提示', result.msg, 'info');
                            imageTypeTreeGrid.treegrid('reload');
                        }else{
                            parent.$.messager.alert('提示', result.msg, 'info');
                        }
                        progressClose();
                    }, 'JSON');
                }
            });
        }
    }
   //添加的方法
    function addImageTypeFun() {
        parent.$.modalDialog({
            title : '添加',
            width : 500,
            height : 300,
            href : '${path }/imageType/addPage',
            buttons : [ {
                text : '添加',
                handler : function() {
                    parent.$.modalDialog.openner_treeGrid = imageTypeTreeGrid;//因为添加成功之后，需要刷新这个treeGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.find('#ImageTypeAdd');
                    f.submit();
                }
            } ]
        });
    }
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'center',border:false"  style="overflow: hidden;">
        <table id="imageTypeTreeGrid"></table>
    </div>
    <div id="imageTypeToolbar" style="display: none;">
        <shiro:hasPermission name="/organization/add">
            <a onclick="addImageTypeFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'glyphicon-plus icon-green'">添加</a>
        </shiro:hasPermission>
    </div>
</div>