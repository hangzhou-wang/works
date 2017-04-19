<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.easyui.min.js"></script>
<link rel="stylesheet" href="<%=basePath %>css/themes/default/easyui.css" type="text/css"></link>
<style>
	#toBeMember{
		margin:0px auto;font-family:Arial,Helvetica,sans-serif;font-size:20px; line-height:20px;color:#4e4e4e; 
		width:400px;margin-top:20px;padding:20px;text-align: center;margin-left:320px;
	}
	#toBeMember td{padding-top:20px;}
	#surebtn{margin-top:70px;}
	input{
		width:200px;height:28px;border-radius:10px;border:solid rgb(100,100,100) 1px;
		margin-top:50px; outline:none; -webkit-appearance:none;
	}
	#surebtn{cursor: pointer;background:#BC8F8F;font-size:14px;color:#fff;}
</style>
<script type="text/javascript">
	function sureBeMember(){
		$.ajax({
			url:"<%=basePath%>beMember.action",
			dataType:"json",
			error:function(){alert("连接出错");},
			success:function(data){
				if (data.code==0) {
					alert(data.msg);
					/* top.$.messager.alert('提示',data.msg);  */
					top.location.href="<%=basePath%>toHome";
				}else{
					alert(data.msg);
				}
			}
		});
	}
</script>

<a style="margin-left:40px;" href="javascript:;" onclick="javascript:history.back(-1);" target="rightFrame">
	<img src="<%=basePath%>images/icons/back.png"></img>
</a>

<div id="beMember">
	<form action="" method="post">
		<table id="toBeMember">
			<tr><td colspan="2" style="text-align: center;padding-bottom: 10px;"><font color="#8B008B" size="6px" style="font-family:'宋体'">确认信息</font></td></tr>
			<tr>
				<td><img src="<%=basePath%>images/userName.png" align="absmiddle"></img>用&nbsp;户&nbsp;名</td>
				<td style="text-align: left;">${user.name }</td>
			</tr>
			<tr>
				<td><img src="<%=basePath%>images/realname.png" align="absmiddle"></img>真实姓名</td>
				<td style="text-align: left;">${user.realname }</td>
			</tr>
			<tr>
				<td>
					<img src="<%=basePath%>images/icons/idCard.png" align="absmiddle"></img>当前身份
				</td>
				<s:if test="%{#session.user.status==0}">
				<td style="text-align: left;">
					<img src="<%=basePath%>images/icons/normalSe.png" align="absmiddle"></img>
					<font color="#000080" size="3">普通用户</font>
				</td>
				</s:if>
				<s:elseif test="%{#session.user.status==1}">
					<td style="text-align: left;">
						<img src="<%=basePath%>images/icons/adminSe.png" align="absmiddle"></img>
						<font color="#FF3030" size="3">管理员</font>
					</td>
				</s:elseif>
				<s:else>
					<td style="text-align: left;">
						<img src="<%=basePath%>images/icons/gradeSe.png" align="absmiddle"></img>
						<font color="#FF8C00" size="3">尊贵会员</font>
					</td>
				</s:else>
			</tr>
			<tr>
				<td><img src="<%=basePath%>images/phone.png" align="absmiddle"></img>联系方式</td>
				<td style="text-align: left;">${user.phone }</td>
			</tr>
			<tr><td colspan="2" style="text-align: center;">
				<input type="button" value="注册会员" id="surebtn" onclick="sureBeMember()"/>
			</td></tr>
		</table>
	</form>
</div>