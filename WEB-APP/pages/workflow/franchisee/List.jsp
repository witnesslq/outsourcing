<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib uri="/struts-tags" prefix="s"%>
<%@  page import="com.zh.base.util.JspUtil" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><s:property value="getText('COM.OSFI.WINDOW.TITLE')" /></title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/theme.css">
<link rel="stylesheet" href="<%=path%>/css/font-awesome.css">
<script type="text/javascript" src="<%=path%>/js/jquery.js"></script>
<script type="text/javascript" src="<%=path%>/js/jqPaginator.min.js"></script>
<!-- Demo page code -->
<style type="text/css">
#line-chart {
	height: 300px;
	width: 800px;
	margin: 0px auto;
	margin-top: 1em;
}

.brand {
	font-family: georgia, serif;
}

.brand .first {
	color: #ccc;
	font-style: italic;
}

.brand .second {
	color: #fff;
	font-weight: bold;
}
</style>
<link href="<%=path%>/img/favicon_32.ico" rel="bookmark" type="image/x-icon"/>
<link href="<%=path%>/img/favicon_32.ico" rel="icon" type="image/x-icon" />
<link href="<%=path%>/img/favicon_32.ico" rel="shortcut icon" type="image/x-icon"/>
<link rel="stylesheet" href="<%=path%>/js/datetimepicker/bootstrap-datetimepicker.css"/>
<link rel="stylesheet" href="<%=path%>/js/select2/select2.css">
</head>
<!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
<!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
<!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
<!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<body class="">
<jsp:useBean id="userName" class="com.zh.base.util.JspUtil" scope="session"></jsp:useBean>
	<!--<![endif]-->
	<%@ include file="/pages/common/titleWithNav.jsp"%>
	<%@ include file="/pages/common/sidebarWithNav.jsp"%> 
	<div class="content">
		<div class="header">
			<div class="stats">
				<p class="stat">
					<span class="number">53</span>tickets
				</p>
				<p class="stat">
					<span class="number"><s:property value="#session.taskSize"/></span>tasks
				</p>
				<p class="stat">
					<span class="number">15</span>waiting
				</p>
			</div>

			<h1 class="page-title" id="menu2Name">&nbsp;</h1>
		</div>

		<ul class="breadcrumb">
			<li><a href="<%=path%>/home/main.jspa">主页</a> <span class="divider">/</span></li>
			<li class="active" id="navigation"></li>
		</ul>

		<div class="container-fluid">
			<div class="row-fluid">
				<div class="row-fluid">
				
					<div>
						<form action="${menu2Id}.jspa?menuId=${menuId}&menu2Id=${menu2Id}" id="queryForm" method="post">
							<input id="curPage" name="pageInfo.curPage" value="${pageInfo.curPage}" type="hidden"/>
							<input type="hidden" name="spaceId" value="${spaceId}">
							<dir class="row">
								<div class="span5">
									<label class="control-label">流程编号：
										<input type="number" maxlength="15" id="inputId" name="franchiseeBO.id"
											value="" class="input-large">
										</label>
								</div>
								<div class="span4">
									<label class="control-label">名称：
										<input type="text" maxlength="15" id="inputId" name="franchiseeBO.fcName"
											value="${franchiseeBO.fcName}" class="input-large">
										</label>
								</div>
							</dir>
							
							
							<dir class="row">
								<div class="span5">
									<label class="control-label">合同种类：
										<select id="contracttype" class="input-large" placeholder="合同种类" name="franchiseeBO.fcContractType">
													<option value="">请选择</option>
													<option value="A">A类</option>
													<option value="B">B类</option>
													<option value="C">C类</option>
												</select>
								</div>
								<div class="span4">
									
								</div>
								<div class="span3">
									<button class="btn" type="button" id="btnSubmit">
										<i class=" icon-search"></i> 搜索
									</button>
			
									<button class="btn" type="button" id="btnClear">
										<i class="icon-remove"></i> 清除
									</button>
								</div>
							</dir>
						</form>
					</div>
					
					
					<div class="well">
						<table class="table">
							<thead>
								<tr>
									<th>流程编号</th>
									<th>名称</th>
									<th>地址</th>
									<th>状态</th>
									<th>合同类型</th>
									<th>合同开始时间</th>
									<th>合同结束时间</th>
									<th>创建人</th>
									<th style="width: 32px;">操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="franchiseeBOList" var="fb" status="index">
									<tr>
										<td>
											<a href="<%=path%>/${spaceId}/${menu2Id}!editor.jspa?formId=<s:property value='#fb.id'/>&menuId=${menuId}&menu2Id=${menu2Id}&spaceId=${spaceId}">
												<s:property value="#fb.changeNumber"/>
											</a>
										</td>
										<td><s:property value="#fb.fcName"/></td>
										<td><s:property value="#fb.fcAddress"/></td>
										<td><s:property value="#fb.status"/></td>
										<td><s:property value="#fb.fcContractType"/></td>
										<td><s:property value="#fb.fcContractStartDate"/></td>
										<td><s:property value="#fb.fcContractEndDate"/></td>
										<td><s:property value="#fb.ownerName"/></td>
										<td>
											<a href="<%=path%>/<s:property value="spaceId"/>/${menu2Id}!editor.jspa?formId=<s:property value='#fb.id'/>&menuId=${menuId}&menu2Id=${menu2Id}&spaceId=${spaceId}">
												<i class="icon-pencil"></i>
											</a>
										</td>
									</tr>
								</s:iterator>
							</tbody>
						</table>
					</div>
					<div class="pagination">
						<ul id="pagination">
						</ul>					
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="/pages/common/footer.jsp"%>
	<script src="<%=path%>/js/bootstrap.js"></script>
	<script src="<%=path %>/js/collapsePulg.js"></script>
	<script src="<%=path%>/js/datetimepicker/bootstrap-datetimepicker.js"></script>
	<script src="<%=path%>/js/datetimepicker/bootstrap-datetimepicker.zh-CN.js"></script>
	<script src="<%=path%>/js/select2/select2.js"></script>
	<script src="<%=path%>/js/select2/select2_locale_zh-CN.js"></script>
	<script type="text/javascript">
		$("[rel=tooltip]").tooltip();
		var id='${menuId}';
		var menuid='${menu2Id}';
		var totalPage = ${pageInfo.totalPage};
		var totalRow = ${pageInfo.totalRow};
		var pageSize = ${pageInfo.pageSize};
		var curPage = ${pageInfo.curPage};
		$(function() {
			$('.demo-cancel-click').click(function() {
				return false;
			});
			var headText = $("#" + menuid).text();
			$("#menu2Name").text(headText);
			$("#navigation").text(headText);
			//展开一级菜单
			collapseMenu(id);
			$("#contracttype").select2();
			//日期控件
			$(".form_datetime").datetimepicker({
				language : 'zh-CN',
				format : 'yyyy-mm-dd',
				weekStart : 1,
				todayBtn : 1,
				autoclose : 1,
				todayHighlight : 1,
				startView : 2,
				minView : 2,
				forceParse : true
			});
			
			//提交按钮
			$("#btnSubmit").click(function(){
				$('#curPage').val("");
				$('#queryForm').submit();
			});
			
			//清空按钮
			$("#btnClear").click(function(){
				$("#inputId").val("");
				$("#inputDescription").val("");
				$("#inputState").val("");
				$("#createTimeStart").val("");
				$("#createTimeEnd").val("");
				$('#curPage').val("");
			});
			
			$.jqPaginator('#pagination', {
				//设置分页的总页数
		        totalPages: totalPage,
		        //设置分页的总条目数
		        totalCounts:totalRow,
		        pageSize:pageSize,
		        //最多显示的页码
		        visiblePages: 10,
		        currentPage: curPage,
		        onPageChange: function (num, type) {
		           if("init"==type){
		        	 	return false;  
		        	}
		           	$('#curPage').val(num);
		        	$('#queryForm').submit();
		        	//document.getElementsByName("operateForm")[0].submit(); 
		        }
		    });
			
		});
		
		function addObject(name)
		{
			var url=url + "?menuId="+id+"&menu2Id="+menuId;
			
		}
		
	</script>
</body>
</html>