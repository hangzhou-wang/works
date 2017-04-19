<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<style type="text/css">
	#PLMain{margin:0px auto;overflow:hidden;}
	#PLDiv{margin-left:63px;display:block;margin-top:80px;}
	#PLDiv:hover{background:#EBEBEB;}
	
	.clA{text-decoration: none;}
	.rightDiv{float:left;color:#4F4F4F;width:160px;height:160px;
		border-radius:80px;border:solid rgb(100,100,100) 1px;text-align: center;
		line-height: 160px;font-size: 25px;font-weight: bold;}
</style>
<script>


</script>

<div id="PLMain">
	<s:iterator value="parkingLots">
		<a href="<%=basePath %>getPLInfoById.action?pl_id=<s:property value='id'/>" target="rightFrame">
			<div id="PLDiv" class="rightDiv"><s:property value="id"/>号车库</div>
		</a>
	</s:iterator>
	<a href="<%=basePath %>toAddPL" target="rightFrame">
		<div class="rightDiv" style="font-size:100px;font-weight:lighter;margin-left:63px;margin-top:80px;">+</div>
	</a>
</div>

