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
	#PSTable{margin:20px auto;}
	#moneyLine{background:#00FA9A;}
	#moneyLine:hover{background:#00EE76;}
	
	#yearReport{background:#00EEEE;}
	#yearReport:hover{background:#00CED1;}
	
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
<table id="PSTable">
  <tr>
  	<td>
  		<a class="clA" href="<%=basePath %>getRPInfo" target="rightFrame">
  			<div id="moneyLine" class="rightDiv">收益统计</div>
  		</a>
  	</td>
  	<td>
  		<a class="clA" href="javascript:;" target="rightFrame">
	  		<div id="yearReport" class="rightDiv">年度报表</div>
	  	</a>
  	</td>
  <td>
	  <a class="clA" href="javascript:;" onclick="more()">
	 	 <div id="more" class="rightDiv">更多..</div>
	  </a>
  </td>
  </tr>
</table>