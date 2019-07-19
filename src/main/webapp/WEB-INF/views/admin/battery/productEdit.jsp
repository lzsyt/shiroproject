<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    $(function() {
        //下拉的方法
        $('#productTypeId').combotree({
            url : '${path }/productType/tree',
            parentField : 'parentId',
            panelHeight : 'auto',
            value : '${product.productType}'
        });

        //表单提交的方法
        $('#productEditForm').form({
            url : '${path }/product/edit',
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
                    var form = $('#productEditForm');
                    parent.$.messager.alert('错误', eval(result.msg), 'error');
                }
            }
        });
    });
</script>
<script  src="${staticPath }/static/js/index.js"></script>
<style type="text/css">

    #Imagetu{
        width:69px;
    }
    .ImgBox img{
        margin: 50px 0 0 10px;
        text-align: center;
    }

    .tud{
        width:130px;
    }
    .tud input{
        width:130px;
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
<div  class="easyui-layout" id="div1"  data-options="fit:true,border:false">
    <div data-options="region:'center',border:false" title="" style="padding: 3px;">
        <form id="productEditForm" method="post" enctype="multipart/form-data">
            <div class="light-info" style="overflow: hidden;padding: 3px;">

            </div>
            <table class="grid">
                <tr>
                    <td>产品名称</td>
                    <td><input name="productId" type="hidden"  value="${product.productId}">
                        <input name="productName" type="text" placeholder="请输入产品名称" class="easyui-validatebox" data-options="required:true" value="${product.productName}" onchange="CheckTitle(this);"></td>
                    <td>产品编号</td>
                    <td><input name="productNum" type="text" placeholder="请输入编号" class="easyui-validatebox" data-options="required:false" value="${product.productNum}"  ></td>
                </tr>
                <tr>
                    <td>描述</td>
                    <td>
                         <textarea rows="5" cols="50" name="productDescription">${product.productDescription}</textarea>
                    </td>
                    <td>简介</td>
                    <td>
                         <textarea rows="5" cols="50" name="productSynopsis">${product.productSynopsis}</textarea>
                    </td>
                </tr>
                <tr>
                    <td>所属类别</td>
                    <td>
                        <select id="productTypeId" name="productType" style="width: 160px; height: 29px;" class="easyui-validatebox"></select>
                    </td>
                </tr>
            </table>
            <table  class="grid">
                <tr>
                    <td id="Imagetu">主图</td>
                    <td id="" >
                        <div id="ImgBox" class="ImgBox">
                            <c:forEach items="${Imglist}" var="ps">
                                  <c:if test="${ps.imageType==5}">
                                      <img  src="${pageContext.request.contextPath}/static${ps.imagePath}${ps.fileName}" style="width:100px;height:100px;"/>
                                  </c:if>
                            </c:forEach>
                        </div>
                    </td>

                    <td class="tud" colspan="2">
                        <a href="javascript:;" class="file">选择文件
                                  <input name="Mafile" type="file" id="antzone" class="easyui-validatebox" accept="image/gif,image/jpeg,image/jpg,image/png" onchange="upload(this.files);" multiple/>
                        </a>
                    </td>
                </tr>
               <tr>
                    <td>幻灯片</td>
                    <td >
                       <div id="ImgBoxs" class="ImgBox">
                           <c:forEach items="${Imglist}" var="ps">

                               <c:if test="${ps.imageType==6}">
                                   <img  src="${pageContext.request.contextPath}/static${ps.imagePath}${ps.fileName}" style="width:100px;height:100px;" />
                               </c:if>
                           </c:forEach>
                        </div>
                    </td>

                    <td class="tud"  colspan="2">
                        <a href="javascript:;" class="file">选择文件
                                  <input name="Ptfile" type="file"  id="antzones" class="easyui-validatebox" accept="image/gif,image/jpeg,image/jpg,image/png" onchange="uploads(this.files);" multiple/>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>参数</td>
                    <td >
                        <div id="ImgBoxss" class="ImgBox">
                            <c:forEach items="${Imglist}" var="ps">
                                <c:if test="${ps.imageType==7}">
                                  <img  src="${pageContext.request.contextPath}/static${ps.imagePath}${ps.fileName}" style="width:100px;height:100px;" />
                                </c:if>
                            </c:forEach>
                        </div>
                    </td>
                    <td class="tud"  colspan="2">
                        <a href="javascript:;" class="file">选择文件
                                 <input name="Parmfile" type="file" id="antzoness" class="easyui-validatebox" accept="image/gif,image/jpeg,image/jpg,image/png" onchange="uploadss(this.files);" multiple/>
                        </a>
                    </td>
                </tr>

            </table>
        </form>
    </div>
</div>