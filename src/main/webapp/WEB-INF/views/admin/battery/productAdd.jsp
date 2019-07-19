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

        $('#productEditId').combotree({
            url : '${path }/imageType/tree',
            parentField : 'parentId',
            panelHeight : 'auto'
        });

        //表单提交的方法
        $('#productAddForm').form({
            url : '${path }/product/add',
            onSubmit : function() {
                progressLoad();
                var isValid = $(this).form('validate');
                if (!isValid) {
                    progressClose();
                }
                return isValid;
            },
            success : function(result) {
                progressClose();
                result = $.parseJSON(result);
                if (result.success) {
                    parent.$.modalDialog.openner_dataGrid.datagrid('reload');//之所以能在这里调用到parent.$.modalDialog.openner_dataGrid这个对象，是因为product.jsp页面预定义好了
                    parent.$.modalDialog.handler.dialog('close');
                } else {
                    var form = $('#productAddForm');
                    parent.$.messager.alert('提示', eval(result.msg), 'warning');
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
        <form id="productAddForm" method="post"  enctype="multipart/form-data">
            <table class="grid">

                <tr>
                    <td>产品名称</td>
                    <td>
                        <input name="productName" type="text" placeholder="请输入产品名称" class="easyui-validatebox" data-options="required:true"  >
                    </td>
                    <td>产品编号</td>
                    <td>
                        <input name="productNum" type="text" placeholder="产品编号决定排序" class="easyui-validatebox" data-options="required:true"  >
                    </td>
                    <td>价格</td>
                    <td>
                        <input name="price" type="text" placeholder="请输入价格" class="easyui-validatebox"   onchange="CheckPrice(this);">
                    </td>
                </tr>
                <tr>
                    <td>简介</td>
                    <td>
                        <textarea rows="5" cols="50" name="productDescription"></textarea>
                    </td>
                    <td>描述</td>
                    <td>
                        <textarea rows="5" cols="50" name="productSynopsis"></textarea>
                    </td>
                </tr>
                <tr>
                </tr>
                <tr>
                    <td>产品类别</td>
                    <td>
                        <select id="productTypeId" name="productType" data-options="required:true" style="width: 140px; height: 29px;"  class="easyui-validatebox"></select>
                    </td>
                </tr>
            </table>
            <table class="grid">
               <tr>
                    <td id="Imagetu">主图</td>
                    <td  id="imgs">
                        <div id="ImgBox" class="ImgBox">

                        </div>
                    </td>

                    <td class="tud" colspan="2">
                        <a href="javascript:;" class="file">选择文件
                             <input name="mainFile" type="file"   id="antzone" class="easyui-validatebox"  accept="image/gif,image/jpeg,image/jpg,image/png"  onchange="upload(this.files);" multiple/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>幻灯片</td>
                    <td >
                        <div class="ImgBox" id="ImgBoxs">

                        </div>
                    </td>
                    <td class="tud"  colspan="2">
                        <a href="javascript:;" class="file">选择文件
                           <input name="slideFile" type="file"   id="antzones"  class="easyui-validatebox"  accept="image/gif,image/jpeg,image/jpg,image/png" onchange="uploads(this.files);" multiple>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>参数图</td>
                    <td >
                        <div class="ImgBox" id="ImgBoxss">

                        </div>
                    </td>
                    <td class="tud"  colspan="2">
                        <a href="javascript:;" class="file">选择文件
                            <input name="paramFile" type="file"   id="antzoness" class="easyui-validatebox" accept="image/gif,image/jpeg,image/jpg,image/png"  onchange="uploadss(this.files);" multiple>
                        </a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>