<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    var imageDataGrid;
    var imageTree;

    $(function() {
        //所属归类列表
        imageTree = $('#imageTree').tree({
            url : '${path }/imageType/tree',
            parentField : 'parentId',
            onClick : function(node) {
                imageDataGrid.datagrid('load', {
                    imageType: node.id
                });
            }
        });


         $('#productType').combobox({
            url : '${path }/productType/productTypeList',
            textField: 'productType',
            valueField: 'id',
            panelHeight: 'auto',
            onLoadSuccess: function () {
                $('#productType').combobox('setValue', 0);
            }
        });

        //界面顯示的方法
        imageDataGrid = $('#imageDataGrid').datagrid({
            url : '${path }/image/dataGrid',
            fit : true,
            striped : true,
            rownumbers : true,
            pagination : true,
            singleSelect : true,
            idField : 'imageId',
            pageSize : 20,
            pageList : [ 10, 20, 30, 40, 50, 100, 200, 300, 400, 500 ],
            columns : [ [ {
                width : '80',
                title : '图片编号',
                field : 'imageId',
                align:'center',
            }, {
                width : '180',
                title : '图片路径名称',
                align:'center',
                field : 'fileName',
                formatter:function (value,row,index) {
                    return '<img  width="120px" height="60px" src="${pageContext.request.contextPath}/static'+row.imagePath+''+row.fileName+'"/>'
                }
            },{
                width : '120',
                title : '图片路径',
                align:'center',
                field : 'imagePath',
            },{
                width : '80',
                title : '图片类型',
                align:'center',
                field : 'typeName',
                sortable : true
            }
            ,{
                width : '80',
                title : '图片标题',
                align:'center',
                field : 'imageTitle',
                sortable : true
            },{
                width : '180',
                title : '概要',
                align:'center',
                field : 'imageDescription'
            },  {
                width : '180',
                title : '产品类型',
                align:'center',
                field : 'productType'
            },{
                width : '100',
                title : '产品名称',
                align:'center',
                field : 'productName',
                sortable : true
            }, {
                width : '60',
                title : '修改时间',
                align:'center',
                width:'140',
                field : 'updateTime',
                sortable : true
            }, {
                field : 'action',
                title : '操作',
                align:'center',
                width : '130',
                formatter : function(value, row, index) {
                    var str = '';

                            str += $.formatString('<a href="javascript:void(0)" class="image-easyui-linkbutton-edit" data-options="plain:true,iconCls:\'glyphicon-pencil icon-blue\'" onclick="editImageFun(\'{0}\');" >编辑</a>', row.imageId);

                            str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
                            str += $.formatString('<a href="javascript:void(0)" class="image-easyui-linkbutton-del" data-options="plain:true,iconCls:\'glyphicon-trash icon-red\'" onclick="deleteImageFun(\'{0}\');" >删除</a>', row.imageId);

                    return str;
                }
            }] ],
            onLoadSuccess:function(data){
                $('.image-easyui-linkbutton-edit').linkbutton({text:'编辑'});
                $('.image-easyui-linkbutton-del').linkbutton({text:'删除'});
            },
            toolbar : '#imageToolbar'
        });
    });
    //添加的方法
    function addImageFun() {
        parent.$.modalDialog({
            title : '添加',
            width : 1032,
            height : 400,
            href : '${path }/image/addPage',
            buttons : [ {
                text : '添加',
                handler : function() {
                    parent.$.modalDialog.openner_dataGrid = imageDataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.find('#ImageAddForm');
                    f.submit();
                }
            } ]
        });
    }
    //刪除的方法
    function deleteImageFun(imageId) {

        if (imageId == undefined) {//点击右键菜单才会触发这个
            var rows = imageDataGrid.datagrid('getSelection');
            imageId = rows.imageId;

        } else {//点击操作里面的删除图标会触发这个
            console.log("imageId"+imageId);
            imageDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        parent.$.messager.confirm('询问', '您是否要删除？', function(b) {
            if (b) {
                progressLoad();
                $.post('${path }/image/delete', {
                    imageId : imageId
                }, function(result) {
                    if (result.success) {
                        parent.$.messager.alert('提示', result.msg, 'info');
                        imageDataGrid.datagrid('reload');
                    } else {
                        parent.$.messager.alert('错误', result.msg, 'error');
                    }
                    progressClose();
                }, 'JSON');
            }
        });
    }
    //編輯的方法
    function editImageFun(imageId) {

        if (imageId == undefined) {
            var rows = imageDataGrid.datagrid('getSelection');
            imageId = rows.imageId;

        } else {
            imageDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        parent.$.modalDialog({
            title : '编辑',
            width : 1032,
            height : 400,
            href : '${path }/image/editPage?imageId=' + imageId,
            buttons : [ {
                text : '确定',
                handler : function() {
                    parent.$.modalDialog.openner_dataGrid = imageDataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.find('#imageEditForm');
                    f.submit();
                }
            } ]
        });
    }
    //头部查询
    function searchFormFun() {
        imageDataGrid.datagrid('load', $.serializeObject($('#searchImageForm')));
    }
    //清空时间文本框的内容
    function cleanFromFun() {
        $('#searchImageForm input').val('');
        imageDataGrid.datagrid('load', {});
    }

</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'north',border:false" style="height: 30px; overflow: hidden;background-color: #fff">
        <form id="searchImageForm">
            <table>
                <tr>
                    <th>产品类型:</th>
                    <td>
                    <input id="productType" name="productTypeId"/>
                    </td>
                    <th>图片标题:</th>
                    <td><input name="imageTitle"  placeholder="请输入图片标题"></td>
                    <th>产品名称:</th>
                    <td><input name="productName"  placeholder="请输入所属种类"></td>
                    <th>修改时间:</th>
                    <td>
                        <input class="Wdate" name="createdateStart" placeholder="点击选择时间" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})" readonly="readonly" />至
                        <input class="Wdate" name="createdateEnd" placeholder="点击选择时间" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})" readonly="readonly" />
                        <a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'glyphicon-search',plain:true" onclick="searchFormFun();">查询</a>
                        <a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'glyphicon-remove-circle',plain:true" onclick="cleanFromFun();">清空</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div data-options="region:'center',border:true,title:'图片列表'" >
        <table id="imageDataGrid" data-options="fit:true,border:false"></table>
    </div>
    <div data-options="region:'west',border:true,split:false,title:'所属归类'"  style="width:150px;overflow: hidden; ">
        <ul id="imageTree" style="width:160px;margin: 10px 10px 10px 10px"></ul>
    </div>
</div>
<div id="imageToolbar" style="display: none;">

        <a onclick="addImageFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'glyphicon-plus icon-green'">添加</a>

</div>