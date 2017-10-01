<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSP Page</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/css/bootstrap-theme.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/css/bootstrap-responsive.min.css" />

	</head>

	<body class="login">
		<div>
			<a class="hiddenanchor" id="signup"></a>
			<a class="hiddenanchor" id="signin"></a>

			<div class="login_wrapper">
				<div class="animate form login_form">
					<section class="login_content">
						<form action="un/long1" method="post">
							<h1>开发者平台</h1>
							<div>
								<input type="text" class="form-control" name="user" placeholder="请输入用户名" required="" />
							</div>
							<div>
								<input type="password" class="form-control" name="password" placeholder="请输入密码" required="" />
							</div>
							<span>${error }</span>
							<div>
								<button type="submit" class="btn btn-success">登     录</button>
								<button type="reset" class="btn btn-default">重　填</button>
							</div>

							<div class="clearfix"></div>

							<div class="separator">
								<div>
									<p>©2016 All Rights Reserved. </p>
								</div>
							</div>
						</form>
					</section>
				</div>
			</div>
		</div>

		<script src="${pageContext.request.contextPath }/statics/js/jquery-3.2.1.js"></script>
		<script src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>

	</body>

</html>