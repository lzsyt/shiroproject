<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    $(function() {
        //下拉的方法
        $('#productTypeId').combotree({
            url : '${path }/productType/tree',
            parentField : 'parentId',
            panelHeight : 'auto'
        });

        //表单提交的方法
        $('#productAddForm').form({

            url : '${path }/video/save',
            onSubmit : function() {
                progressLoad();
                var isValid = $(this).form('validate');
                if (!isValid) {
                    progressClose();
                }
                return isValid;
            },
            success: function (result) {
                progressClose();
                result = $.parseJSON(result);
                if (result.success) {
                    parent.$.modalDialog.openner_dataGrid.datagrid('reload');//之所以能在这里调用到parent.$.modalDialog.openner_dataGrid这个对象，是因为product.jsp页面预定义好了
                    parent.$.modalDialog.handler.dialog('close');
                } else {
                    var form = $('#productEditForm');
                    parent.$.messager.alert('错误', eval(result.msg), 'error');
                }
            }

        });


    });

</script>
<script  src="${staticPath }/static/js/index.js"></script>
<style type="text/css">
    .tud input{
        height:40px;
    }
    .tud{
        width:130px;
    }
    #Imagetu{
        width:68px;
        margin:0 0 0 15px;
    }
    .ImgBox img{
        width:200px;
        margin: 50px 0 0 10px;
        text-align: center;
    }

       .file {
           position: relative;
           display: inline-block;
           background: #D0EEFF;
           border: 1px solid #99D3F5;
           border-radius: 4px;
           padding: 4px 12px;
           overflow: hidden;
           color: #1E88C7;
           text-decoration: none;
           text-indent: 0;
           line-height: 20px;
       }
       .file input {
           position: absolute;
           font-size: 100px;
           right: 0;
           top: 0;
           opacity: 0;
       }
       .file:hover {
           background: #AADFFD;
           border-color: #78C3F3;
           color: #004974;
           text-decoration: none;
       }


</style>

<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'center',border:false" title="" style="padding: 3px;">
        <form id="productAddForm" method="post" enctype="multipart/form-data">
            <div class="light-info" style="overflow: hidden;padding: 3px;">
            </div>
            <table class="grid">
                <tr>
                    <td>视频标题</td>
                    <td>
                        <input name="videoTitle" type="text" placeholder="请输入视频标题" class="easyui-validatebox"
                               data-options="required:true"></td>
                    <td>所属类别</td>
                    <td>
                        <select id="productTypeId" name="productType" style="width: 160px; height: 29px;"
                                class="easyui-validatebox"></select>
                    </td>
                    <td>上传视频</td>
                    <td class="tud" colspan="2">
                        <a href="javascript:;" class="file">选择文件
                            <input name="file" type="file" id="antzone" class="easyui-validatebox"
                                   accept="audio/mp4,video/mp4" onchange="upload(this.files);" multiple/>
                        </a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>