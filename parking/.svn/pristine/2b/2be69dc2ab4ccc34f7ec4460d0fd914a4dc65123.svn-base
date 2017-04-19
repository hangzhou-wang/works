<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.easyui.min.js"></script>
<link rel="stylesheet" href="<%=basePath %>css/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath %>css/themes/icon.css" type="text/css"></link>
<style>
	#users{width:98%;height:75%;margin:0px auto;}
	#usersTable{width:80%;margin:20px auto;text-align:center;border-color:#ccc;color:#5B5B5B;}
	#usersTable a{text-decoration:none;color:#CD0000;}
	#usersTable .head td{padding:10px;font-size:18px;color:#030303;background:#ccc;}
	#usersPage{width:80%;height:50px;text-align:center;margin-top:20px;margin-left:114px;}
	#pageUl{list-style: none;height:40px;font-size:13px;}
	#pageUl li{border:1px solid black;border-color:#FF6347;padding:2px 6px;display:inline;line-height:11px;}
	#pageUl a{text-decoration:none;}
</style>
<script>
	function killedUser(id){
		parent.$.messager.confirm('封号?','确定封印当前用户吗?',function(r){    
		    if (r){
		        location.href="<%=basePath%>killUser.action?user_id="+id;
		    }
		});
	}
	function livedUser(id){
		parent.$.messager.confirm('解封?','确定解封当前用户吗?',function(r){    
		    if (r){
		        location.href="<%=basePath%>liveUser.action?user_id="+id;
		    }
		});
	}
</script>
<a style="margin-left:40px;" href="<%=basePath %>toCtrlUser" target="rightFrame">
	<img src="<%=basePath%>images/icons/back.png"></img>
</a>
<div id="users">
	<table id="usersTable" border="1" cellSpacing="0">
		<tr class="head">
			<td>编号</td>
			<td>用户名</td>
			<td>真实姓名</td>
			<td>联系方式</td>
			<td>注册日期</td>
			<td>身份</td>
			<td>操作</td>
		</tr>
		<s:iterator value="userList">
			<tr>
				<td><s:property value="id"/></td>
				<td><s:property value="name"/></td>
				<td><s:property value="realname"/></td>
				<td><s:property value="phone"/></td>
				<td><s:date name="regdate" format="yyyy-MM-dd"/></td>
				<td>
					<s:if test="status==0">
						<font color="#1E90FF">普通用户</font>
					</s:if>
					<s:elseif test="status==3">
						<font color="#FF7F00">尊贵会员</font>
					</s:elseif>
					<s:elseif test="status==2">
						<font color="#FF0000">封印用户</font>
					</s:elseif>
				</td>
				<td>
					<s:if test="status==2">
						<a style="color:#4876FF;" href="javascript:;" onclick="livedUser(<s:property value='id'/>)">解封</a>
					</s:if>
					<s:else>
					<a href="javascript:;" onclick="killedUser(<s:property value='id'/>)">封号</a>
					</s:else>
				</td>
			</tr>
		</s:iterator>
	</table>
</div>
<div id="usersPage">
	<ul id="pageUl">
		<s:if test="currentPage==1">
			<li style="float:left;margin-left:-29px;width:50px;height:13px;background:#ccc;cursor:pointer;">上一页</li>
		</s:if>
		<s:else>
			<a href="<%=basePath%>getUsers.action?currentPage=<s:property value="currentPage-1"/>">
				<li style="float:left;margin-left:-29px;width:50px;height:13px;">上一页</li>
			</a>
		</s:else>
		<s:iterator begin="1" end="totalPage">
		
		
			<s:if test="currentPage==top">
				<a href="<%=basePath%>getUsers.action?currentPage=<s:property value='top'/>">
					<li style="background:#FF8C69;color:#fff;"><s:property value="top"/></li>
				</a>
			</s:if>
			<s:else>
				<a href="<%=basePath%>getUsers.action?currentPage=<s:property value='top'/>">
					<li><s:property value="top"/></li>
				</a>
			</s:else>
		</s:iterator>
		<s:if test="currentPage==totalPage">
			<li style="float:right;width:50px;height:13px;background:#ccc;cursor:pointer;">下一页</li>
		</s:if>
		<s:else>
			<a href="<%=basePath%>getUsers.action?currentPage=<s:property value="currentPage+1"/>">
				<li style="float:right;width:50px;height:13px;">下一页</li>
			</a>
		</s:else>
	</ul>
</div>