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
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>
						Task Report <small><spring:message
								code="label.Task_Report" /></small>
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
								aria-expanded="true"> OPEN</a></li>
							<li role="presentation" class=""><a href="#tab_content2"
								role="tab" id="profile-tab" data-toggle="tab"
								aria-expanded="false">IN PROGRESS</a></li>
							<li role="presentation" class=""><a href="#tab_content3"
								role="tab" id="profile-tab2" data-toggle="tab"
								aria-expanded="false">CODE REVIEW</a></li>
							<li role="presentation" class=""><a href="#tab_content4"
								role="tab" id="profile-tab3" data-toggle="tab"
								aria-expanded="false">DONE</a></li>
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade active in"
								id="tab_content1" aria-labelledby="home-tab">

								<!-- start recent activity -->
								<table class="data table table-striped no-margin">
									<thead>

										<tr>
											<th>Nom</th>
											<th>Priorité</th>
											<th>Projet</th>
											<th>Date</th>
											<th></th>
										</tr>
									</thead>
									<tbody>

										<c:forEach var="Task_Open" items="${Task_Open}">
											<tr>

												<td>${Task_Open.nom}</td>
												<td>${Task_Open.priorite}</td>
												<td>${Task_Open.projet.nom}</td>
												<td>${Task_Open.date}</td>
												<td><a class="btn btn-warning"
													href="taskPerDetail?idTask=${Task_Open.idTask}"> <i
														class=" fa fa-link"></i></a></td>
											</tr>
										</c:forEach>




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
											<th>Nom</th>
											<th>Priorité</th>
											<th>Projet</th>
											<th>Date</th>
											<th></th>
										</tr>
									</thead>
									<tbody>

										<c:forEach var="Task_Result" items="${Task_Result}">
											<tr>
												<td>${Task_Result.nom}</td>

												<td>${Task_Result.priorite}</td>
												<td>${Task_Result.projet.nom}</td>
												<td>${Task_Result.date}</td>
												<td><a class="btn btn-warning"
													href="taskPerDetail?idTask=${Task_Open.idTask}"> <i
														class=" fa fa-link"></i></a></td>
											</tr>
										</c:forEach>




									</tbody>
								</table>
								<!-- end user projects -->

							</div>
							<div role="tabpanel" class="tab-pane fade" id="tab_content3"
								aria-labelledby="profile-tab">
								<table class="data table table-striped no-margin">
									<thead>

										<tr>
											<th>Nom</th>
											<th>Priorité</th>
											<th>Projet</th>
											<th>Date</th>
											<th></th>
										</tr>
									</thead>
									<tbody>

										<c:forEach var="Task_Review" items="${Task_Review}">
											<tr>
												<td>${Task_Review.nom}</td>

												<td>${Task_Review.priorite}</td>
												<td>${Task_Review.projet.nom}</td>
												<td>${Task_Review.date}</td>
												<td><a class="btn btn-warning"
													href="taskPerDetail?idTask=${Task_Open.idTask}"> <i
														class=" fa fa-link"></i></a></td>
											</tr>
										</c:forEach>




									</tbody>
								</table>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tab_content4"
								aria-labelledby="profile-tab">
								<table class="data table table-striped no-margin">
									<thead>

										<tr>
											<th>Nom</th>
											<th>Priorité</th>
											<th>Projet</th>
											<th>Date</th>
											<th></th>
										</tr>
									</thead>
									<tbody>

										<c:forEach var="Task_Test" items="${Task_Test}">
											<tr>
												<td>$Task_Test.nom}</td>

												<td>${Task_Test.priorite}</td>
												<td>${Task_Test.projet.nom}</td>
												<td>${Task_Test.date}</td>
												<td><a class="btn btn-warning"
													href="taskPerDetail?idTask=${Task_Open.idTask}"> <i
														class=" fa fa-link"></i></a></td>
											</tr>
										</c:forEach>




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