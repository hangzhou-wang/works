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
<style>
	#carMain{width:89%;height:84%;margin-left:70px;margin-top:15px;}
	.carDiv{width:73px;border:2px solid black;height:99px;margin:10px 35px;text-align:center;line-height:99px;float:left;font-size:32px;color:#8E8E8E;}
	#leftBack{float:left;margin-top:208px;cursor: pointer;}
	#rightGo{float:right;margin-top:-285px;cursor: pointer;}
	#number{width:96%;height:67px;margin-top:10px;margin-left:4px;text-align:center;}
	#number ul{list-style:none;overflow: hidden;text-align:center;margin-left:-10px;}
	#number ul li{border-radius:23px;border:solid rgb(100,100,100) 1px;text-align: center;line-height: 40px;display:inline;padding:7px 9px;margin-left:5px;margin-right:11px;cursor: pointer;}
	.currentLi{background:#6FB7FF;color:#fff;}
	#scInfo{width:50%;margin:20px auto;border-color:#ccc;margin-top:40px;}
	#scInfo tr td{padding:5px 6px;}
	#stopCar{width:200px;height:28px;border-radius:10px;border:solid rgb(100,100,100) 1px;
		margin-top:10px; outline:none; -webkit-appearance:none;background:#1C86EE;
		color:#fff;cursor:pointer;}
	#payPC{margin-left:480px;border-color:#CAE1FF;margin-top:40px;}
	#payPC tr td{padding:12px 10px;}
	#payPC input{width:170px;height:28px;border-radius:10px;border:solid rgb(100,100,100) 1px;
		margin-top:10px; outline:none; -webkit-appearance:none;background:#1C86EE;
		color:#fff;cursor:pointer;}
	.tdRight{text-align:right;font-size:16px;}
	#takeMoney{width:350px;float:left;font-size:13px;}
</style>
<script>
	function SCed(){
		top.$.messager.alert('提示','当前车位已被预定,暂不能查看');
	}
	function PCed(){
		top.$.messager.alert('提示','当前车位已暂用，暂不能查看');
	}
</script>
<s:if test="parkingSpace==null&schdule==null">
	<s:if test="currentPage==1">
		<div id="leftBack"></div>
	</s:if>
	<s:else>
		<a href="<%=basePath%>getSpace.action?currentPage=<s:property value='currentPage-1'/>">
			<div id="leftBack"><img src="<%=basePath %>images/icons/left.png"></img></div>
		</a>
	</s:else>
	
	<div id="carMain">
		<s:iterator value="parkingSpaceList">
			<s:if test="status==0">
				<a href="<%=basePath %>getPSById.action?ps_id=<s:property value='id'/>" target="rightFrame">
					<div class="carDiv" style="border-color:#00CD00;"><s:property value="id"/></div></a>
			</s:if>
			<s:elseif test="status==1">
				<a href="javascript:;">
					<div class="carDiv"  onclick="SCed()" style="border-color:#FFA500;"><img style="margin-top:33px;" src="<%=basePath %>images/icons/SCclock.png" align="absmiddle"></img></div></a>
			</s:elseif>
			<s:else>
				<a href="javascript:;">
					<div class="carDiv" onclick="PCed()" style="border-color:#FF0000;"><img style="margin-top:33px;" src="<%=basePath %>images/icons/hadP.png" align="absmiddle"></img></div></a>
			</s:else>
		</s:iterator>
	</div>
	
	<s:if test="currentPage==totalPage">
		<div id="rightGo"></div>
	</s:if>
	<s:else>
		<a href="<%=basePath%>getSpace.action?currentPage=<s:property value='currentPage+1'/>">
			<div id="rightGo"><img src="<%=basePath %>images/icons/right.png"></img></div>
		</a>
	</s:else>
	<div id="number">
		<ul>
			<s:iterator begin="1" end="totalPage">
				<s:if test="currentPage==top">
					<a style="text-decoration:none;" href="<%=basePath%>getSpace.action?currentPage=<s:property value='top'/>">
						<li class="currentLi"><s:property value="top"/></li>
					</a>
				</s:if>
				<s:else>
					<a style="text-decoration:none;" href="<%=basePath%>getSpace.action?currentPage=<s:property value='top'/>">
						<li><s:property value="top"/></li>
					</a>
				</s:else>
			</s:iterator>
		</ul>
	</div>
</s:if>
<script type="text/javascript">
	function parkingCar(){
		var data={'parkingSpace.id':$("#parkingSpaceId").val(),
			'parkingSpace.user.id':$("#userId").val(),'parkingSpace.intime':$("#scTime").val(),
			'parkingSpace.status':"2",'parkingSpace.parkinglot.id':$("#pslot").val(),
			'parkingSpace.price':"8"};
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
</script>

<s:elseif test="schdule!=null">
		<table id="scInfo" border="1" cellSpacing="0">
			<tr>
				<td colspan="2" style="text-align:center;font-size:20px;font-size:24px;color:#000080;background:#ccc;">当前已预定
				
				<input type="hidden" id="parkingSpaceId" value="<s:property value="schdule.parkingSpace.id"/>"/>
				<input type="hidden" id="userId" value="${user.id }"/>
				<input type="hidden" id="pslot" value="<s:property value="schdule.parkingSpace.parkinglot.id"/>"/>
				</td>
			</tr>
			<tr>
				<td class="tdRight">车位编号</td>
				<td><s:property value="schdule.parkingSpace.id"/></td>
			</tr>
			<tr>
				<td class="tdRight">预定时间</td>
				<td><s:date name="schdule.sctime" format="yyyy-MM-dd HH:mm"/>
				<input type="hidden" id="scTime" value="<s:property value="schdule.sctime"/>"/>
				</td>
			</tr>
			<tr>
				<td class="tdRight">预计到达时间</td>
				<td><s:date name="schdule.arriveTime" format="yyyy-MM-dd HH:mm"/></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
					<input id="stopCar" type="button" value="停车" onclick="parkingCar()"/>
				</td>
			</tr>
		</table>
	</form>
</s:elseif>
<s:else>
<script type="text/javascript">
	var totalPrice=0;
	$(function(){
		var pTime=new Date($("#pTime").val());
		var timeNow=new Date();
		var dur=timeNow.getTime()-pTime.getTime();
		var days=Math.floor(dur/(24*3600*1000));//相差天数
		var leavel1=dur%(24*3600*1000);
		var leavel2=leavel1%(3600*1000);
		var hours=Math.floor(leavel1/(3600*1000));//相差天数
		var minu=Math.floor(leavel2/(60*1000));//相差分钟
		var hoursDay=0;
		var totalHours=0;
		var yearBegin=pTime.getFullYear();
		var yearEnd=timeNow.getFullYear();
		var yearDur=yearEnd-yearBegin;
		var monthBegin=pTime.getMonth();
		var monthEnd=timeNow.getMonth();
		var monthDur=monthEnd-monthBegin;
		var dayBegin=pTime.getDay();
		var dayEnd=timeNow.getDay();
		var dayDur=dayEnd-dayBegin;//相差天数
		var hhBegin=pTime.getHours();
		var hhEnd=timeNow.getHours()%12;
		var hoursDur=hhEnd-hhBegin;//相差小时数
		if (yearDur>0) {
			monthDur=parseFloat(yearDur)*12;
		}
		if (monthDur>0) {
			dayDur=parseFloat(monthDur)*30;
		}
		if (days>0) {
			hoursDay=parseFloat(days)*24;
			totalHours=hoursDay;
		}		
		if (hours>0) {
			totalHours=Math.floor(hoursDay)+Math.floor(hours);
		}
		//计算价格
		if (totalHours>0) {
			totalPrice=parseFloat(totalHours)*8;
		}else{
			totalPrice=8;
		}
		
		if (days>0) {
			$("#durT").html(days+"天"+hours+"小时"+minu+"分钟");
		}else{
			if (hours>0) {
				$("#durT").html(hours+"小时"+minu+"分钟");
			}else{
				$("#durT").html(minu+"分钟");
			}
		}
		$("#totalPrice").html(totalPrice+"元");
		$("#parkingTime").val(totalHours);
		$("#parkingTotalPrice").val(totalPrice);
	});
	function paySure(){
		top.$.messager.confirm('提示','您需要支付'+totalPrice+'元，是否确认',function(r){    
		    if (r){
		       	$("#suBtn").click();
		    }
		});
	};
</script>
<%
	String datetime=new SimpleDateFormat("yyyy-MM-dd HH:mm").format(Calendar.getInstance().getTime());
	String datetime2=new SimpleDateFormat("dd/MM/yyyy HH:mm").format(Calendar.getInstance().getTime());
 %>
<div id="takeMoney">
	<fieldset style="border:none;">
		<legend>收费说明：</legend>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;每小时8元(8元/小时),不满1小时按1小时算<br/>
		CopyRight第二组(王总),有不明白的地方请询问王总!
	</fieldset>
	<a href="whzCr://" style="margin-left:20px;margin-top:20px;font-size:18px;text-decoration:none;"><img src="<%=basePath%>images/icons/calculator.png" align="absmiddle"></img>计算器</a>
 </div>
	<form action="<%=basePath%>addCarRecord" method="post">
		<table id="payPC" border="1" cellSpacing="0">
			<tr>
				<td colspan="2" style="text-align:center;font-size:20px;color:#000080;background:#ccc;">结账</td>
			</tr>
			<tr>
				<td><img src="<%=basePath%>images/icons/numberList.png" align="absmiddle"></img>车位编号</td>
				<td><s:property value="parkingSpace.id"/>
					<input type="hidden" name="carRecord.parkingSpace.id" value="<s:property value='parkingSpace.id'/>"/>
					<input type="hidden" name="carRecord.user.id" value="${user.id }"/>
					<input type="hidden" id="parkingTime" name="carRecord.parkingTime"/>
					<input type="hidden" id="parkingTotalPrice" name="carRecord.totalPrice"/>
					<input type="hidden" name="intimeCR" value="<s:date name='parkingSpace.intime'/>"/>
					<input type="hidden" name="dateReport" value="<%=datetime2%>"/>
				</td>
			</tr>
			<tr>
				<td><img src="<%=basePath%>images/icons/regDate.png" align="absmiddle"></img>停车时间</td>
				<td><s:date name="parkingSpace.intime" format="yyyy-MM-dd HH:mm"/></td>
			</tr>
			<tr>
				<td><img src="<%=basePath%>images/icons/Price.png" align="absmiddle"></img>车位单价</td>
				<td><s:property value="parkingSpace.price"/>元/小时</td>
			</tr>
			<tr>
				<td><img src="<%=basePath%>images/icons/times.png" align="absmiddle"></img>停车时长</td>
				<td id="durT">
					<input type="hidden" id="pTime" value="<s:date name='parkingSpace.intime'/>"/>
				</td>
			</tr>
			<tr>
				<td><img src="<%=basePath%>images/icons/money.png" align="absmiddle"></img>所需费用</td>
				<td id="totalPrice">
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
					<input type="button" onclick="paySure()" value="确定"/>
					<input type="submit" id="suBtn" style="display:none;"/>
				</td>
			</tr>
		</table>
	</form>
</s:else>
