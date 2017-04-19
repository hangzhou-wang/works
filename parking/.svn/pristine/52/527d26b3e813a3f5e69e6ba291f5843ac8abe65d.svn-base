<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=basePath %>js/zySearch.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.easyui.min.js"></script>
<link rel="stylesheet" href="<%=basePath %>css/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath %>css/themes/icon.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath %>css/style.css" type="text/css"></link>

<style type="text/css">
	#searchUser{border:1px solid black;width:80%;height:70%;margin:0px auto;}
</style>
<a href="<%=basePath %>toCtrlUser" target="rightFrame">
	<img style="margin-left:50px;;margin-top:10px;" src="<%=basePath%>images/icons/back.png"></img>
</a>
<div onkeypress="go()" class="zySearch" id="zySearch"></div>
<script type="text/javascript">
	function go() {
		if (event.keyCode == 13) {
			$(".search-btn").click();
		}
	}
	
	$("#zySearch").zySearch({
		"width":"500",
		"height":"40",
		"parentClass":"pageTitle",
		"callback":function(keyword){
			console.info("搜索的关键字");
			console.info(keyword);
		}
	});
	
</script>