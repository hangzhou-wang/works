<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.text.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<style type="text/css">
	#plost{width:100%;}
	#lostTable{margin-top:30px;margin:10px auto;font-family:"Arial","Microsoft YaHei","黑体","宋体",sans-serif;color:#000080;}
	#lostTable td{padding-top:10px;}
	#publishNotice{background:#009ACD;color:#fff;margin-top:30px;width:120px;height:28px;border-radius:10px;border:solid rgb(100,100,100) 1px;outline:none; -webkit-appearance:none;cursor: pointer;}
	span{font: 13px/1 Tahoma,Helvetica,Arial,"\5b8b\4f53",sans-serif;margin-left:5px;}
	.warn{border:1px solid #FF0000;background:#FFD2D2;}
</style>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	function clickNotice(){
		var flag=true;
		var title=$("#title").val();
		var content=$("#content").val();

		if ($.trim(title).length==0) {
			$("#title_tip").html("<font color='red'>请填写标题</font>");
			$("#title").addClass("warn");
			$("#title").focus();
			flag=false;
		}
		
		if ($.trim(content).length==0) {
			$("#content_tip").html("<font color='red'>请填写内容</font>");
			$("#content").addClass("warn");
			$("#content").focus();
			flag=false;
		}
		
		if (flag) {
			$("#noticeForm").submit();
		}
	}
	
	function checkNull() {
		var title=$("#title").val();
		var content=$("#content").val();
		
		if ($.trim(title).length > 0) {
			$("#title_tip").html("");
			$("#title").removeClass("warn");
		}
		if ($.trim(content).length > 0) {
			$("#content_tip").html("");
			$("#content").removeClass("warn");
		}
	}
</script>
<%
	String datetime=new SimpleDateFormat("yyyy-MM-dd HH:mm").format(Calendar.getInstance().getTime());
 %>
<div id="plost">
	<a style="margin-left:20px;" href="javascript:;" onclick="javascript:history.back(-1);" target="welLeft">
		<img src="<%=basePath %>images/icons/welback.png"></img>
	</a>
	<form id="noticeForm" action="<%=basePath %>addNotice" method="post" oninput="checkNull()">
		<input type="hidden" name="lostAndFound.status" value="0"/>
		<table id="lostTable">
			<tr>
				<td colspan="2" style="text-align:center;"><font size="5">新公告</font></td>
			</tr>
			<tr>
				<td><img src="<%=basePath%>images/icons/title.png" align="absmiddle">标题</td>
				<td><input id="title" type="text" name="notice.title"/></td>
				<td><span id="title_tip"></span></td>
			</tr>
			<tr>
				<td style="margin-top:-20px;"><img src="<%=basePath%>images/icons/content.png" align="absmiddle">内容</td>
				<td><textarea id="content" rows="4" cols="30"  name="notice.content"></textarea></td>
				<td><span id="content_tip"></span></td>
			</tr>
			<tr>
				<td><img src="<%=basePath%>images/icons/publishTime.png" align="absmiddle">日期 </td>
				<td><input id="publishDate" type="text" name="notice.publishdate" value="<%=datetime%>" readonly="readonly"/></td>
				<td><span id="publishDate_tip"></span></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
					<input type="button" id="publishNotice" onclick="clickNotice()" value="发布"/>
				</td>
			</tr>
		</table>
	</form>
</div>
