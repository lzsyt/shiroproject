<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    $(function() {
        //下拉的方法
       $('#productEditId').combotree({
            url : '${path }/imageType/tree',
            parentField : 'parentId',
            panelHeight : 'auto'
        });
        //下拉的方法
        $('#productTypeId').combotree({
            url : '${path }/productType/tree',
            parentField : 'parentId',
            panelHeight :"auto",
            value : '${image.productType}',
            onSelect:function(rec){
                $("#ImageProductId").combobox('clear');
                $("#ImageProductId").combobox('reload', '${path }/product/selectProductId?type=' + rec.id);
            },

        });

        $('#ImageProductId').combobox({
            url : '${path }/product/selectProductId',
            textField: 'productName',
            valueField: 'productId',
            panelHeight:  "auto"

        });

        //表单提交的方法
        $('#ImageAddForm').form({
            url : '${path }/image/add',
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
                    parent.$.modalDialog.openner_dataGrid.datagrid('reload');//之所以能在这里调用到parent.$.modalDialog.openner_dataGrid这个对象，是因为image.jsp页面预定义好了
                    parent.$.modalDialog.handler.dialog('close');
                } else {
                    var form = $('#ImageAddForm');
                    parent.$.messager.alert('提示', eval(result.msg), 'warning');
                }
            }
        });
    });
</script>
<script type="text/javascript">
    var fileBox = document.getElementById("antzone");
    var en_fileBox = document.getElementById("en_antzone");
    var ImgBox = document.getElementById("ImgBox");
    var en_ImgBox = document.getElementById("en_ImgBox");
    fileBox.addEventListener("change",function(){
        var files_array = this.files;
        if(files_array[0].type.match(/image/)){
            read_image_file(files_array[0]);
        }
    },false);
    en_fileBox.addEventListener("change",function(){
        var files_array = this.files;
        if(files_array[0].type.match(/image/)){
            en_read_image_file(files_array[0]);
        }
    },false);

    function read_image_file(file){
        var reader = new FileReader();
        reader.onload = function(e){
            var image_contents = e.target.result;
            var img = document.createElement("img");
            img.src = image_contents;
            ImgBox.innerHTML="";
            ImgBox.appendChild(img);
        };
        reader.readAsDataURL(file);
    }
    function en_read_image_file(file){
        var reader = new FileReader();
        reader.onload = function(e){
            var image_contents = e.target.result;
            var img = document.createElement("img");
            img.src = image_contents;
            en_ImgBox.innerHTML="";
            en_ImgBox.appendChild(img);
        };
        reader.readAsDataURL(file);
    }
    //上传图片格式的控制
    function CheckFile(obj) {
        var array = new Array('gif', 'jpeg', 'png', 'jpg');  //可以上传的文件类型

        if (obj.value == '') {
            alert("请选择");
            return false;
        }
        else {
            var fileName = obj.value.substr(obj.value.lastIndexOf("\\") + 1);
            var re = /[\u0391-\uFFE5]+/g;
            if (fileName.match(re) != null) {
                obj.value = null;
                alert("文件名不能包含汉字！");
                obj.select();
                document.selection.clear();
                return false;
            }

                var fileContentType = obj.value.match(/^(.*)(\.)(.{1,8})$/)[3];
                var isExists = false;
                for (var i in array) {
                       if (fileContentType.toLowerCase() == array[i].toLowerCase())
                         {
                             isExists = true; return true;
                         }
                }
                if (isExists == false)
                {
                    obj.value = null;
                    alert("上传图片类型不正确!");
                    obj.select(); document.selection.clear(); return false;
                }
                return false;
        }
    }



</script>
<style type="text/css">
    .ImgBox{
        width:300px;
        height:170px;
    }
    .ImgBox img{
        width:350px;
        height:170px;
    }
    #tud{
        height:70px;
    }
    #antzone{
        width:170px;
        height:40px;
    }
    #en_antzone{
        width:170px;
        height:40px;
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
        <form id="ImageAddForm" method="post" enctype="multipart/form-data">
            <table class="grid">
                <tr>
                    <td  colspan="2">
                        <div id="ImgBox" class="ImgBox" style="overflow: hidden"></div>
                    </td>

                    <td id="tud" colspan="2">
                        <a href="javascript:;" class="file">选择文件
                          <input name="file" type="file" id="antzone" class="easyui-validatebox" accept="image/gif,image/jpeg,image/jpg,image/png"  data-options="required:true" onchange="CheckFile(this);"/>
                        </a>
                    </td>
                    <td  colspan="2">
                        <div id="en_ImgBox" class="ImgBox" style="overflow: hidden"></div>
                    </td>

                    <td id="en_tud" colspan="2">
                        <a href="javascript:;" class="file">选择文件(英文页面)
                            <input name="file" type="file" id="en_antzone" class="easyui-validatebox" accept="image/gif,image/jpeg,image/jpg,image/png"   onchange="CheckFile(this);"/>
                        </a>
                    </td>
                </tr>

                <tr>
                    <td>图片标题</td>
                    <td><input name="imageTitle" type="text"  id="imageTitles" class="easyui-validatebox" data-options="required:true"/></td>

                    <td>概要</td>
                    <td>
                        <input name="imageDescription"  id="Descript" type="text"  class="easyui-validatebox" />
                    </td>

                    <td>图片标题（英文）</td>
                    <td><input name="en_imageTitle" type="text"  id="en_imageTitles" class="easyui-validatebox" /></td>

                </tr>
                <tr>
                    <td>图片类型</td>
                    <td>
                        <input class="easyui-comboboxtree" panelHeight="auto"  id="productEditId" name="imageType"   data-options="required:true"  />

                    </td>
                    <td>详情</td>
                    <td>
                        <input type="text" name="imageDetail"  class="easyui-numberbox" />
                    </td>
                    <td>详情（英文）</td>
                    <td>
                        <input type="text" name="en_imageDetail"  class="easyui-numberbox" />
                    </td>
                </tr>
                <tr>
                    <td>产品类型</td>
                    <td>
                        <input class="easyui-comboboxtree" panelHeight="auto"  id="productTypeId" name="productType"   data-options="required:true"  />

                    </td>
                    <td>所属产品</td>
                    <td>
                        <input class="easyui-combobox" panelHeight="auto"  id="ImageProductId" name="productId"  data-options="required:true" />
                    </td>
                    <td>概要(英文)</td>
                    <td>
                        <input name="en_imageDescription"  id="en_Descript" type="text"  class="easyui-validatebox" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
