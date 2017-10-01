<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/bootstrap-theme.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/bootstrap-responsive.min.css" />

</head>

<body>
	<div class="page-header">
		<h1>
			论坛系统 <small>(*^_^*)</small>
		</h1>
		<div class="alert alert-warning alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			<strong>你好! ${webuse} <a href="tui">退出</a></strong>亲
		</div>
	</div>
	<div class="panel panel-default">

		<div class="panel-heading">帖子</div>

		<!-- Table -->
		<table class="table">

			<tr>
				<th>帖子标题</th>
				<th>帖子摘要</th>
				<th>作者</th>
				<th>创建时间</th>
			</tr>
			<c:forEach items="${InvitationList}" var="List">
				<tr>
					<td>${List.title}</td>
					<td>${List.summary}</td>
					<td>${List.author}</td>
					<td>${List.createdate}</td>
					<td><a href="huifu?uid=${List.id}">查看回复</a> </td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<nav aria-label="...">
		<ul class="pagination">
			<c:if test="${currentPageNo>1}">
				<li class="disabled"><a href="mdao?currentPageNo=${currentPageNo-1}" aria-label="Previous"><span
						aria-hidden="true">上一页</span></a></li>
			</c:if>
			<li class="active">${currentPageNo}/${totalPageCount}</li>
			<c:if test="${currentPageNo<totalPageCount}">
				<li><a href="mdao?currentPageNo=${currentPageNo+1}" aria-label="Next"> <span aria-hidden="true">下一页</span></a>
				</li>
			</c:if>
		</ul>
	</nav>

	<script
		src="${pageContext.request.contextPath }/statics/js/jquery-3.2.1.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js"
		type="text/javascript" charset="utf-8"></script>
</body>

</html>