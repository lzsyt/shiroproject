<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    var videoDataGrid;
    var productTree;

    $(function() {
        //界面显示的方法
        videoDataGrid = $('#videoDataGrid').datagrid({
            type: 'post',
            url : '${path }/video/show',
            fit : true,
            striped : true,
            pagination : true,
            singleSelect : true,
            idField : 'productId',
            pageSize : 20,
            pageList : [ 10, 20, 30, 40, 50, 100, 200, 300, 400, 500 ],
            columns : [ [ {
                width : '180',
                title : '视频编号',
                field : 'videoId',
                align:'center',
                sortable : true
            }, {
                width : '180',
                title : '视频标题',
                field : 'videoTitle',
                align:'center',
                sortable : true
            },{
                width : '180',
                title:'视频名称',
                align: 'center',
                field: 'videoName',
            },{
                width : '180',
                title : '商品类别',
                align:'center',
                field : 'productType'
            },{
                width : '180',
                title : '创建人',
                align:'center',
                field : 'userName',
            }, {
                width : '350',
                field : 'action',
                title : '操作',
                align:'center',
                width : 130,
                formatter : function(value, row, index) {
                    var str = '';

                    str += $.formatString('<a href="javascript:void(0)" class="product-easyui-linkbutton-edit" data-options="plain:true,iconCls:\'glyphicon-pencil icon-blue\'" onclick="editProductFun(\'{0}\');" >编辑</a>', row.videoId);

                    str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
                    str += $.formatString('<a href="javascript:void(0)" class="product-easyui-linkbutton-del" data-options="plain:true,iconCls:\'glyphicon-trash icon-red\'" onclick="deleteProductFun(\'{0}\');" >删除</a>', row.videoId);

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
            href : '${path }/video/addPage',
            buttons : [ {
                text : '添加',
                handler : function() {
                    parent.$.modalDialog.openner_dataGrid = videoDataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.find('#productAddForm');
                    f.submit();
                }
            } ]
        });
    }
    //删除的方法
    function deleteProductFun(videoId) {
        console.log("id="+videoId);
        if (videoId == undefined) {//点击右键菜单才会触发这个
            var rows = videoDataGrid.datagrid('getSelection');
            videoId = rows.videoId;
        } else {//点击操作里面的删除图标会触发这个
            videoDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        parent.$.messager.confirm('询问', '您是否要删除当前视频？', function(b) {
            if (b) {
                progressLoad();
                $.post('${path }/video/delete', {
                    videoId : videoId
                }, function(result) {
                    if (result.success) {
                        parent.$.messager.alert('提示', result.msg, 'info');
                        videoDataGrid.datagrid('reload');
                    } else {
                        parent.$.messager.alert('错误', result.msg, 'error');
                    }
                    progressClose();
                }, 'JSON');
            }
        });
    }
    //编辑的方法
    function editProductFun(videoId) {
        if (videoId == undefined) {
            var rows = videoDataGrid.datagrid('getSelection');
            videoId = rows.videoId;
        } else {
            videoDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        parent.$.modalDialog({
            title : '编辑',
            width : 1000,
            height : 500,
            href : '${path }/video/editPage?videoId=' + videoId,
            buttons : [ {
                text : '确定',
                handler : function() {
                    parent.$.modalDialog.openner_dataGrid = videoDataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.find('#productEditForm');
                    f.submit();
                }
            } ]
        });
    }
    //头部查询
    function searchProductFun() {
        videoDataGrid.datagrid('load', $.serializeObject($('#searchProductForm')));
    }
    //清空时间文本框的内容
    function cleanProductFun() {
        $('#searchProductForm input').val('');
        videoDataGrid.datagrid('load', {});
    }
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'north',border:false" style="height: 30px; overflow: hidden;background-color: #fff">
        <form id="searchProductForm">
            <table>
                <tr>
                    <th>视频标题:</th>
                    <td><input name="videoTitle" placeholder="请输入视频标题"/></td>
                    <th>所属产品:</th>
                    <td><input name="productType"  placeholder="请输入视频类别"></td>
                    <th>创建人:</th>
                    <td><input name="userName"  placeholder="请输入创建人"></td>
                    <td>
                        <a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'glyphicon-search',plain:true" onclick="searchProductFun();">查询</a>
                        <a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'glyphicon-remove-circle',plain:true" onclick="cleanProductFun();">清空</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div data-options="region:'center',border:true,title:'视频列表'" >
        <table id="videoDataGrid" data-options="fit:true,border:false"></table>
    </div>
</div>
<div id="productToolbar" style="display: none;">

    <a onclick="addProductFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'glyphicon-plus icon-green'">添加</a>

</div>