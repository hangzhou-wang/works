<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.easyui.min.js"></script>
<link rel="stylesheet" href="<%=basePath %>css/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath %>css/themes/icon.css" type="text/css"></link>
<style>
	#nullify{
		width:200px;height:28px;border-radius:10px;border:solid rgb(100,100,100) 1px;
		margin-top:60px; outline:none; -webkit-appearance:none;margin-left:170px;cursor:pointer;
	}
	#nullifyUser{width:60%;margin:10px auto;}
</style>
<script type="text/javascript">
	function nullifyUser(){
		top.$.messager.confirm('注销?','警告！！！确定要注销吗?',function(r){    
		    if (r){
		        location.href="<%=basePath %>nullifyUser";
		    }
		});
	}
</script>

<a style="margin-left:40px;" href="javascript:;" onclick="javascript:history.back(-1);" target="rightFrame">
	<img src="<%=basePath%>images/icons/back.png"></img>
</a>
<div id="nullifyUser">
	<form action="<%=basePath %>nullifyUser" >
		<ul style="list-style: none;">
			<li style="margin-left:200px;"><font size="6">注销账户</font></li>
			<li style="line-height:28px;">
				<p><font color="#000080" size="4">${user.realname }</font>，您好<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注销当前账户之后，您将不能再用此账号登录！您确定要注销吗？<br/>
				点击"确定注销"按钮之后，系统将自动退出。希望您能够三思而后行，您可以拨打免费热线400-88919889
				告诉我们您在使用中感觉不足的地方我们一定会第一时间更改。
				</p>
			</li>
			<li>
				<input type="button" id="nullify" onclick="nullifyUser()" value="确定注销"/>
			</li>
		</ul>
	</form>
</div>