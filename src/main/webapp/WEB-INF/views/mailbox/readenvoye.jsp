<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title><spring:message code="label.Projects" /></title>

<!-- Bootstrap core CSS -->
<link
	href="<c:url value="/resources/production/css/bootstrap.min.css" />"
	rel="stylesheet">



<link
	href="<c:url value="/resources/production/fonts/css/font-awesome.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/production/css/animate.min.css" />"
	rel="stylesheet">

<!-- Custom styling plus plugins -->
<link href="<c:url value="/resources/production/css/custom.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/production/css/icheck/flat/green.css" />"
	rel="stylesheet">


<script src="<c:url value="/resources/production/js/jquery.min.js" />"></script>



</head>
<div class="">

	<div class="page-title">
		<div class="title_left">
			<h3>

				<small> </small>
			</h3>
		</div>

		<div class="title_right">
			<div
				class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
				<div class="input-group">
					<input type="text" class="form-control"
						placeholder="<spring:message code="label.Search" />"> <span
						class="input-group-btn">
						<button class="btn btn-default" type="button">
							<spring:message code="label.Go" />
						</button>
					</span>
				</div>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>

	<div class="row">

		<div class="col-md-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>
						<spring:message code="label.Envoye" />
						<small>User Mail</small>
					</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>

						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">


					<div class="row">

						<div class="col-sm-3 mail_list_column">

									
						<c:forEach var="message_envoye" items="${message_envoye}">
							<div class="mail_list">
								<div class="left">
									<i class="fa fa-star"></i>
								</div>
								<div class="right">
									<h3>
									<a href="readenvoye?idMail=${message_envoye.idMail}">${message_envoye.user.username} </a><small>
									${message_envoye.hours} :
									${message_envoye.munite} PM</small>
									</h3>
									<p>${message_envoye.message}</p>
									
								</div>
							</div>
							</c:forEach>
							
						



						</div>
						<!-- /MAIL LIST -->


						<!-- CONTENT MAIL -->
						<div class="col-sm-9 mail_view">
							<div class="inbox-body">
								<div class="mail_heading row">
									<div class="col-md-8">
										<div class="compose-btn">
											<a class="btn btn-sm btn-primary" href="supprMail?idMail=${msg.idMail}"><i
												class="fa fa-trash-o"
												onclick="return confirm('Etes vous sûre de vouloir supprimer cette message ?');"></i> <spring:message
													code="label.delete" /></a>
												<a class="btn btn-sm btn-primary" href="compose"><i
												class="fa fa-reply"></i> <spring:message
													code="label.Compose" /></a>
											
											
										</div>

									</div>
									<div class="col-md-4 text-right">
										<p class="date">${msg.hours}:
									${msg.munite} PM ${msg.day} ${msg.month}</p>
									</div>
									<div class="col-md-12">
										<h4>${msg.sujet }</h4>
									</div>
								</div>
								<div class="sender-info">
									<div class="row">
										<div class="col-md-12">
											<strong></strong>${msg.user.username} <span>(${msg.user.email} )</span> to
											<strong>me</strong> <a class="sender-dropdown"><i
												class="fa fa-chevron-down"></i></a>
										</div>
									</div>
								</div>
								<div class="view-mail">
									<p>${msg.message }</p>
								</div>
								
								
							</div>

						</div>
						<!-- /CONTENT MAIL -->
					</div>
				</div>
			</div>
		</div>



		<script
			src="<c:url value="/resources/production/js/bootstrap.min.js" />"></script>

		<!-- chart js -->
		<script
			src="<c:url value="/resources/production/js/chartjs/chart.min.js" />"></script>
		<!-- bootstrap progress js -->
		<script
			src="<c:url value="/resources/production/js/progressbar/bootstrap-progressbar.min.js" />"></script>
		<script
			src="<c:url value="/resources/production/js/nicescroll/jquery.nicescroll.min.js" />"></script>
		<!-- icheck -->
		<script
			src="<c:url value="/resources/production/js/icheck/icheck.min.js" />"></script>

		<script src="<c:url value="/resources/production/js/custom.js" />"></script>