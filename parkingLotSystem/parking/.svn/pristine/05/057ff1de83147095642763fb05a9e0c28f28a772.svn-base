<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<style type="text/css">
	#notice{width:46%;height:90%;float:left;margin-left:20px;margin-top:10px;}
	#lostAndFound{width:47%;height:90%;float:right;margin-right:20px;margin-top:10px;}
</style>
<div id="notice">
	<fieldset style="height:490px;border-color:#F2F2F2;">
		<legend><img src="<%=basePath %>images/notice.png"></img><font color="#009ACD" size="6" style="宋体">公告</font></legend>
		<jsp:include page="/jsp/wel/welLeft.jsp"/>
	</fieldset>
	
</div>
<div id="lostAndFound">
	<fieldset style="height:490px;border-color:#F2F2F2;">
		<legend><img src="<%=basePath %>images/icons/lostfound.png"></img><font color="#009ACD" size="6" style="宋体">寻物启事</font></legend>
		<jsp:include page="/jsp/wel/welRight.jsp"/>
	</fieldset>
</div>
