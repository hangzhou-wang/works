<%@ page import="com.parking.entity.Users"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link rel="stylesheet" href="<%=basePath %>css/rednder/hoverclock.css" type="text/css"></link>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=basePath %>js/rednder/hoverclock.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.easyui.min.js"></script>
<link rel="stylesheet" href="<%=basePath %>css/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath %>css/themes/icon.css" type="text/css"></link>
<style type="text/css">
	#headLeft{width:45%;float:left;margin-left:10px;margin-top:5px;}
	#logo{float:left;margin-left:20px;}
	#webName{margin-top:30px;font-size: 30px;font-family:"Arial","Microsoft YaHei","黑体","宋体",sans-serif;}
	#headRight{width:54%;float:right;}
	#hoverclock{float: right;margin-right:30px;}
	#userinfo{float:left;margin-top:30px;margin-left:220px;}
	.toright{text-align:right;}
	#userTable{width:400px;color:#fff;}
	#userTable tr td{padding-top:15px;}
</style>
<script>
	function exit(){
		$.messager.confirm('退出?','确定要退出吗?',function(r){    
		    if (r){
		        location.href="<%=basePath %>exit";
		    }
		});
	}
</script>
<div id="headLeft">
<div id="logo"><img src="<%=basePath%>images/logoSide.png"></img><img src="<%=basePath%>images/topLogo.png"></img></div>
<div id="webName">
	<font color="#fff">一个能让您放心的停车的地方</font><br/>
	<font color="#fff" style="margin-left:70px;margin-top:20px;">www.parking.com</font>
</div>
</div>
<div id="headRight">
	<div id="hoverclock"></div>
	<script>
		$("#hoverclock").hoverclock({
			"h_width" : 150,
			"h_height" : 150,
			"h_hourNumSize" : "20",
// 			"h_minuteNumShow":false,
// 			"h_hourNumRadii": "200",
			"h_hourNumShow": false,
			"h_hourNumColor" : "#4169E1",
			"h_backColor" : "#fff",
			"h_borderColor" : "#6FB7FF",
			/* "h_frontColor":"red", */
			"h_linkText" : "时光匆匆"
		});
	</script>
	<div id="userinfo">
	<%
		Date regDate=((Users)session.getAttribute("user")).getRegdate();
		Date nowDate=new Date();
		long beginTime = regDate.getTime(); 
	    long nowTime = nowDate.getTime(); 
	    long betweenDays = (long)((nowTime - beginTime) / (1000 * 60 * 60 *24) + 0.5); 
		
	 %>
		<table id="userTable">
			<tr>
				<td class="toright"><img src="<%=basePath%>images/icons/userWel.png" align="absmiddle"></img>
				</td>
				<td><font size="3">欢迎,</font> 
					<a style="text-decoration:none;color:#fff;" href="<%=basePath%>toUserInformation" target="rightFrame">
						<font size="4">${user.realname }</font>
					</a>
				</td>
				<s:if test="%{#session.user.status==0}">
					<td class="toright">
						<img src="<%=basePath%>images/icons/normalSe.png" align="absmiddle"></img>
					</td>
					<td>
						<font size="3">普通用户</font>
					</td>
					
				</s:if>
				<s:elseif test="%{#session.user.status==1}">
					<td class="toright">
						<img src="<%=basePath%>images/icons/adminSe.png" align="absmiddle"></img>
					</td>
					<td>
						<font size="3">管理员</font>
					</td>
				</s:elseif>
				<s:else>
					<td class="toright">
						<img src="<%=basePath%>images/icons/gradeSe.png" align="absmiddle"></img>
					</td>
					<td>
						<font size="3">尊贵会员</font>
					</td>
				</s:else>
			</tr>
			<tr>
				<td class="toright"><img src="<%=basePath %>images/registered.png" align="absmiddle"></img></td>
				<td><font size="3">已注册</font><font color="#EEC900" size="6"><%=betweenDays %></font> 
				<font size="3">天</font>
				</td>
				<td class="toright"><img src="<%=basePath %>images/icons/exit.png" align="absmiddle"></img></td>
				<td>
					<a href="javascript:;" style="text-decoration: none;color:#fff;" onclick="exit()"><font size="3">退出</font></a>
				</td>
			</tr>
		</table>
	</div>
</div>