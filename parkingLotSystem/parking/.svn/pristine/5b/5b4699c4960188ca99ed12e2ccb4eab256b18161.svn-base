<%@page import="com.parking.entity.Users"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=basePath%>js/awardRotate.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.easyui.min.js"></script>
<link rel="stylesheet" href="<%=basePath %>css/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath %>css/themes/icon.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath%>css/lucky.css" type="text/css"></link>
<script type="text/javascript">
$(function (){
	var rotateTimeOut = function (){
		$('#rotate').rotate({
			angle:0,
			animateTo:2160,
			duration:8000,
			callback:function (){
				alert('网络超时，请检查您的网络设置！');
			}
		});
	};
	var bRotate = false;

	var rotateFn = function (awards, angles, txt){
		bRotate = !bRotate;
		$('#rotate').stopRotate();
		$('#rotate').rotate({
			angle:0,
			animateTo:angles+1800,
			duration:8000,
			callback:function (){
				parent.$.messager.alert('提示',txt);
				location.href="<%=basePath%>luckyMan.action";
				bRotate = !bRotate;
			}
		});
	};

	$('.pointer').click(function (){
		var integration="<%=((Users)session.getAttribute("user")).getIntegration()%>";
		if (integration>=5) {
			if(bRotate)return;
			var item = rnd(0,7);
			switch (item) {
				case 0:
					//var angle = [26, 88, 137, 185, 235, 287, 337];
					rotateFn(0, 337, '未中奖');
					break;
				case 1:
					//var angle = [88, 137, 185, 235, 287];
					rotateFn(1, 26, '免单4999元');
					break;
				case 2:
					//var angle = [137, 185, 235, 287];
					rotateFn(2, 88, '免单50元');
					break;
				case 3:
					//var angle = [137, 185, 235, 287];
					rotateFn(3, 137, '免单10元');
					break;
				case 4:
					//var angle = [185, 235, 287];
					rotateFn(4, 185, '免单5元');
					break;
				case 5:
					//var angle = [185, 235, 287];
					rotateFn(5, 185, '免单5元');
					break;
				case 6:
					//var angle = [235, 287];
					rotateFn(6, 235, '免分期服务费');
					break;
				case 7:
					//var angle = [287];
					rotateFn(7, 287, '提高白条额度');
					break;
			}
		}else{
			parent.$.messager.alert('提示','您当前积分不足……');
		}

		console.log(item);
	});
});
function rnd(n, m){
	return Math.floor(Math.random()*(m-n+1)+n);
}
</script>
<style>
	#integrationMain{width:100%;height:100%;}
	#integrationMain .integration{float:left;width:300px;height:400px; 
	font-size:20px;margin-left:20px;margin-top:20px; }
	#integrationMain .integration table td{padding-top:10px;color:#008B00;}
	#integrationMain .lucky{float:right;}
</style>
<div id="integrationMain">
	<div class="integration">
		<table>
			<tr><td style="text-align:center;font-size:25px;">抽奖规则</td></tr>
			<tr>
				<td>抽奖一次:5积分</td>
			</tr>
			<tr>
				<td>当前积分:${user.integration }</td>
			</tr>
			<tr>
				<td>说明:&copy;最终解释权归本网站所有</td>
			</tr>
		</table>
	</div>
	<div class="turntable-bg" class="lucky">
	    <div class="pointer"><img src="images/pointer.png" alt="pointer"/></div>
	    <div class="rotate" ><img id="rotate" src="images/turntable.png" alt="turntable"/></div>
	</div>
</div>