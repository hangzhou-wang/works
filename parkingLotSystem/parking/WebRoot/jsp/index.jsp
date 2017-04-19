<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>停车场管理系统-首页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="<%=basePath %>js/jquery.easyui.min.js"></script>
	<link rel="stylesheet" href="<%=basePath %>css/themes/default/easyui.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=basePath %>css/themes/icon.css" type="text/css"></link>
	<style type="text/css">
		*{padding:0px; margin:0px;}
		a{ text-decoration:none;}
		.box{position:relative; padding:-1px;opacity:0.5;z-index:4;  opacity:1; }
		.boxNO{ width:101%;height:100%; margin:0 auto;top:0px; display:none; z-index:5; position:fixed; background:rgba(0, 0, 0, 0.52) none repeat scroll 0% 0%; opacity:1;}
		.login5{ width:680px; height:65px; background:#009ACD; text-align:center; position:relative; margin:150px auto 0px auto;}
		.login5 h2{ font-size:30px; line-height:65px; color:#ffffff;}
		.login5 a{ background:url(images/icons/login_reg.png) 0px 0px no-repeat; position:absolute; width:16px; height:16px; right:10px; top:25px;}
		.login51{ width:600px; padding:40px 40px 50px; margin:0 auto; background:#EFEFEF; height:240px; }
		.divShare{float:left;width:70px;text-align:center;font-size:13px;color:#8F8F8F;margin-left:40px;
			margin-top:20px;cursor:pointer;}
		.divShare:hover{color:#009ACD;}
		#divShareQQ{float:left;width:70px;text-align:center;font-size:13px;color:#8F8F8F;margin-left:40px;
			margin-top:20px;cursor:pointer;}
		#divShareQQ:hover{color:#009ACD;}
		
		
		body{background:#009ACD;/* background:url("images/background/index_bkg.jpg") repeat fixed!important; */}
		#head{ width:100%;height:153px;margin-top:10px;color:#fff;}
		#main{ width:100%;height:600px;margin:0px;padding:0px;}
		#main .left{width:18%;height:600px;float: left;text-align: center;}
		#main .right{width:79%;height:600px;float:right;border-radius:20px;border:solid rgb(100,100,100) 1px;
			margin-right:20px;background:#FFFFFF;}
		#foot{width:100%;height:100px;text-align: center;}
	</style>
	<script type="text/javascript">
		$(function(){
			$('#one').click(function(){
				$('.boxNO').show();
			});
			$('.login5 a').click(function(){
				$('.boxNO').hide();
			});
			$('.divShare').click(function(){
				$.messager.alert('提示','还真点!^_^~^_^!你想多了客官');
			});
		});
	</script>
  </head>
  <s:if test="%{#session.user!=null}">
  	 <body>
	  	 <input type="hidden" id="one"/>
	  	 <div class="box">
			<div class="boxNO">
				<div class="login5">
					<h2>分享到应用</h2>
					<a class="close" href="javascript:;"></a>
				</div>
				<div class="login51">
					<a href="whzQQ://" style="text-decoration:none;">
						<div id="divShareQQ">
							<img src="<%=basePath%>images/icons/QQ.png"></img>QQ
						</div>
					</a>
					<div class="divShare">
						<img src="<%=basePath%>images/icons/WeXin.png"></img>微信
					</div>
					<div class="divShare">
						<img src="<%=basePath%>images/icons/WeiBo.png"></img>新浪微博
					</div>
					<div class="divShare">
						<img src="<%=basePath%>images/icons/momo.png"></img>陌陌
					</div>
					<div class="divShare">
						<img src="<%=basePath%>images/icons/tencent.png"></img>腾讯微博
					</div>
					<div class="divShare">
						<img src="<%=basePath%>images/icons/alipay.png"></img>支付宝
					</div>
					<div class="divShare">
						<img src="<%=basePath%>images/icons/qzone.png"></img>QQ空间
					</div>
					<div class="divShare">
						<img src="<%=basePath%>images/icons/Twiter.png"></img>Twiter
					</div>
					<div class="divShare" style="width:90px;">
						<img src="<%=basePath%>images/icons/facebook.png"></img>Facebook
					</div>
				</div>
			</div>
		 </div>
		 
    	 <div>
    		<div id="head"><jsp:include page="/jsp/common/head.jsp"/></div>
	    		<div id="main">
	    			<div class="left"><jsp:include page="/jsp/common/left.jsp"/></div>
	    			<div class="right"><jsp:include page="/jsp/common/right.jsp"/></div>
	    		</div>
    		<div id="foot"><jsp:include page="/jsp/common/footer.jsp"/></div>
    	 </div>
  	</body>
  </s:if>
  <s:else>
  		<h1>登录之后才能访问此网站。<a href="<%=basePath %>toGetIn">登录</a></h1>
  </s:else>

</html>
