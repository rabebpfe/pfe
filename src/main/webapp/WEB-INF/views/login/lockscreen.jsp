<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="label.Lockscreen" /></title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.4 -->

<link
	href="<c:url value="/resources/bootstrap1/css/bootstrap.min.css" />"
	rel="stylesheet">
<!-- Font Awesome Icons -->
<link
	href="<c:url value="/resources/bootstrap1/css/font-awesome.min.css" />"
	rel="stylesheet">
<!-- Theme style -->
<link
	href="<c:url value="/resources/bootstrap1/css/AdminLTE.min.css" />"
	rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="lockscreen">
	<!-- Automatic element centering -->
	<div class="lockscreen-wrapper">

		<!-- User name -->
		<div class="lockscreen-name">${sessionScope.username}</div>

		<!-- START LOCK SCREEN ITEM -->
		<div class="lockscreen-item">
			<!-- lockscreen image -->
			<div class="lockscreen-image">
				<img src="photoUser?idUser=${user.idUser}">
			</div>
			<!-- /.lockscreen-image -->

			<!-- lockscreen credentials (contains the form) -->
			<form class="lockscreen-credentials" action='j_spring_security_check'
				method="POST">
				<input style="display: none;" input-large span10" name='j_username'
					id="username" type="text" 
					value="${sessionScope.username}" />

				<div class="input-group">
					<input type="password" class="form-control"
						placeholder="<spring:message code="label.Password" />"
						name='j_password' />
					<div class="input-group-btn">
						<button class="btn">
							<i class="fa fa-arrow-right text-muted"></i>
						</button>
					</div>
				</div>
			</form>
			<!-- /.lockscreen credentials -->

		</div>
		<!-- /.lockscreen-item -->
		<div class="help-block text-center">
			<spring:message code="label.session" />
		</div>
		<div class="text-center">
			<a href="login.html"> <spring:message code="label.sign" /></a>
		</div>

	</div>
	<!-- /.center -->


</body>
</html>
