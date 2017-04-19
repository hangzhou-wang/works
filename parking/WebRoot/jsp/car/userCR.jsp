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
<style type="text/css">
	#userCR{margin:20px auto;width:96%;height:73%;}
	#myCRTable{width:75%;margin:30px auto;text-align:center;border-color:#8A8A8A;color:#104E8B;}
	#myCRTable a{text-decoration:none;color:#008B45;}
	
	#userCRPage{width:60%;height:50px;text-align:center;margin-left:230px;}
	#pageUl{list-style: none;height:40px;font-size:13px;}
	#pageUl li{border:1px solid black;border-color:#436EEE;padding:2px 6px;display:inline;line-height:11px;}
	#pageUl a{text-decoration:none;}
</style>
<a style="margin-left:40px;" href="<s:if test='%{#session.userFind==null}'><%=basePath%>toQuery</s:if><s:else><%=basePath%>toUserInfo</s:else>" target="rightFrame">
	<img src="<%=basePath%>images/icons/back.png"></img>
</a>
<script>
	function delUserCR(id){
		top.$.messager.confirm('提示','确定要删除该停车记录吗?',function(r){    
		    if (r){
		        location.href="<%=basePath %>delUserCR.action?cr_id="+id;
		    }
		});
	}
</script>
<div id="userCR">
	<table id="myCRTable" border="1" cellSpacing="0">
		<tr><td colspan="6" style="background:#ccc;"><font size="6">停车记录</font></td></tr>
		<tr>
			<s:if test="%{#session.user.status!=1}">
				<td>编号</td>
			</s:if>
			<td>车位编号</td>
			<td>停车时间</td>
			<td>开出时间</td>
			<td>单次花费</td>
			<s:if test="%{#session.user.status!=1}">
				<td>操作</td>
			</s:if>
		</tr>
		<s:if test="carRecords.size()==0">
			<tr><td colspan="6" style="color:#4D4D4D;text-align:center;"><img src="<%=basePath%>images/icons/message.png" align="absmiddle"></img>当前还没有停车记录……</td></tr>
		</s:if>
		<s:iterator value="carRecords">
			<tr>
				<s:if test="%{#session.user.status!=1}">
					<td><s:property value="id"/></td>
				</s:if>
				<td><s:property value="parkingSpace.id"/></td>
				<td><s:date name="intime" format="yyyy-MM-dd HH:mm"/></td>
				<td><s:date name="outtime" format="yyyy-MM-dd HH:mm"/></td>
				<td><s:property value="totalPrice"/>元</td>
				<s:if test="%{#session.user.status!=1}">
					<td><a href="javascript:;" onclick="delUserCR(<s:property value='id'/>)" >删除</a></td>
				</s:if>
			</tr>
		</s:iterator>
	</table>
</div>
<s:if test="carRecords.size()>0">
	<div id="userCRPage">
		<ul id="pageUl">
			<s:if test="currentPage==1">
				<li style="float:left;margin-left:-29px;width:50px;height:13px;background:#ccc;cursor:pointer;">上一页</li>
			</s:if>
			<s:else>
				<a href="<%=basePath%>getCRByUserId.action?user_id=${userFind.id }&currentPage=<s:property value="currentPage-1"/>">
					<li style="float:left;margin-left:-29px;width:50px;height:13px;">上一页</li>
				</a>
			</s:else>
			<s:iterator begin="1" end="totalPage">
			
			
				<s:if test="currentPage==top">
					<a href="<%=basePath%>getCRByUserId.action?user_id=${userFind.id }&currentPage=<s:property value='top'/>">
						<li style="background:#4876FF;color:#fff;"><s:property value="top"/></li>
					</a>
				</s:if>
				<s:else>
					<a href="<%=basePath%>getCRByUserId.action?user_id=${userFind.id }&currentPage=<s:property value='top'/>">
						<li><s:property value="top"/></li>
					</a>
				</s:else>
			</s:iterator>
			<s:if test="currentPage==totalPage">
				<li style="float:right;width:50px;height:13px;background:#ccc;cursor:pointer;">下一页</li>
			</s:if>
			<s:else>
				<a href="<%=basePath%>getCRByUserId.action?user_id=${userFind.id }&currentPage=<s:property value="currentPage+1"/>">
					<li style="float:right;width:50px;height:13px;">下一页</li>
				</a>
			</s:else>
		</ul>
	</div>
</s:if>