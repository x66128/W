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
	<div class="panel panel-default">

		<div class="panel-heading">
			回复界面 <a href="mdao">退出</a>
		</div>
		<a href="yemian">添加评论</a>
		<!-- Table -->
		<table class="table">
			
			<tr>
				<th>回复内容</th>
				<th>回复人昵称</th>
				<th>回复时间</th>
			</tr>
			<c:forEach items="${ReplyDetailList}" var="List">
				<tr>
					<td>${List.content}</td>
					<td>${List.author}</td>
					<td>${List.createdate}</td>
				</tr>
			</c:forEach>
		</table>
		
	</div>
	<nav aria-label="...">
		<ul class="pagination">
			<c:if test="${currentPageNo>1}">
				<li class="disabled"><a
					href="huifu?uid=${huiid}&currentPageNo=${currentPageNo-1}" aria-label="Previous"><span
						aria-hidden="true">上一页</span></a></li>
			</c:if>
			<li class="active">${currentPageNo}/${totalPageCount}</li>
			<c:if test="${currentPageNo<totalPageCount}">
				<li><a href="huifu?uid=${huiid}&currentPageNo=${currentPageNo+1}"
					aria-label="Next"> <span aria-hidden="true">下一页</span></a></li>
			</c:if>
		</ul>
	</nav>
	</nav>

	<script
		src="${pageContext.request.contextPath }/statics/js/jquery-3.2.1.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js"
		type="text/javascript" charset="utf-8"></script>
</body>

</html>