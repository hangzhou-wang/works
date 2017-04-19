<%@page import="com.parking.util.DateUtil"%>
<%@page import="com.parking.entity.Users"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.text.*" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.easyui.min.js"></script>
<link rel="stylesheet" href="<%=basePath %>css/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath %>css/themes/icon.css" type="text/css"></link>
<style type="text/css">
	#carDetial{width:90%;height:90%;margin:0px auto;}
	#carInfo{width:50%;margin:0px auto;border-color:#ccc;}
	#carInfo tr td{padding:4px 3px;}
	.trName{text-align:right;font-size:16px;}
	.inputSI{width:200px;font-size:12px;}
	.inputBtn{color:#fff;cursor:pointer;width:100px;height:28px;border-radius:10px;border:solid rgb(100,100,100) 1px;margin-top:10px; outline:none; -webkit-appearance:none;}
	span{font: 13px/1 Tahoma,Helvetica,Arial,"\5b8b\4f53",sans-serif;margin-left:5px;}
	.warn{border:1px solid #FF0000;background:#FFD2D2;}
</style>
<%
	String datetime=new SimpleDateFormat("dd/MM/yyyy HH:mm").format(Calendar.getInstance().getTime());
 %>
<script type="text/javascript">
	function parkingCar(){
		top.$.messager.confirm('提示','确认信息后点击确定',function(r){    
		    if (r){
		    	var data={'parkingSpace.id':$("#parkingSpaceId").val(),
					'parkingSpace.user.id':$("#userId").val(),'parkingSpace.status':"2"};
				$.ajax({
					url:'<%=basePath%>pakingCar.action',
					type:'post',
					data:data,
					dataType:'json',
					error:function(){alert('连接失败');},
					success:function(data){
						if (data.code==0) {
							location.href='<%=basePath%>getSpace';
						}else{
							alert(data.msg);
						};
					}
				});
		    }
		});
	}
	
	function scBtnClick(){
		top.$.messager.confirm('提示','确认信息后点击确定',function(r){ 
		    if (r){
				var arriveTime=$('#arriveTime').val();
				if (arriveTime==null) {
					$('#arriveTime').addClass("warn");
					$('#arriveTime_tip').html("<font color='red'>预计到达时间不能为空</font>");
				}else{
					$("#submitSc").click();
				}
		    }
		});
	}
	
	function checkNull(){
		var arriveTime=$('#arriveTime').val();
		if (arriveTime!=null) {
			$('#arriveTime').removeClass("warn");
			$('#arriveTime_tip').html("");
		}
	}
</script>
<a style="margin-left:40px;" href="javascript:;" onclick="javascript:history.back(-1)" target="rightFrame">
	<img src="<%=basePath%>images/icons/back.png"></img>
</a>

<div id="carDetial">
<form id="scForm" action="<%=basePath%>addSchdule" method="post">
	<table id="carInfo" border="1" cellSpacing="0">
		<tr><td colspan="2" style="text-align:center;font-size:24px;color:#000080;background:#ccc;">车位信息</td></tr>
		<tr>
			<td class="trName">编&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</td>
			<td><s:property value="parkingSpace.id"/>
				<input id="parkingSpaceId" type="hidden" name="schdule.parkingSpace.id" value="<s:property value='parkingSpace.id'/>"/>
				<input id="userId" type="hidden" name="schdule.user.id" value="${user.id }"/>
			</td>
		</tr>
		<tr>
			<td class="trName">停&nbsp;&nbsp;车&nbsp;&nbsp;区</td>
			<td><s:property value="parkingSpace.parkinglot.name"/>
				<input type="hidden" id="pslot" value="<s:property value='parkingSpace.parkinglot.id'/>"/>
			</td>
		</tr>
		<tr>
			<td class="trName">位&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;置</td>
			<td><s:property value="parkingSpace.parkinglot.position"/></td>
		</tr>
		<tr>
			<td class="trName">价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格</td>
			<td><s:property value="parkingSpace.price"/>元/小时
				<input type="hidden" id="psprice" value="<s:property value='parkingSpace.price'/>"/>			
			</td>
		</tr>
		<tr><td colspan="2" style="text-align:center;">
			<input class="inputBtn" style="background:#1E90FF;cursor: pointer;" type="button" value="停车" onclick="parkingCar()"/>
		</td></tr>
		<tr><td colspan="2" style="text-align:center;">预定车位</td></tr>
		<tr>
			<td class="trName">预定时间</td>
			<td><input id="scTime" class="inputSI" readonly="readonly" name="scTime" value="<%=datetime%>"/>
				<span id="scTime_tip"></span>
			</td>
		</tr>
		<tr>
			<td class="trName">到达时间</td>
			<td><input id="arriveTime" class="inputSI" onchange="checkNull()" type="text" name="arriveTime"/>
				<span id="arriveTime_tip"></span>
			</td>
		</tr>
		<tr><td colspan="2" style="text-align:center;">
			<input class="inputBtn" style="background:#EE9A49;" type="button" onclick="scBtnClick()" value="预定"/>
			<input type="submit" id="submitSc" style="display:none;"/>
		</td></tr>
	</table>
</form>
</div>
<script type="text/javascript">
$(function(){
	$('#arriveTime').datetimebox({
		value: '<%=datetime%>',
		required : true,
		showSeconds : false,
		onSelect:function(date){
			var y = date.getFullYear();
			var m = date.getMonth()+1;
			var d = date.getDate();
			var time=$("#arriveTime").datetimebox("spinner").spinner("getValue");
			var datetime= y+"-"+(m<10?("0"+m):m)+"-"+(d<10?("0"+d):d)+" "+time;
			$("#arriveTime").datetimebox("setText",datetime);
			$("#arriveTime").datetimebox("hidePanel");
		}
	});
});
</script>