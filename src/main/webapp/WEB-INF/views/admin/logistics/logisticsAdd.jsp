<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script src="${staticPath }/static/js/city.js"></script>
<script type="text/javascript">
    $(function() {
        <!--省市区初始化开始-->
        var prov = $("select[name='province']");
        var city =$("select[name='city']");
        var country =$("select[name='district']");
        /*自动加载省份列表*/
        for (var i = 0; i < provice.length; i++) {
            var provOpt = "<option>"+provice[i].name+"</option>"
            prov.append(provOpt);

        }
        console.info(prov.html());

     prov.change(function () {
         var current=$(this).next()

         clear(current);
            var val = $(this).get(0).selectedIndex;
            if (val != null) {
                var cityLen = provice[val-1].city;
                for (var j = 0; j < cityLen.length; j++) {
                    console.info("name:"+cityLen[j].name);
                    var cityOpt = "<option>"+cityLen[j].name+"</option>";
                    current.append(cityOpt);
                }
            }
        });
        city.change(function (){

            var val = $(this).get(0).selectedIndex;
            var select = $(this).prev().get(0).selectedIndex;
            var current=$(this).next()
            clear(current);

            console.info("val:"+val+" select:"+select);

            if (val != null) {
                var districtArr = provice[select-1].city[val-1].districtAndCounty;
                console.info(districtArr);
                for (var j = 0; j < districtArr.length; j++) {
                    console.info("name:"+districtArr[j]);
                    var districtAndCountyOpt = "<option>"+districtArr[j]+"</option>"
                    current.append(districtAndCountyOpt);
                }
            }
        });
        <!--省市区初始化结束-->



        $('#logisticsAddForm').form({
            url : '${path }/logistics/add',
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
                    parent.$.modalDialog.openner_dataGrid.datagrid('reload');//之所以能在这里调用到parent.$.modalDialog.openner_dataGrid这个对象，是因为user.jsp页面预定义好了
                    parent.$.modalDialog.handler.dialog('close');
                } else {
                    var form = $('#logisticsAddForm');
                    parent.$.messager.alert('提示', eval(result.msg), 'warning');
                }
            }
        });



        
    });
    function clear(o) {
        o.empty();
        var opt="<option>请选择</option>";
        o.append(opt);    }
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'center',border:false" title="" style="overflow: hidden;padding: 3px;">
        <form id="logisticsAddForm" method="post">
            <table class="grid">
                <tr>
                    <td>货物名称</td>
                    <td><input name="goodsName" type="text" placeholder="请输入货物名称" class="easyui-validatebox textbox custom" data-options="required:true" value=""></td>
                    <td>重量</td>
                    <td><input name="goodsWeight" type="text" class=" textbox custom"></td>
                    <td>体积</td>
                    <td><input name="goodsVolume" type="text" class=" textbox custom"></td>
                </tr>
                <tr>
                    <td>备注</td>
                    <td colspan="5"><textarea name="comment" style="width: 300px"></textarea></td>

                </tr>
                <tr>
                    <td colspan="6">发货信息</td>

                </tr>
                <!--logistics_id
                    goods_name
                    deliver_name
                    deliver_phone
                    goods_volume
                    goods_weight
                    accept_area_id
                    accept_address_detail
                    accept_name
                    accept_phone
                    comment
                    state
                    tracking_number
                    logstics_type
                    -->
                <tr>
                    <td>发货时间</td>
                    <td><input name="deliverName" type="text" class="easyui-datetimebox" ></td>
                    <td>姓名</td>
                    <td><input name="deliverName" type="text" placeholder="请输入发货人姓名" class="easyui-validatebox textbox custom" data-options="required:true" value=""></td>
                    <td>电话</td>
                    <td><input name="deliverPhone" type="text" placeholder="请输入发货人电话" class="easyui-validatebox textbox custom" data-options="required:true" value=""></td>
                </tr>
                <tr>
                    <td>地址</td>
                    <td colspan="5">
                        <select  name="province" class="textbox custom" >
                        <option>请选择</option>
                        </select>


                        <select  name="city" class="textbox custom">
                            <option>请选择</option>
                        </select>

                        <select  name="district" class="textbox custom">
                            <option>请选择</option>
                        </select>
                        <input type="text" class="textbox custom">
                    </td>
                </tr>

                <tr>
                    <td colspan="6">收货信息</td>

                </tr>
                <tr>
                    <td>姓名</td>
                    <td>
                        <input type="text" name="acceptName" placeholder="请输入收货人姓名"  class="textbox custom"/>
                    </td>
                    <td>电话</td>
                    <td>
                        <input type="text" name="acceptPhone" placeholder="请输入收货人电话" class="easyui-numberbox"/>
                    </td>

                    </td>
                </tr>

                <tr>
                    <td>地址</td>
                    <td colspan="5">
                        <select name="province" class="textbox custom">
                            <option>请选择</option>
                        </select>


                        <select name="city" class="textbox custom">
                            <option>请选择</option>
                        </select>

                        <select name="district" class="textbox custom">
                            <option>请选择</option>
                        </select>
                        <input type="text" class="textbox custom">
                    </td>
                </tr>
                <tr>
                    <td>发货方式</td>
                    <td>
                        <input type="text" name="phone" class="textbox custom"/>
                    </td>
                    <td>单号</td>
                    <td>
                        <input type="text" name="phone" class="textbox custom"/>

                    </td>
                    <td>发货状态</td>
                    <td>
                        <select name="status" class="easyui-combobox" data-options="width:140,height:29,editable:false,panelHeight:'auto'">
                            <option value="0">已发货</option>
                            <option value="1">未发货</option>
                        </select>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
