<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<style type="text/css">
	#lostAndFound{width:100%;height:86%;}
	#lostAndFound .lostUl{list-style: none;}
	#page{width:98%;height:30px;text-align:center;position:absolute;margin-left:-20px;}
	.lostUl li{padding:3px 0px;}
	.lostUl li img{margin-right:10px;}
	.lostUl li a{text-decoration: none;color:#68228B;}
	.lostUl li a:hover{text-decoration:underline;}
	#publish{margin-left:420px;text-decoration: none;color:#000080;}
	#publish:hover{color:#1874CD;}
	#pageUl{list-style: none;height:35px;font-size:12px;}
	#pageUl li{border:1px solid black;border-color:#68228B;padding:2px 6px;display:inline;line-height:10px;}
	#pageUl a{text-decoration:none;}
</style>
<div id="lostAndFound">
	<a id="publish" href="<%=basePath %>jsp/wel/publishLost.jsp" target="welRight"><img align="absmiddle" src="<%=basePath %>images/icons/found.png"></img>发布</a>
	<ul class="lostUl">
		<s:iterator value="lostAndFounds">
			<li>
				<a href="<%=basePath %>getLostById.action?lost_id=<s:property value='id'/>" target="welRight">
					<img src="<%=basePath %>images/icons/thingIcon.png"></img>
					用户[<s:property value="user.name"/>]
					丢失了&lt;<s:property value="name"/>&gt;
					---<s:date name="publishDate" format="yyyy-MM-dd"/>
				</a>
			</li>
		</s:iterator>
	</ul>
</div>
<div id="page">
	<ul id="pageUl">
		<s:if test="currentPage==1">
			<li style="float:left;width:40px;height:12px;background:#ccc;cursor:pointer;">上一页</li>
		</s:if>
		<s:else>
			<a href="<%=basePath%>getLosts.action?currentPage=<s:property value="currentPage-1"/>">
				<li style="float:left;width:40px;height:12px;">上一页</li>
			</a>
		</s:else>
		<s:iterator begin="1" end="totalPage">
		
		
			<s:if test="currentPage==top">
				<a href="<%=basePath%>getLosts.action?currentPage=<s:property value='top'/>">
					<li style="background:#68228B;color:#fff;"><s:property value="top"/></li>
				</a>
			</s:if>
			<s:else>
				<a href="<%=basePath%>getLosts.action?currentPage=<s:property value='top'/>">
					<li><s:property value="top"/></li>
				</a>
			</s:else>
		</s:iterator>
		<s:if test="currentPage==totalPage">
			<li style="float:right;width:40px;height:12px;background:#ccc;cursor:pointer;">下一页</li>
		</s:if>
		<s:else>
			<a href="<%=basePath%>getLosts.action?currentPage=<s:property value="currentPage+1"/>">
				<li style="float:right;width:40px;height:12px;">下一页</li>
			</a>
		</s:else>
	</ul>
</div>