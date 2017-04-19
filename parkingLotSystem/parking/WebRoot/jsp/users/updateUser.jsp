<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.3.js"></script>
<link rel="stylesheet" href="<%=basePath %>css/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath %>css/themes/icon.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath%>css/lucky.css" type="text/css"></link>
<style>
	#updateInfo{
		margin:0px auto;font-family:Arial,Helvetica,sans-serif;font-size:18px; line-height:1em;color:#4e4e4e; 
		width:500px;margin-top:80px;margin-left:460px;
	}
	#updateInfo	.listyle{ margin-left:-80px;padding:10px;margin-top:20px; }
	input{
		width:200px;height:28px;border-radius:10px;border:solid rgb(100,100,100) 1px;
		margin-top:30px; outline:none; -webkit-appearance:none;padding-left:4px;font-size:14px;
	}
	input:focus {border:1px solid #009ACD;}
	#save{cursor: pointer;background:#BC8F8F;font-size:14px;color:#fff;}
	span{font: 13px/1 Tahoma,Helvetica,Arial,"\5b8b\4f53",sans-serif;margin-left:5px;}
	.warn{border:1px solid #FF0000;background:#FFD2D2;}
</style>
<script type="text/javascript">
	function modifyBegin(){
		var flag=true;
		var newPwd=$("#password").val();
		var makeSure=$("#makeSure").val();
		
		if ($.trim(newPwd).length==0) {
			$("#password_tip").html("<font color='red'>新密码不能为空</font>");
			$("#password").addClass("warn");
			$("#password").focus();
			flag=false;
		}
		
		if ($.trim(makeSure).length==0) {
			$("#makeSure_tip").html("<font color='red'>确认密码不能为空</font>");
			$("#makeSure").addClass("warn");
			$("#makeSure").focus();
			flag=false;
		}
		if (makeSure!=newPwd) {
			$("#makeSure_tip").html("<font color='red'>两次密码输入不一致</font>");
			$("#makeSure").addClass("warn");
			$("#makeSure").focus();
			flag=false;
		}
		if ($.trim(newPwd).length!=0) {
			if ($.trim(newPwd).length<6||$.trim(newPwd).length>16) {
				$("#password").focus();
				$("#password").addClass("warn");
				$("#password_tip").html("<font color='red'>密码长度需在6到16位之间</font>");
				flag=false;
			}
		}
		
		if (flag) {
			$.ajax({
				url:"<%=basePath%>modifyPwd",
				type:"post",
				data:{"newPwd":$("#password").val()},
				dataType:"json",
				error:function(){alert("连接失败");},
				success:function(data){
					switch (data.code) {
						case 0:
							/* parent.$.messager.alert('提示','修改成功,请重新登录'); */
							alert(data.msg+',请重新登录');
							top.location.href="<%=basePath%>toGetIn";
							break;
						case 1:
							alert(data.mag+"请稍后重试");
							break;
						default:
						    break;
						}
					}
				});
		}
	}
	
	function checkNull() {
		var newPwd=$("#password").val();
		var makeSure=$("#makeSure").val();
		
		if ($.trim(newPwd).length>0) {
			$("#password_tip").html("");
			$("#password").removeClass("warn");
		}
		
		if ($.trim(makeSure).length>0) {
			$("#makeSure_tip").html("");
			$("#makeSure").removeClass("warn");
		}
	}
</script>

<a href="javascript:;" onclick="javascript:history.back(-1);" target="rightFrame">
	<img style="margin-left:45px;margin-top:10px;" src="<%=basePath%>images/icons/back.png"></img>
</a>

<form id="updateInfo" action="" method="post" onkeypress="checkNull()">
	<ul style="list-style: none;">
		<li><font size="6">更改用户密码</font></li>
		<li class="listyle">
			<label for="password">
				<img src="<%=basePath%>images/password.png" align="absmiddle"></img>
					新&nbsp; 密&nbsp; 码<font color="#FF2626">*</font>
				</label><input type="password" id="password" />
			<span id="password_tip"></span>
		</li>
		<li class="listyle" style="margin-top:-15px;">
			<label for="makeSure">
				<img src="<%=basePath%>images/confirm.png" align="absmiddle"></img>
					确认密码<font color="#FF2626">*</font>
				</label><input type="password" id="makeSure" />
			<span id="makeSure_tip"></span>
		</li>
		<li>
			<input type="button" id="save" value="保存" onclick="modifyBegin()"/>
		</li>
	</ul>
</form>
