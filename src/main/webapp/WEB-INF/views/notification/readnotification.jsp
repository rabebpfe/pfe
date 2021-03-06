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




</head>
<div class="">

	
	<div class="clearfix"></div>

	<div class="row">

		<div class="col-md-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>
					
						<small></small>
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

									
						<c:forEach var="notificationAll" items="${notificationAll}">
							<div class="mail_list">
								<div class="left">
									<i class="fa fa-star"></i>
								</div>
								<div class="right">
									<h3>
									<a href="readnotification?idNotification=${notificationAll.idNotification}">${notificationAll.users.username}</a><small>${notificationAll.hours} :
									${notificationAll.munite} PM</small>
									</h3>
									<p>${notificationAll.description}</p>
									
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
											<a class="btn btn-sm btn-primary" href="supprNotification?idNotification=${notif.idNotification}"><i
												class="fa fa-trash-o"
												onclick="return confirm('Etes vous s�re de vouloir supprimer cette message ?');"></i> <spring:message
													code="label.delete" /></a>
											
											
											
										</div>

									</div>
									<div class="col-md-4 text-right">
										<p class="date">${notif.hours}:
									${notif.munite} PM ${notif.day} ${notif.month}</p>
									</div>
									<div class="col-md-12">
									
									</div>
								</div>
								<div class="sender-info">
									<div class="row">
										<div class="col-md-12">
										 ${notif.users.username} <span>(${notif.users.email} )</span> 	<strong>to</strong>
											<strong>me</strong>  <a class="sender-dropdown"><i
												class="fa fa-chevron-down"></i></a>
										</div>
									</div>
								</div>
								<div class="view-mail">
									<p>${notif.description }</p>
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