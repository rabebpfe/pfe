
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from clabs.co/projects/optimus/login.html by HTTrack Website Copier/3.x [XR&CO'2013], Thu, 03 Apr 2014 14:54:02 GMT -->


<!-- start: Meta -->
<meta charset="utf-8">
<title><spring:message code="label.Login" /></title>
<meta name="description"
	content="Optimus Dashboard Bootstrap Admin Template.">
<meta name="author" content="Łukasz Holeczek">
<!-- end: Meta -->

<!-- start: Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- end: Mobile Specific -->
<!-- start: CSS -->
<link id="bootstrap-style"
	href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
<link
	href="<c:url value="/resources/css/bootstrap-responsive.min.css" />"
	rel="stylesheet">
<link id="base-style" href="<c:url value="/resources/css/style.css" />"
	rel="stylesheet">
<link id="base-style-responsive"
	href="<c:url value="/resources/css/style-responsive.css" />"
	rel="stylesheet">

<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

<!-- start: Favicon -->
<link rel="shortcut icon" href="img/favicon.ico">
<!-- end: Favicon -->
<head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">

			<div class="row-fluid">
				<div class="login-box">
					<div class="icons"></div>
					<h2>
						<spring:message code="label.Login_to_your_account" />
					</h2>
					<font color="red"> <span>${sessioScoop["SPRING_SECURITY_LAST_EXEPTION"].message}</span>
					</font>
					<form class="form-horizontal" action='j_spring_security_check'
						method="POST">




						<div class="input-prepend" title="Username">
							<span class="add-on"><i class="icon-user"></i></span> <input
								class="input-large span10" name='j_username' id="username"
								type="text" placeholder=<spring:message code="label.Username" /> />
						</div>
						<div class="clearfix"></div>

						<div class="input-prepend" title="Password">
							<span class="add-on"><i class="icon-lock"></i></span> <input
								class="input-large span10" name='j_password' id="password"
								type="password"
								placeholder=<spring:message code="label.Password" /> />
						</div>
						<div class="clearfix"></div>

						<label class="remember" for="remember"><input
							type="checkbox" name="_spring_security_remember_me" /> <spring:message
								code="label.Remember_me" /></label>

						<div class="btn-group button-login">

							<button type="submit" name="submit" class="btn btn-primary"
								value="login">
								<spring:message code="label.Login" />
							</button>
						</div>
						<div class="clearfix"></div>
					</form>


					<hr>
					<h3>
						<spring:message code="label.Forgot" />
					</h3>
					<p>
						<spring:message code="label.No_problem" />
						<a href="passWordRec"> <spring:message code="label.click_here" /></a>
						<spring:message code="label.to_get_a_new_password" />
					</p>
				</div>
				<!--/span-->
			</div>
			<!--/row-->

		</div>
		<!--/fluid-row-->

	</div>
	<!--/.fluid-container-->

	<!-- start: JavaScript-->

	<script src="<c:url value="/resources/js/jquery-1.7.2.min.js" />"></script>

	<script
		src="<c:url value="/resources/js/jquery-ui-1.8.21.custom.min.js" />"></script>

	<script src="<c:url value="/resources/js/bootstrap.js" />"></script>

	<script src="<c:url value="/resources/js/jquery.cookie.js" />"></script>

	<script src="<c:url value="/resources/js/fullcalendar.min.js" />"></script>

	<script src="<c:url value="/resources/js/jquery.dataTables.min.js" />"></script>

	<script src="<c:url value="/resources/js/excanvas.js" />"></script>

	<script src="<c:url value="/resources/js/jquery.flot.min.js" />"></script>

	<script src="<c:url value="/resources/js/jquery.flot.pie.min.js" />"></script>

	<script src="<c:url value="/resources/js/jquery.flot.stack.js" />"></script>

	<script src="<c:url value="/resources/js/jquery.flot.resize.min.js" />"></script>



	<script src="<c:url value="/resources/js/jquery.chosen.min.js" />"></script>

	<script src="<c:url value="/resources/js/jquery.uniform.min.js" />"></script>

	<script src="<c:url value="/resources/js/jquery.cleditor.min.js" />"></script>

	<script src="<c:url value="/resources/js/jquery.noty.js" />"></script>

	<script src="<c:url value="/resources/js/jquery.elfinder.min.js" />"></script>


	<script src="<c:url value="/resources/js/jquery.raty.min.js" />"></script>

	<script src="<c:url value="/resources/js/jquery.iphone.toggle.js" />"></script>

	<script
		src="<c:url value="/resources/js/jquery.uploadify-3.1.min.js" />"></script>


	<script src="<c:url value="/resources/js/jquery.gritter.min.js" />"></script>

	<script src="<c:url value="/resources/js/jquery.imagesloaded.js" />"></script>

	<script src="<c:url value="/resources/js/jquery.masonry.min.js" />"></script>

	<script src="<c:url value="/resources/js/custom.js" />"></script>

	<!-- end: JavaScript-->
</head>

</body>


</html>

