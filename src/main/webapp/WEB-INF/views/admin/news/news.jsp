<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    var newsTreeGrid;
    $(function() {
        newsTreeGrid = $('#newsTreeGrid').treegrid({
            url : '${path }/news/treeGrid',
            idField : 'newsId',
            striped : true,
            treeField : '',
            pagination : true,
            fit : true,
            fitColumns : false,
            border : false,
            pageSize : 30,
            pageList : [ 10, 20, 30, 40, 50, 100, 200, 300, 400, 500 ],
            rownumbers : true,
            frozenColumns : [ [
                {
                field : 'newsName',
                title : '新闻名称',
                align:'center',
                width : 120
            },{
                field : 'enNewsName',
                title : '新闻名称(英文)',
                align:'center',
                width : 180
            }, {
                field : 'newsDescription',
                title : '新闻描述',
                align:'center',
                width : 180
            }, {
                field : 'enNewsDescription',
                title : '新闻描述(英文)',
                align:'center',
                width : 120
            },  {
                field : 'newsContent',
                title : '新闻内容',
                width : '130',
                align:'center'
            },{
                field : 'enNewsContent',
                title : '新闻内容(英文)',
                width : '180',
                align:'center'
            }, {
                field : 'createTime',
                title : '创建时间',
                align:'center',
                width : '120'
            },{
                field : 'productType',
                title : '产品类型',
                align:'center',
                width : '120',
                formatter : function(value, row, index) {
                  switch (value) {
                    case 2:
                      return '光合硅能';
                    case 3:
                      return '太阳能板';
                    case 4:
                      return '风力发电机';
                    case 5:
                      return '控制器';
                  }
                }

              },{
                field : 'action',
                title : '操作',
                align:'center',
                width:'100',
                formatter : function(value, row, index) {
                    var str = '';
                    str += $.formatString('<a href="javascript:void(0)" class="role-easyui-linkbutton-edit" data-options="plain:true,iconCls:\'glyphicon-pencil icon-blue\'" onclick="editNewsFun(\'{0}\');" >编辑</a>', row.newsId);
                    str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
                    str += $.formatString('<a href="javascript:void(0)" class="news-easyui-linkbutton-del" data-options="plain:true,iconCls:\'glyphicon-trash icon-red\'" onclick="deleteNewsFun(\'{0}\');" >删除</a>', row.newsId);
                  return str;
                }
            } ] ],
            onLoadSuccess:function(data){
                $('.news-easyui-linkbutton-edit').linkbutton({text:'编辑'});
                $('.news-easyui-linkbutton-del').linkbutton({text:'删除'});
            },
            toolbar : '#newsToolbar'
        });
    });
     function editNewsFun(id) {
       console.log(id);
         if (id != undefined) {
           newsTreeGrid.treegrid('select', id);
         }
         var node = newsTreeGrid.treegrid('getSelected');
         if (node) {
             parent.$.modalDialog({
                 title : '编辑',
                 width : 1300,
                 height : 800,
                 href : '${path }/news/editPage?newsId=' + id,
                 buttons : [ {
                      text : '编辑',
                      handler : function() {
                          parent.$.modalDialog.openner_treeGrid = newsTreeGrid;//因为添加成功之后，需要刷新这个treeGrid，所以先预定义好
                          var f = parent.$.modalDialog.handler.find('#newsEditForm');
                          f.submit();
                      }
                  } ]
            });
        }
    }
   function deleteNewsFun(id) {
        if (id != undefined) {
            newsTreeGrid.treegrid('select', id);
        }
        var node = newsTreeGrid.treegrid('getSelected');
        if (node) {
            parent.$.messager.confirm('询问', '您是否要删除当前资源？', function(b) {
                if (b) {
                    progressLoad();
                    $.post('${path }/news/delete', {
                        id : id
                    }, function(result) {
                        if (result.success) {
                            parent.$.messager.alert('提示', result.msg, 'info');
                            newsTreeGrid.treegrid('reload');
                        }else{
                            parent.$.messager.alert('提示', result.msg, 'info');
                        }
                        progressClose();
                    }, 'JSON');
                }
            });
        }
    }
     function addNewsFun() {
          parent.$.modalDialog({
              title : '添加',
              width : 1300,
              height : 800,
              href : '${path }/news/addPage',
            buttons : [ {
                text : '添加',
                handler : function() {
                    parent.$.modalDialog.openner_treeGrid = newsTreeGrid;//因为添加成功之后，需要刷新这个treeGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.find('#newsAddForm');
                    f.submit();
                }
            } ]
        });
    }

</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'center',border:false"  style="overflow: hidden;">
        <table id="newsTreeGrid"></table>
    </div>
    <div id="newsToolbar" style="display: none;">
            <a onclick="addNewsFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'glyphicon-plus icon-green'">添加</a>
    </div>
</div>
