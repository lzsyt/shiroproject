<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    var productDataGrid;
    var productTree;

    $(function() {
        //左侧产品类别列表
        productTree = $('#productTree').tree({
            url : '${path }/productType/tree',
            parentField : 'parentId',
            onClick : function(node) {
                console.log("nodeId:"+node.id);
                productDataGrid.datagrid('load', {
                    productType: node.id
                });
            }
        });
        //界面显示的方法
        productDataGrid = $('#productDataGrid').datagrid({
            url : '${path }/product/dataGrid',
            fit : true,
            striped : true,
            pagination : true,
            singleSelect : true,
            idField : 'productId',
            pageSize : 20,
            pageList : [ 10, 20, 30, 40, 50, 100, 200, 300, 400, 500 ],
            columns : [ [ {
                width : '80',
                title : '产品编号',
                field : 'productId',
                align:'center',
                sortable : true
            }, {
                width : '180',
                title : '产品名称',
                field : 'productName',
                align:'center',
                sortable : true
            },{
                width : '80',
                title : '产品编号',
                align:'center',
                field : 'productNum',
                sortable : true
            },{
                width : '80',
                title : '创建人',
                align:'center',
                field : 'creater',
            },{
                width : '130',
                title : '简介',
                align:'center',
                field : 'productSynopsis'
            },  {
                width : '130',
                title : '描述',
                align:'center',
                field : 'productDescription'
            }, {
                width : '100',
                title : '所属产品',
                align :'center',
                field : 'productTypeName',
                sortable : true
            }, {
                field : 'action',
                title : '操作',
                align:'center',
                width : 130,
                formatter : function(value, row, index) {
                    var str = '';

                            str += $.formatString('<a href="javascript:void(0)" class="product-easyui-linkbutton-edit" data-options="plain:true,iconCls:\'glyphicon-pencil icon-blue\'" onclick="editProductFun(\'{0}\');" >编辑</a>', row.productId);

                            str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
                            str += $.formatString('<a href="javascript:void(0)" class="product-easyui-linkbutton-del" data-options="plain:true,iconCls:\'glyphicon-trash icon-red\'" onclick="deleteProductFun(\'{0}\');" >删除</a>', row.productId);

                    return str;
                }
            }] ],
            onLoadSuccess:function(data){
                $('.product-easyui-linkbutton-edit').linkbutton({text:'编辑'});
                $('.product-easyui-linkbutton-del').linkbutton({text:'删除'});
            },
            toolbar : '#productToolbar'
        });
    });
    //添加的方法
    function addProductFun() {
        parent.$.modalDialog({
            title : '添加',
            width : 1000,
            height :500,
            href : '${path }/product/addPage',
            buttons : [ {
                text : '添加',
                handler : function() {
                    parent.$.modalDialog.openner_dataGrid = productDataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.find('#productAddForm');
                    f.submit();
                }
            } ]
        });
    }
    //删除的方法
    function deleteProductFun(productId) {
        console.log("id="+productId);
        if (productId == undefined) {//点击右键菜单才会触发这个
            var rows = productDataGrid.datagrid('getSelection');
            productId = rows.productId;

            alert(productId);
        } else {//点击操作里面的删除图标会触发这个
            productDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        parent.$.messager.confirm('询问', '您是否要删除当前用户？', function(b) {
            if (b) {
                progressLoad();
                $.post('${path }/product/delete', {
                    productId : productId
                }, function(result) {
                    if (result.success) {
                        parent.$.messager.alert('提示', result.msg, 'info');
                        productDataGrid.datagrid('reload');
                    } else {
                        parent.$.messager.alert('错误', result.msg, 'error');
                    }
                    progressClose();
                }, 'JSON');
            }
        });
    }
    //编辑的方法
    function editProductFun(productId) {
        if (productId == undefined) {
            var rows = productDataGrid.datagrid('getSelection');
            productId = rows.productId;
        } else {
            productDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        parent.$.modalDialog({
            title : '编辑',
            width : 1000,
            height : 500,
            href : '${path }/product/editPage?productId=' + productId,
            buttons : [ {
                text : '确定',
                handler : function() {
                    parent.$.modalDialog.openner_dataGrid = productDataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.find('#productEditForm');
                    f.submit();
                }
            } ]
        });
    }
    //头部查询
    function searchProductFun() {
        productDataGrid.datagrid('load', $.serializeObject($('#searchProductForm')));
    }
    //清空时间文本框的内容
    function cleanProductFun() {
        $('#searchProductForm input').val('');
        productDataGrid.datagrid('load', {});
    }
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'north',border:false" style="height: 30px; overflow: hidden;background-color: #fff">
        <form id="searchProductForm">
            <table>
                <tr>
                    <th>产品名称:</th>
                    <td><input name="productName" placeholder="请输入产品名称"/></td>
                    <th>所属产品:</th>
                    <td><input name="productTypeName"  placeholder="请输入所属产品"></td>
                    <th>创建人:</th>
                    <td><input name="creater"  placeholder="请输入创建人"></td>
                    <td>
                        <a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'glyphicon-search',plain:true" onclick="searchProductFun();">查询</a>
                        <a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'glyphicon-remove-circle',plain:true" onclick="cleanProductFun();">清空</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div data-options="region:'center',border:true,title:'产品列表'" >
        <table id="productDataGrid" data-options="fit:true,border:false"></table>
    </div>
    <div data-options="region:'west',border:true,split:false,title:'产品类别'"  style="width:150px;overflow: hidden; ">
        <ul id="productTree" style="width:160px;margin: 10px 10px 10px 10px"></ul>
    </div>
</div>
<div id="productToolbar" style="display: none;">

        <a onclick="addProductFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'glyphicon-plus icon-green'">添加</a>

</div>