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
<script type="text/javascript" src="<%=basePath %>js/jquery.easyui.min.js"></script>
<link rel="stylesheet" href="<%=basePath %>css/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath %>css/themes/icon.css" type="text/css"></link>
<style>/* background:#00B2EE; */
	*{margin:0;padding:0;}
	#addPSa{text-decoration:none;color:#fff;}
	#plDeal{border: 1px solid #888;width:400px;height:200px;
	margin-left:765px;margin-top:60px;position:absolute;
	text-align:center;color:#fff;
	}
	#plDeal .deal{width:100%;font-size:30px;
		height:50px;line-height:50px;background:#9E9E9E;}
	#plDeal .addPLdiv{width:50%;float:left;font-size:20px;
		height:150px;line-height:150px;background:#00B2EE;}
	#plDeal .addPLdiv:hover{background:#009ACD}
	#plDeal .delPLdiv{width:50%;float:right;font-size:20px;
		height:150px;line-height:150px;background:#EE6363;}
	#plDeal .delPLdiv:hover{background:#EE4000}
	#plDeal:hover{}
</style>
<script type="text/javascript">
	$(function(){
		$('table').visualize({type: 'pie', pieMargin: 10, title: '开设和未开设的车位百分比'});
	});
	/* 新增车位 */
	function addPSforPL(){
		top.$.messager.confirm('提示','点击OK按钮完成新增车位操作',function(r){
			if (r) {
				var pl_has="<s:property value='parkingLot.volume-psCount'/>";
				var pl_id="<s:property value='parkingLot.id'/>"; 
				if (pl_has<=0) {
					top.$.messager.alert('提示','当前车库已满，无法完成新增车位操作');
				}else{
					var data={"parkingSpace.parkinglot.id":"<s:property value='parkingLot.id'/>","parkingSpace.intime":null,"parkingSpace.status":"0","parkingSpace.price":"8"};
					$.ajax({
						url:"<%=basePath%>addPSforPL",
						type:"post",
						data:data,
						dataType:"json",
						error:function(){alert('连接出错');},
						success:function(data){
							if (data.code==0) {
								alert(data.msg);
								location.href="<%=basePath%>getPLInfoById.action?pl_id="+pl_id;	
							}else{
								top.$.messager.alert('提示',data.msg);
							}
						}
					});
				}
			}
		});
	}
	/* 删除车库 */
	function delPL(){
		var pl_id="<s:property value='parkingLot.id'/>";
		top.$.messager.confirm('提示','确定要删除'+pl_id+'号车库吗?',function(r){    
		    if (r){
				$.ajax({
					url:"<%=basePath%>delPL",
					type:"post",
					data:{"pl_id":pl_id},
					dataType:"json",
					error:function(){alert("连接失败");},
					success:function(data){
						if (data.code==0) {
							alert(data.msg);
							location.href="<%=basePath %>getParkingLots";
						}else{
							top.$.messager.alert('提示',data.msg);
						}
					}
				});
		    }
		});
		
	}
</script>

<a href="javascript:;" onclick="javascript:history.back(-1);" target="rightFrame">
	<img style="margin-left:45px;margin-top:10px;" src="<%=basePath%>images/icons/back.png"></img>
</a>
<h2 style="margin-left:40px;margin-top:20px;"><s:property value="psCount"/>/<s:property value="parkingLot.volume"/></h2>
<div id="plDeal">
	<div class="deal">操作</div>
	<a id="addPSa" href="javascript:addPSforPL();" >
		<div class="addPLdiv">新增车位</div>
	</a>
	<a id="addPSa" href="javascript:delPL();<s:property value='parkingLot.id'/>" >
		<div class="delPLdiv">删除车库</div>
	</a>
</div>


<table style="display:none;">
	<caption>开设和未开设的车位百分比</caption>
	<thead>
		<tr>
			<td></td>
			<th>车位数</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th>已开设</th>
			<td>
				<s:property value="psCount"/>
			</td>
		</tr>
		<tr>
			<th>未开设</th>
			<td><s:property value="parkingLot.volume-psCount"/></td>
		</tr>
	</tbody>
</table>