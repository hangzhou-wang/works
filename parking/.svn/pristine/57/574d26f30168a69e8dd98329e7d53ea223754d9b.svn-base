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
	#lost{margin:20px auto;width:96%;height:80%;}
	#myLostTable{width:70%;margin:10px auto;text-align:center;border-color:#1E90FF;color:#68228B;}
	#myLostTable a{text-decoration:none;color:#008B45;}
	#myLostTable a:hover{text-decoration:underline;}
</style>
<a style="margin-left:40px;" href="<%=basePath %>toUserCenter" target="rightFrame">
	<img src="<%=basePath%>images/icons/back.png"></img>
</a>
<script>
	function hadFound(id){
		top.$.messager.confirm('提示','确定失物已经找回吗?',function(r){    
		    if (r){
		        location.href="<%=basePath%>hadFoundLost.action?lost_id="+id;
		    }
		});
	}
</script>
<div id="lost">
	<div style="width:70%;margin:0px auto;text-align:center;color:#68228B;"><font size="6">我&nbsp;发&nbsp;布&nbsp;的</font></div>
	<table id="myLostTable" border="1" cellSpacing="0">
		<tr style="background:#ccc;font-size:20px;">
			<td>编号</td>
			<td>物品名称</td>
			<td>发布日期</td>
			<td>操作</td>
		</tr>
		<s:if test="lostAndFounds.size()==0">
			<tr><td colspan="4" style="color:#4D4D4D;"><img src="<%=basePath%>images/icons/empty.png" align="absmiddle"></img>您当前还没有发布过寻物启事……</td></tr>
		</s:if>
		<s:iterator value="lostAndFounds">
			<input type="hidden" id="lost_id" value="<s:property value='id'/>"/>
			<tr>
				<td><s:property value="id"/></td>
				<td><s:property value="name"/></td>
				<td><s:date name="publishDate" format="yyyy-MM-dd HH:mm:ss"/></td>
				<td><a href="javascript:;" onclick="hadFound(<s:property value='id'/>)" >找到了</a></td>
			</tr>
		</s:iterator>
	</table>
</div>