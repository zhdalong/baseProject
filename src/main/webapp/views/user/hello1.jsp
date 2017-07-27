<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Multiple Accordion Panels - jQuery EasyUI Demo</title>
<link rel="stylesheet" type="text/css" href="/baseProject/css/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/baseProject/css/themes/icon.css">
<link rel="stylesheet" type="text/css" href="/baseProject/css/themes/icon1.css">
<script type="text/javascript" src="/baseProject/js/jquery.min.js"></script>
<script type="text/javascript" src="/baseProject/js/jquery.easyui.min.js"></script>
<meta charset="UTF-8"/>
<script>
	$(function(){ 
		/* $('#tt').datagrid('load', {
			name:1,
			pwd :2
		}); */
	});   
	function doSubmit() {
		
		alert("加载le")
	}
</script>
<script type="text/javascript">
	var toolbar = [ {
		text : 'Add',
		iconCls : 'icon-add',
		handler : function() {
			alert('add')
		}
	}, {
		text : 'Cut',
		iconCls : 'icon-cut',
		handler : function() {
			alert('cut')
		}
	}, '-', {
		text : 'Save',
		iconCls : 'icon-save',
		handler : function() {
			alert('save')
		}
	} ];
</script>
</head>
<body class="easyui-layout">

	<div data-options="region:'east',split:true" title="查询"
		style="width: 160px;">
		<input type="button" id="searchButton" onclick="doSubmit()" value="查询" />
	</div>
	<div data-options="region:'center',iconCls:'icon-ok'">
		<table id="tt" class="easyui-datagrid"
			data-options="
				url:'list',
     			method:'get',
     			border:false,
     			singleSelect:true,
     			fit:true,
     			fitColumns:true,
     			toolbar:toolbar,
     			pagination:true,
     			rownumbers:true,
     			pageSize:10 ">
			<thead>
				<tr>
					<th data-options="field:'name'" width="80">name</th>
					<th data-options="field:'age'" width="100">age</th>
					<!-- <th data-options="field:'listprice',align:'right'" width="80">List Price</th>
					<th data-options="field:'unitcost',align:'right'" width="80">Unit Cost</th>
					<th data-options="field:'attr1'" width="150">Attribute</th>
					<th data-options="field:'status',align:'center'" width="60">Status</th> -->
				</tr>
			</thead>
		</table>
	</div>
</body>
</html>