<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/bootstrap-theme.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/bootstrap-responsive.min.css" />

</head>
<body>
	<form action="addmao" method="post">
		<div class="form-group">

			<label for="exampleInputEmail1">回复内容</label> <input type="text"
				name="content" class="form-control"> <span></span> <input
				type="hidden" class="form-control" name="Invid" value="${huiid }">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">回复人昵称</label> <input type="text"
				class="form-control" name="author"> <span></span>
		</div>
		<button type="submit" class="btn btn-default">Submit</button>
	</form>

	<script
		src="${pageContext.request.contextPath }/statics/js/jquery-3.2.1.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js"
		type="text/javascript" charset="utf-8"></script>

</body>
</html>