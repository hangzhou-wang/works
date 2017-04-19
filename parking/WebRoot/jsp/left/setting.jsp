<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<style type="text/css">
	#queryTable{margin:20px auto;}
	#no1{}
	#no1:hover{}
	.clA{text-decoration: none;}
	.rightDiv{margin:50px;width:150px;height:150px;border-radius:75px;border:solid rgb(100,100,100) 1px;text-align: center;border:1px solid black;line-height: 150px;font-size: 25px;font-weight: bold;}
</style>

<table id="queryTable">
  <tr>
  	<td><a class="clA" href="" target="rightFrame"><div id="no1" class="rightDiv">第一车库</div></a></td>
  	<td><a class="clA" href="" target="rightFrame"><div id="no2" class="rightDiv">第二车库</div></a></td>
  	<td><a class="clA" href="" target="rightFrame"><div id="no3" class="rightDiv">第三车库</div></a></td>
  	<td><a class="clA" href="" target="rightFrame"><div id="no4" class="rightDiv">第四车库</div></a></td>
  </tr>
  <tr>
  <td><a class="clA" href="" target="rightFrame"><div id="no5" class="rightDiv">第五车库</div></a></td>
  <td><a class="clA" href="" target="rightFrame"><div id="no6" class="rightDiv">第六车库</div></a></td>
  <td><a class="clA" href="" target="rightFrame"><div id="no7" class="rightDiv">第七车库</div></a></td>
  </tr>
</table>