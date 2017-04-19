<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.3.js"></script>
<style>
	#beMember{
		margin:0px auto;font-family:Arial,Helvetica,sans-serif;font-size:18px; line-height:1em;color:#4e4e4e; 
		width:700px;margin-top:20px;
	}
	#makeSure{margin-top:30px;line-height:32px;border:1px solid #949494;}
	input{
		width:200px;height:28px;border-radius:10px;border:solid rgb(100,100,100) 1px;
		margin-top:50px; outline:none; -webkit-appearance:none;
	}
	#sure{cursor: pointer;background:#BC8F8F;font-size:14px;color:#fff;margin-left:240px;}
</style>
<script type="text/javascript">
	
</script>

<a style="margin-left:40px;" href="javascript:;" onclick="javascript:history.back(-1);" target="rightFrame">
	<img src="<%=basePath%>images/icons/back.png"></img>
</a>

<div id="beMember">
	<!-- 不是会员的时候 -->
	<s:if test="%{#session.user.status==0}">
		<div>
			<font color="#000080" size="4">${user.realname }</font>&nbsp;，您好:<br/><br/>
			
			<font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注册成为会员需要阅读并同意以下协议，请您仔细阅读后点击确定按钮</font>	
		</div>
		<fieldset id="makeSure">
			<legend><img src="<%=basePath %>images/icons/gradeSe.png"></img>注册须知</legend>
			<p>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;尊敬的用户，注册成为会员之后你可享受优先停车、停车费用打折、点亮身份图
				标等。注册会员价格<font color="red">15元</font>/月，首次开通系统会自动为您每月续费。希望您注册成为
				会员之后，妥善保管你的账号密码。<font color="red">请勿将账号密码分享给其他人使用</font>，如果被我方发现将给予封号处理，
				届时您将无法用当前账号登录本网站。您可以按照流程申请账号解封，解封之后您将不再是会员身份。
			</p>
			
		</fieldset>
		<input type="button" id="sure" value="确定" onclick="javascript:location.href='<%=basePath%>toBeMember'"/>
	</s:if>
	<!-- 已经是会员的时候 -->
	<s:else>
		<div>
			<font color="#000080" size="4">${user.realname }</font>，您好:<br/><br/>
			<font size="5" color="#EE7600" style="margin:20px;">&nbsp;&nbsp;&nbsp;&nbsp;您当前已经是会员身份&nbsp;@~^_^~@!!</font>
			<br/>
			<p style="line-height:30px;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您可以在本网站享受多个优惠政策，停车收费将是普通用户的<font size="5" color="#1E90FF">75%</font>!另外，法定节假日时网站将推出抽奖大放送，系统会在众多会员之中随机抽取出幸运用户，
				有幸被抽中的用户将会获得网站送出的精美大礼包！高不高兴？开不开心？
			
			</p>
		</div>
	</s:else>
</div>