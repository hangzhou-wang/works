<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.3.js"></script>
<link type="text/css" rel="stylesheet" href="<%=basePath %>css/visualize.jQuery.css"/>
<link type="text/css" rel="stylesheet" href="<%=basePath %>css/demopage.css"/>
<script type="text/javascript" src="<%=basePath %>js/visualize.jQuery.js"></script>
<script type="text/javascript">
	$(function(){
		//make some charts
		$('table').visualize({type: 'pie', pieMargin: 10, title: '2009 Total Sales by Individual'});	
		$('table').visualize({type: 'line'});
		$('table').visualize({type: 'area'});
		$('table').visualize();
	});
</script>
<a href="<%=basePath %>getRPInfo">测试</a>

<table style="">
	<caption>月份收益折线图</caption>
	<thead>
		<tr>
			<td></td>
			<s:iterator value="reportdResults">
				<th><s:property value="quarter"/>月</th>
			</s:iterator>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th>收益</th>
			<s:iterator value="reportdResults">
				<td><s:property value="money"/></td>
			</s:iterator>
		</tr>
	</tbody>
</table>
<ul>
	<s:iterator value="reportdResults">
			<li><s:property value="money"/>------------<s:property value="quarter"/></li>
	</s:iterator>
</ul>