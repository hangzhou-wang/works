<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=basePath %>js/scrollQ.js"></script>
<script type="text/javascript">
$(function(){
  $("#noticeUl").scrollQ();
});
</script>
<style>
	#notice{width:100%;}
	#noticeUl{list-style: none;height:87%;margin-top:-2px;}
	#noticeUl li img{margin-right:10px;}
	#noticeUl li a{text-decoration: none;color:#104E8B;}
	#noticeUl li a:hover{text-decoration:underline;}
	#noticePublish{margin:0;padding:0;text-align:right;padding-right:30px;}
	#noticePublish a{text-decoration:none;color:#104E8B;}
</style>
<s:if test="%{#session.user.status!=1}">
	<div style="height:20px;"></div>
</s:if>
<s:else>
	<div id="noticePublish"><a href="<%=basePath %>toPublishNotice"><img align="absmiddle" src="<%=basePath %>images/icons/newNotice.png"></img>发布</a></div>
</s:else>
<ul id="noticeUl">
	<s:iterator value="noticeList">
		<li>
			<a href="<%=basePath %>getNoticeById.action?notice_id=<s:property value='id'/>" target="welLeft">
				<img src="<%=basePath %>images/icons/entry.png"></img><s:property value="title"/>
			</a>
		</li>
	</s:iterator>
	
</ul>
