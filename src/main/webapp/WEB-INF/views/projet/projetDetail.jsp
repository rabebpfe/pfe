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

						

						<div>

							<h4>
								<spring:message code="label.Recent_Activity" />
							</h4>

							<!-- end of user messages -->
							<ul class="messages">
							<c:forEach var="Activity" items="${Activity}">
								<li><img src="resources/production/images/4.jpg" 
												class="avatar" alt="Avatar">
									<div class="message_date">
										<h3 class="date text-info">${Activity.day}</h3>
										<p class="month">${Activity.month}</p>
									</div>
									<div class="message_wrapper">
										<h4 class="heading"> ${Project.nom}</h4>
										<blockquote class="message">${Activity.description}</blockquote>
										<br />
										
									</div></li>
									</c:forEach>
								
								
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


	