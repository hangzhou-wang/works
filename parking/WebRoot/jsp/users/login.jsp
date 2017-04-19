<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.easyui.min.js"></script>
<link rel="stylesheet" href="<%=basePath %>css/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath %>css/themes/icon.css" type="text/css"></link>
<style type="text/css">
body {
	font: 18px 宋体;
	font-weight: bold;
}
.login-area {width:70%;margin:0px auto;margin-top:100px;}

.login-sub {background: #104E8B;
			width: 100px;
			height: 30px;
			color: #fff;
			margin-top: 20px;
			margin-left: 90px;
			cursor:pointer;
			border:1px solid black;}

.login-reset {background: #104E8B;
			width: 100px;
			height: 30px;
			color: #fff;
			margin-top: 20px;
			margin-left: 30px;
			cursor:pointer;
			border:1px solid black;}

#ulLogin li {margin-top: 30px;}
input {margin-left: 4px;}
span{font: 13px/1 Tahoma,Helvetica,Arial,"\5b8b\4f53",sans-serif;margin-left:5px;}
.warn{border:1px solid #FF0000;background:#FFD2D2;}
a{text-decoration:none;}
.inputLogin{border-radius:10px;border:solid rgb(100,100,100) 1px;width:230px;height:27px;outline:none;
padding-left:7px;font-size:14px;}
.inputLogin:focus {border:1px solid #009ACD;}
.loginORregisterButtom{border-bottom:3px solid #009ACD;}
</style>

<div id="main-login"  onkeypress="go()">
	<div class="login-area">
		<form style="margin-left:30px;padding:0px auto;width:500px;" oninput="checkNull()">
			<ul id="ulLogin" style="list-style: none;">
				<li><label for="userName"><img
						src="<%=basePath%>images/userName.png" align="absmiddle"></img>用户名</label><input
					type="text" id="userName" class="inputLogin" /><span id="userName_tip"></span>
				</li>
				<li><label for="password"><img
						src="<%=basePath%>images/password.png" align="absmiddle"></img>密&nbsp;码</label><input
					type="password" id="password" class="inputLogin"/><span id="password_tip"></span>
				</li>
				<li style="margin-left:-4px;"><label for="code"><img
						src="<%=basePath%>images/code.png" align="absmiddle"></img>验证码</label><input
					type="text" id="code" class="inputLogin" /><img style="margin-left:5px;"
					name="randImage" id="randImage" src="<%=basePath%>jsp/image.jsp"
					height="20" border="1" align="absmiddle"></img> <a
					href="javascript:loadimage();" style="font-size: 12px;">换一张</a><br/>
					<span id="code_tip"></span>
				</li>
			</ul>
			<input type="button" id="submit" class="login-sub" value="登录" onclick="validateRand()"/>&nbsp;
			<input class="login-reset" type="reset" onclick="location.href='<%=basePath%>toLogin'"/>
		</form>
		<img style="margin-left:440px;margin-top:80px;"
			src="<%=basePath%>images/login-logo.png"></img>
	</div>
</div>

<script type="text/javascript">
	$(function(){
		top.window.document.getElementById("loginBorder").click();
	});

	function loadimage() {
		document.getElementById("randImage").src = "<%=basePath%>jsp/image.jsp?"+ Math.random();
		$("#code").removeClass("warn");
		$("#code_tip").html("");
		$("#code").val("");
	};

	function go() {
		if (event.keyCode == 13) {
			$("#submit").click();
		}
	}
	
	function validateRand(){
		var flag=true;
		
		var userName=$("#userName").val();
		var password=$("#password").val();
		var code=$("#code").val();
		
		if ($.trim(code).length==0) {
			$("#code_tip").html("<font color='red'>验证码不能为空</font>");
			$("#code").addClass("warn");
			$("#code").focus();
			flag=false;
		}
		
		if ($.trim(password).length==0) {
			$("#password_tip").html("<font color='red'>密码不能为空</font>");
			$("#password").addClass("warn");
			$("#password").focus();
			flag=false;
		}
		
		if ($.trim(userName).length==0) {
			$("#userName_tip").html("<font color='red'>用户名不能为空</font>");
			$("#userName").addClass("warn");
			$("#userName").focus();
			flag=false;
		}
		
		//非空验证通过后
		if (flag) {
			var data={"user.name":$.trim($("#userName").val()),"user.password":$.trim($("#password").val()),"code":$("#code").val()};
			$.ajax({
				url:"<%=basePath%>login",
				type:"post",
				data:data,
				dataType:"json",
				error:function(){alert("连接失败");},
				success:function(data){
					switch (data.code) {
					case 0:
						$("#code_tip").html("<font color='red'>"+data.msg+"</font>");
						$("#code").addClass("warn");
						$("#code").focus();
						break;
					case 1:
						$("#userName_tip").html("<font color='red'>"+data.msg+"</font>");
						$("#userName").addClass("warn");
						$("#password").addClass("warn");
						$("#code").removeClass("warn");
						$("#code_tip").html("");
						$("#password").val("");
						$("#password").focus();
						break;
					default:
						top.location.href="<%=basePath%>toHome";
					    break;
						}
					}
				});
			}
	}

	function checkNull() {
		var userName = $("#userName").val();
		var password = $("#password").val();
		var code=$("#code").val();
		if ($.trim(userName).length > 0) {
			$("#userName_tip").html("");
			$("#userName").removeClass("warn");
		}
		if ($.trim(password).length > 0) {
			$("#password_tip").html("");
			$("#password").removeClass("warn");
		}
		if ($.trim(code).length > 0) {
			$("#code_tip").html("");
			$("#code").removeClass("warn");
		}
	}
</script>
