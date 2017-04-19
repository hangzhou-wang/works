<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.easyui.min.js"></script>
<link rel="stylesheet" href="<%=basePath %>css/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath %>css/themes/icon.css" type="text/css"></link>
<style type="text/css">
	#userTable{margin:20px auto;}
	#modifyUserInfo{background:#66CDAA;}
	#modifyUserInfo:hover{background:#20B2AA;}
	
	#beMenmber{background:#FFF68F;}
	#beMenmber:hover{background:#FFFF00;}
	
	#exchang{background:#FFFFE0;}
	#exchang:hover{background:#FFE4B5;}
	
	#nullify{background:#FFB5C5;}
	#nullify:hover{background:#FF82AB;}
	
	#exit{background:#CDC0B0;}
	#exit:hover{background:#CDAF95;}
	
	#lostAndFound{background:#CD96CD;}
	#lostAndFound:hover{background:#CD69C9;}
	
	#more:hover{background:#EBEBEB;}
	
	.clA{text-decoration: none;}
	.rightDiv{color:#4F4F4F;margin:50px;width:150px;height:150px;border-radius:75px;border:solid rgb(100,100,100) 1px;text-align: center;border:1px solid black;line-height: 150px;font-size: 25px;font-weight: bold;}
	.rightDiv:hover{border:3px solid #1E90FF;}
</style>
<table id="userTable">
  <tr>
  	<td>
  		<a class="clA" href="<%=basePath %>updateUser" target="rightFrame">
  			<div id="modifyUserInfo" class="rightDiv">修改密码</div>
  		</a>
  	</td>
  	<td>
  		<a class="clA" href="<%=basePath %>sureBeMember" target="rightFrame" target="rightFrame">
	  		<div id="beMenmber" class="rightDiv">会员注册</div>
	  	</a>
  	</td>
  	<td>
	  	<a class="clA" href="<%=basePath %>getLostByUserId" target="rightFrame">
	  		<div id="lostAndFound" class="rightDiv">寻物启事</div>
	   </a>
  	</td>
  	<td>
  		<a class="clA" href="<%=basePath %>jsp/users/nullifyUser.jsp" target="rightFrame">
  			<div id="nullify" class="rightDiv">注销账号</div>
	  	</a>
  	</td>
  </tr>
  <tr>
	  <td>
		  <a class="clA" href="javascript:;" onclick="more()">
		 	 <div id="more" class="rightDiv">更多..</div>
		  </a>
	  </td>
  </tr>
</table>
<script type="text/javascript">
	function more(){
		top.$.messager.alert('提示','尽请期待');
	}
</script>