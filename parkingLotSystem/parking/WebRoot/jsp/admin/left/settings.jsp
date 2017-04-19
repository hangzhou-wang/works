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
	#SettingTable{margin:20px auto;}
	#overWeb{background:#EED5B7;}
	#overWeb:hover{background:#EEC591;}
	
	#killBugs{background:#FFB5C5;}
	#killBugs:hover{background:#FF82AB;}
	
	#more:hover{background:#EBEBEB;}
	
	.clA{text-decoration: none;}
	.rightDiv{color:#4F4F4F;margin:50px;width:150px;height:150px;border-radius:75px;border:solid rgb(100,100,100) 1px;text-align: center;border:1px solid black;line-height: 150px;font-size: 25px;font-weight: bold;}
	.rightDiv:hover{border:3px solid #1E90FF;}
</style>
<script>
	function more(){
		top.$.messager.alert('提示','尽请期待');
	}
</script>
<table id="SettingTable">
  <tr>
  	<td>
  		<a class="clA" href="javascript:;" target="rightFrame">
  			<div id="overWeb" class="rightDiv">封锁网站</div>
  		</a>
  	</td>
  	<td>
  		<a class="clA" href="whzOwn://" target="rightFrame">
	  		<div id="killBugs" class="rightDiv">扩展应用</div>
	  	</a>
  	</td>
  <td>
	  <a class="clA" href="javascript:;" onclick="more()">
	 	 <div id="more" class="rightDiv">更多..</div>
	  </a>
  </td>
  </tr>
</table>