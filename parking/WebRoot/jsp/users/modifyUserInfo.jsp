<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page import="java.text.*" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.3.js"></script>
<style type="text/css">
body {
	font: 16px 宋体;
	font-weight: bold;
}

.register-area {
	margin: 0px auto;
	margin-top:10px;
	width: 600px;
}

.register-sub {
	background: #1E90FF;
	width: 200px;
	height: 35px;
	color: #fff;
	margin-top: 25px;
	margin-left: 100px;
	cursor:pointer;
	border-radius:15px;
	font-size:16px;
	border:solid rgb(100,100,100) 1px;
	outline:none;
}

#ulRegister li {
	margin-top: 30px;
}

input {
	margin-left: 4px;
}
span{font: 13px/1 Tahoma,Helvetica,Arial,"\5b8b\4f53",sans-serif;margin-left:5px;}
.warn{border:1px solid #FF0000;background:#FFD2D2;}
.inputRegister{border-radius:10px;border:solid rgb(100,100,100) 1px;width:220px;height:25px;outline:none;padding-left:4px;font-size:14px;}
.inputRegister:focus {border:1px solid #009ACD;}
</style>
<script type="text/javascript">
	
	function validateModify(){
		var realName=$("#realname").val();
		var phone=$("#phone").val();
		var address=$("#address").val();
		var email=$("#email").val();
		var flag=true;
		
		if ($.trim(address).length==0) {
			$("#address").focus();
			$("#address").addClass("warn");
			$("#address_tip").html("<font color='red'>地址不能为空</font>");
			flag=false;
		}
		if ($.trim(phone).length==0) {
			$("#phone").focus();
			$("#phone").addClass("warn");
			$("#phone_tip").html("<font color='red'>电话号码不能为空</font>");
			flag=false;
		}
		if ($.trim(realName).length==0) {
			$("#realname").focus();
			$("#realname").addClass("warn");
			$("#realname_tip").html("<font color='red'>真实姓名不能为空</font>");
			flag=false;
		}
		
		if ($.trim(phone).length!=0) {
			if (!(/^1[34578]\d{9}$/.test(phone))) {
				$("#phone").focus();
				$("#phone").addClass("warn");
				$("#phone_tip").html("<font color='red'>请填写正确的电话号码</font>");
				flag=false;
			}
		}
		if ($.trim(address).length>100) {
			$("#address").focus();
			$("#address").addClass("warn");
			$("#address_tip").html("<font color='red'>地址长度超出支持范围</font>");
			flag=false;
		}
		if ($.trim(email).length!=0) {
			if (!(/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/.test(email))) {
				$("#email").focus();
				$("#email").addClass("warn");
				$("#email_tip").html("<font color='red'>邮箱格式有误</font>");
				flag=false;
			}
		}
		
		/* 非空验证过后 */
		if(flag){
			var data={"user.id":$("#userId").val(),"user.realname":$("#realname").val(),"user.phone":$("#phone").val(),
				"user.address":$("#address").val(),"user.email":$("#email").val(),};
			$.ajax({
				url:"<%=basePath%>modifyUserInfo",
				type : "post",
				data : data,
				dataType : "json",
				error : function() {
					alert("连接失败");
				},
				success : function(data) {
					if (data.code == 0) {
						alert(data.msg);
						top.location.href="<%=basePath%>toHome";
					} else {
						alert(data.msg);
					}
				}
			});
		}
		;
	}
	/* 相应Enter */
// 	function go() {
// 		if (event.keyCode == 13) {
// 			$("#register").click();
// 		}
// 	}
	/* 键盘输入时判断输入框是否为空 */
	function checkNull(){
		var realName=$("#realname").val();
		var password=$("#password").val();
		var confirmPwd=$("#confirmPwd").val();
		var phone=$("#phone").val();
		var address=$("#address").val();
		var email=$("#email").val();
		
		if ($.trim(realName).length!=0) {
			$("#realname").removeClass("warn");
			$("#realname_tip").html("");
		}
		if ($.trim(password).length!=0) {
			$("#password").removeClass("warn");
			$("#password_tip").html("");
		}
		
		if ($.trim(confirmPwd).length!=0) {
			$("#confirmPwd").removeClass("warn");
			$("#confirmPwd_tip").html("");
		}
		if ($.trim(phone).length!=0) {
			$("#phone").removeClass("warn");
			$("#phone_tip").html("");
		}
		if ($.trim(address).length!=0) {
			$("#address").removeClass("warn");
			$("#address_tip").html("");
		}
		if ($.trim(email).length!=0) {
			$("#email").removeClass("warn");
			$("#email_tip").html("");
		}
	}
	
	$(function(){
		
	});
</script>
<a href="javascript:history.back(-1);" target="rightFrame">
	<img style="margin-left:50px;;margin-top:10px;" src="<%=basePath%>images/icons/back.png"></img>
</a>
<div id="main-login">
	<div class="register-area" onkeypress="go()">
			<form id="fromReg" style="margin-left:100px;padding:0px auto;margin-top:35px;;width:500px;" oninput="checkNull()">
				<input type="hidden" id="userId" value="${user.id }"/>
				<ul id="ulRegister" style="list-style: none;">
					<li style="font-size:30px;color:#009ACD;margin-left:70px;">编辑基本资料</li>
					<li style="margin-left:-2px;"><label for="realName"><img
							src="<%=basePath%>images/realname.png" align="absmiddle"></img>真实姓名<font color="#FF2626">*</font></label><input
						type="text" id="realname" class="inputRegister"  value="${user.realname }"/><span
						id="realname_tip"></span>
					</li>
					<li style="margin-left:-2px;"><label for="phone"><img
							src="<%=basePath%>images/phone.png" align="absmiddle"></img>电话号码<font color="#FF2626">*</font></label><input
						type="text" id="phone" class="inputRegister"  value="${user.phone }"/><span id="phone_tip"></span>
					</li>
					<li><label for="address"><img
							src="<%=basePath%>images/address.png" align="absmiddle"></img>地&nbsp;&nbsp;址<font color="#FF2626">*</font></label><input
						type="text" id="address"  class="inputRegister"  value="${user.address }"/><span
						id="address_tip"></span></li>
					<li><label for="email"><img
							src="<%=basePath%>images/email.png" align="absmiddle"></img>电子邮件<font color=""> </font></label><input
						type="text" id="email" class="inputRegister"  value="${user.email }"/><span id="email_tip"></span>
					</li>
				</ul>
				<input type="button" id="register" class="register-sub" value="保存修改" onclick="validateModify()" />
			</form>
	</div>
</div>
