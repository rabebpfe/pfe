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
		<div class="col-md-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>
						<spring:message code="label.Project_Detail" />
					</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>

						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>

				<div class="x_content">

					<div class="col-md-9 col-sm-9 col-xs-12">

						<ul class="stats-overview">
							<li><span class="name"> <spring:message
										code="label.Estimated_budget" /></span> <span
								class="value text-success"> ${Project.estimation_budget}
							</span></li>
							<li><span class="value text-success"> ${Project.nom}
							</span></li>
							<li class="hidden-phone"><span class="name"> <spring:message
										code="label.Estimated_project_duration" /></span> <span
								class="value text-success"> ${Project.estimation_dure} </span></li>
						</ul>
						<br />

						<div id="mainb" style="height: 350px;"></div>

						<div>

							<h4>
								<spring:message code="label.Recent_Activity" />
							</h4>

							<!-- end of user messages -->
							<ul class="messages">
								<li><img
									src="<c:url value="/resources/img/user1-128x128.jpg" />"
									class="avatar" alt="Avatar">
									<div class="message_date">
										<h3 class="date text-info">24</h3>
										<p class="month">May</p>
									</div>
									<div class="message_wrapper">
										<h4 class="heading">Desmond Davison</h4>
										<blockquote class="message">Raw denim you
											probably haven't heard of them jean shorts Austin. Nesciunt
											tofu stumptown aliqua butcher retro keffiyeh dreamcatcher
											synth.</blockquote>
										<br />
										<p class="url">
											<span class="fs1 text-info" aria-hidden="true" data-icon=""></span>
											<a href="#"><i class="fa fa-paperclip"></i> User
												Acceptance Test.doc </a>
										</p>
									</div></li>
								<li><img
									src="<c:url value="/resources/img/user1-128x128.jpg" /> "
									class="avatar" alt="Avatar">
									<div class="message_date">
										<h3 class="date text-error">21</h3>
										<p class="month">May</p>
									</div>
									<div class="message_wrapper">
										<h4 class="heading">Brian Michaels</h4>
										<blockquote class="message">Raw denim you
											probably haven't heard of them jean shorts Austin. Nesciunt
											tofu stumptown aliqua butcher retro keffiyeh dreamcatcher
											synth.</blockquote>
										<br />
										<p class="url">
											<span class="fs1" aria-hidden="true" data-icon=""></span> <a
												href="#" data-original-title="">Download</a>
										</p>
									</div></li>
								<li><img
									src="<c:url value="/resources/img/user1-128x128.jpg" />"
									class="avatar" alt="Avatar">
									<div class="message_date">
										<h3 class="date text-info">24</h3>
										<p class="month">May</p>
									</div>
									<div class="message_wrapper">
										<h4 class="heading">Desmond Davison</h4>
										<blockquote class="message">Raw denim you
											probably haven't heard of them jean shorts Austin. Nesciunt
											tofu stumptown aliqua butcher retro keffiyeh dreamcatcher
											synth.</blockquote>
										<br />
										<p class="url">
											<span class="fs1 text-info" aria-hidden="true" data-icon=""></span>
											<a href="#"><i class="fa fa-paperclip"></i> User
												Acceptance Test.doc </a>
										</p>
									</div></li>
							</ul>
							<!-- end of user messages -->


						</div>


					</div>

					<!-- start project-detail sidebar -->
					<div class="col-md-3 col-sm-3 col-xs-12">

						<section class="panel">

							<div class="x_title">
								<h2>
									<spring:message code="label.Project_Description" />
								</h2>
								<div class="clearfix"></div>
							</div>
							<div class="panel-body">
								<h3 class="green">
									<i class="fa fa-paint-brush"></i>
								</h3>

								<p>${Project.description}</p>
								<br /> <br />
								<h5>
									<spring:message code="label.Project_files" />
								</h5>
								<ul class="list-unstyled project_files">
									<c:forEach var="files" items="${Files}">
										<li><a href="download?id=${files.idfileProject}"><i
												class="fa fa-paperclip"></i> ${files.nom}</a></li>
									</c:forEach>
								</ul>
								<br />

								<div class="text-center mtop20">
									<h5 class="btn btn-sm btn-primary" data-toggle="modal"
										data-target="#FileNew">
										<spring:message code="label.Add_files" />
									</h5>

								</div>
							</div>

						</section>

					</div>
					<!-- end project-detail sidebar -->

				</div>
			</div>
		</div>
	</div>
</div>
<div id="FileNew" class="modal fade" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="false">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">x</button>
				<h4 class="modal-title" id="myModalLabel">
					<spring:message code="label.New_File_Entry" />
				</h4>
			</div>
			<div class="modal-body">
				<div id="testmodal" style="padding: 5px 20px;">
					<form:form action="upload" method="POST"
						enctype="multipart/form-data">

						<br />
						<input type="file" name="file" id="fille">
						<br />
						<br />
						<br />
						<div class="modal-footer">
							<button type="button" class="btn btn-default antoclose"
								data-dismiss="modal">
								<spring:message code="label.Close" />
							</button>
							<input type="submit" name="submit" class="btn btn-primary"
								value="<spring:message code="label.Save" />" />

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

	<!-- echart -->
	<script
		src="<c:url value="/resources/production/js/echart/echarts-all.js" />"></script>
	<script
		src="<c:url value="/resources/production/js/echart/green.js" />"></script>


	<script>
		var myChart9 = echarts.init(document.getElementById('mainb'), theme);
		myChart9.setOption({
			title : {
				x : 'center',
				y : 'top',
				padding : [ 0, 0, 20, 0 ],
				text : 'Project Perfomance::Revenue vs Input vs Time Spent',
				textStyle : {
					fontSize : 15,
					fontWeight : 'normal'
				}
			},
			tooltip : {
				trigger : 'axis'
			},
			toolbox : {
				show : true,
				feature : {
					dataView : {
						show : true,
						readOnly : false
					},
					restore : {
						show : true
					},
					saveAsImage : {
						show : true
					}
				}
			},
			calculable : true,
			legend : {
				data : [ 'Revenue', 'Cash Input', 'Time Spent' ],
				y : 'bottom'
			},
			xAxis : [ {
				type : 'category',
				data : [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul',
						'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ]
			} ],
			yAxis : [ {
				type : 'value',
				name : 'Amount',
				axisLabel : {
					formatter : '{value} ml'
				}
			}, {
				type : 'value',
				name : 'Hours',
				axisLabel : {
					formatter : '{value} °C'
				}
			} ],
			series : [
					{
						name : 'Revenue',
						type : 'bar',
						data : [ 2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2,
								32.6, 20.0, 6.4, 3.3 ]
					},
					{
						name : 'Cash Input',
						type : 'bar',
						data : [ 2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2,
								48.7, 18.8, 6.0, 2.3 ]
					},
					{
						name : 'Time Spent',
						type : 'line',
						yAxisIndex : 1,
						data : [ 2.0, 2.2, 3.3, 4.5, 6.3, 10.2, 20.3, 23.4,
								23.0, 16.5, 12.0, 6.2 ]
					} ]
		});
	</script>