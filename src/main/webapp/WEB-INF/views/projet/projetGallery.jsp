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
						<spring:message code="label.Project_Gallery" />
						<small> </small>
					</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>

						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
						</li>
					</ul>
					<div class="clearfix"></div>
				</div>



				<c:forEach var="projects" items="${projects}">
					<div class="col-md-55">
						<div class="thumbnail">
							<div class="image view view-first">
								<img style="width: 100%; display: block;"
									src="resources/production/images/4.jpg" alt="image" />
								<div class="mask no-caption">
									<div class="tools tools-bottom">
										<a href="projetDetail?idProject=${projects.idProject}"><i class="fa fa-link"></i></a>

									</div>
								</div>
							</div>
							<div class="caption center">
								
									<p>
										<strong>${projects.nom}</strong>
								
								</p>
								
									<p>${projects.categorie}</p>
								
							</div>
						</div>
					</div>
				</c:forEach>

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