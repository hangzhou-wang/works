<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<style type="text/css">
	#queryTable{margin:20px auto;}
	
	#userBill{background:#98F5FF;}
	#userBill:hover{background:#00FFFF;}
	
	#parkingRecord{background:#DDA0DD;}
	#parkingRecord:hover{background:#DA70D6;}
	
	#userOrder{background:#4EEE94;}
	#userOrder:hover{background:#00EE76;}
	.clA{text-decoration: none;color:#68228B;}
	.rightDiv{margin:50px;width:150px;height:150px;border-radius:75px;border:solid rgb(100,100,100) 1px;text-align: center;border:1px solid black;line-height: 150px;font-size: 25px;font-weight: bold;}
	.rightDiv:hover{border:3px solid #1E90FF;}
</style>

<table id="queryTable">
  <tr>
  	<td><a class="clA" href="<%=basePath %>getCRByUserId" target="rightFrame"><div id="parkingRecord" class="rightDiv">停车记录</div></a></td>
  	<td><a class="clA" href="" target="rightFrame"><div id="userBill" class="rightDiv">账单</div></a></td>
  	<td><a class="clA" href="" target="rightFrame"><div id="userOrder" class="rightDiv">订单查询</div></a></td>
  </tr>
</table>