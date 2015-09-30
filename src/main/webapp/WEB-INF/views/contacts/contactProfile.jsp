<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html lang="en">

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
				<spring:message code="label.User_Profile" />
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
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>
						<spring:message code="label.User_Report" />
						<small> <spring:message code="label.Activity_report" /></small>
					</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>

						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">

					<div class="col-md-3 col-sm-3 col-xs-12 profile_left">

						<div class="profile_img">

							<!-- end of image cropping -->
							<div id="crop-avatar">
								<!-- Current avatar -->
								<div class="avatar-view">
						
									<img src="photoUser?idUser=${user.idUser} ">
								</div>

								<!-- Cropping modal -->
								<div class="modal fade" id="avatar-modal" aria-hidden="true"
									aria-labelledby="avatar-modal-label" role="dialog"
									tabindex="-1"></div>
								<!-- /.modal -->

								<!-- Loading state -->
								<div class="loading" aria-label="Loading" role="img"
									tabindex="-1"></div>
							</div>
							<!-- end of image cropping -->

						</div>
				
						<h3>${user.username}</h3>

						<ul class="list-unstyled user_data">
							<li><i class="fa fa-map-marker user-profile-icon"></i>${user.adresse }
							</li>



							<li class="m-top-xs"><i
								class="fa fa-external-link user-profile-icon"></i> <a
								href="https://mail.google.com/" target="_blank">${user.email}</a>
							</li>
						</ul>


						<br />

						<!-- start skills -->
						<h4>
							<spring:message code="label.Skills" />
						</h4>

						<c:forEach var="skills" items="${skills}">
							<ul class="list-unstyled user_data">
								<li>
									<p>${skills.nomSkills}</p>
									<div class="progress progress_sm">
										<div class="progress-bar bg-green" role="progressbar"
											data-transitiongoal="50"></div>
									</div>
								</li>


							</ul>
						</c:forEach>
						<!-- end of skills -->

					</div>
					<div class="col-md-9 col-sm-9 col-xs-12">

						<div class="profile_title">
							<div class="col-md-6">
								<h2>
									<spring:message code="label.User_Activity_Report" />
								</h2>
							</div>
							<div class="col-md-6">
								
							</div>
						</div>
						<!-- start of user-activity-graph -->
						<div id="graph_bar" style="width: 100%; height: 280px;"></div>
						<!-- end of user-activity-graph -->

						<div class="" role="tabpanel" data-example-id="togglable-tabs">
							<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
								<li role="presentation" class="active"><a
									href="#
content1" id="home-tab" role="tab" data-toggle="tab"
									aria-expanded="true"><spring:message
											code="label.Recent_Activity" /></a></li>
								
									<li role="presentation" class=""><a href="#tab_content2"
										role="tab" id="profile-tab" data-toggle="tab"
										aria-expanded="false"><spring:message
												code="label.Projects_Worked_on" /></a></li>
						


							</ul>
							<div id="myTabContent" class="tab-content">
								<div role="tabpanel" class="tab-pane fade active in"
									id="tab_content1" aria-labelledby="home-tab">

									<!-- start recent activity -->
									<ul class="messages">
										<c:forEach var="Activity" items="${Activity}">
											<li><img src="photoUser?idUser=${user.idUser} "
												class="avatar" alt="Avatar">
												<div class="message_date">
													<h3 class="date text-error">${Activity.day}</h3>
													<p class="month">${Activity.month}</p>
												</div>
												<div class="message_wrapper">
													<h4 class="heading">${user.username}</h4>
													<blockquote class="message">${Activity.description}</blockquote>
													<br />
													<p class="url">
														<span class="fs1" aria-hidden="true" data-icon="?"></span>

													</p>
												</div></li>
										</c:forEach>



									</ul>
									<!-- end recent activity -->

								</div>
								<div role="tabpanel" class="tab-pane fade" id="tab_content2"
									aria-labelledby="profile-tab">

									<!-- start user projects -->
									<table class="data table table-striped no-margin">
										<thead>
											<tr>

												<th><spring:message code="label.Project_Name" /></th>
												<th><spring:message code="label.State" /></th>
												<th class="hidden-phone"><spring:message
														code="label.Hours_Spent" /></th>
												<th><spring:message code="label.Contribution" /></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="Project" items="${Project}">
												<tr>


													<td>${Project.nom}</td>
													<td>${Project.status}</td>
													<td class="hidden-phone">${Project.estimation_dure}</td>
													<td class="vertical-align-mid">
														<div class="progress">
															<div class="progress-bar progress-bar-info"
																data-transitiongoal="80"></div>
														</div>
													</td>
												</tr>
											</c:forEach>

										</tbody>
									</table>
									<!-- end user projects -->

								</div>

							</div>
						</div>
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

		<!-- image cropping -->
		<script
			src="<c:url value="/resources/production/js/cropping/cropper.min.js" />"></script>
		<script
			src="<c:url value="/resources/production/js/cropping/main.js" />"></script>


		<!-- daterangepicker -->
		<script src="<c:url value="/resources/production/js/moment.min.js" />"></script>
		<script
			src="<c:url value="/resources/production/js/datepicker/daterangepicker.js" />"></script>
		<!-- moris js -->
		<script
			src="<c:url value="/resources/production/js/moris/raphael-min.js" />"></script>
		<script
			src="<c:url value="/resources/production/js/moris/morris.js" />"></script>
		<script>
			$(function() {
				var day_data = [ {
					"period" : "Jan",
					"Hours worked" : 80
				}, {
					"period" : "Feb",
					"Hours worked" : 125
				}, {
					"period" : "Mar",
					"Hours worked" : 176
				}, {
					"period" : "Apr",
					"Hours worked" : 224
				}, {
					"period" : "May",
					"Hours worked" : 265
				}, {
					"period" : "Jun",
					"Hours worked" : 314
				}, {
					"period" : "Jul",
					"Hours worked" : 347
				}, {
					"period" : "Aug",
					"Hours worked" : 287
				}, {
					"period" : "Sep",
					"Hours worked" : 240
				}, {
					"period" : "Oct",
					"Hours worked" : 211
				} ];
				Morris.Bar({
					element : 'graph_bar',
					data : day_data,
					xkey : 'period',
					hideHover : 'auto',
					barColors : [ '#007aff', '#007aff', '#ACADAC', '#3498DB' ],
					ykeys : [ 'Hours worked', 'sorned' ],
					labels : [ 'Hours worked', 'SORN' ],
					xLabelAngle : 60
				});
			});
		</script>
		