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
				<div class="x_content">

					<div class="row">

						<div class="col-md-12 col-sm-12 col-xs-12"
							style="text-align: center;">
							<ul class="pagination pagination-split">
								<li><a href="#">A</a></li>
								<li><a href="#">B</a></li>
								<li><a href="#">C</a></li>
								<li><a href="#">D</a></li>
								<li><a href="#">E</a></li>
								<li>...</li>
								<li><a href="#">W</a></li>
								<li><a href="#">X</a></li>
								<li><a href="#">Y</a></li>
								<li><a href="#">Z</a></li>
							</ul>
						</div>

						<div class="clearfix"></div>
						<c:forEach var="u" items="${users}">

							<div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">

								<div class="well profile_view">
									<div class="col-sm-12">
										<h4 class="brief">
											<i>Digital Strategist</i>
										</h4>
										<div class="left col-xs-7">
											<h2>${u.username}</h2>
											<p>
												<strong>Email: </strong>${u.email}
											</p>
											<ul class="list-unstyled">
												<li><i class="fa fa-map-marker user-profile-icon"></i>
													${u.adresse}</li>
												<li><i class="fa fa-phone"></i> Address:</li>

											</ul>
										</div>
										<div class="right col-xs-5 text-center">
											<img src="photoUser?idUser=${user.idUser} " alt=""
												class="img-circle img-responsive">
										</div>
									</div>
									<div class="col-xs-12 bottom text-center">
										<div class="col-xs-12 col-sm-6 emphasis">
											<p class="ratings">
												<a>4.0</a> <a href="#"><span class="fa fa-star"></span></a>
												<a href="#"><span class="fa fa-star"></span></a> <a href="#"><span
													class="fa fa-star"></span></a> <a href="#"><span
													class="fa fa-star"></span></a> <a href="#"><span
													class="fa fa-star-o"></span></a>
											</p>
										</div>
										<div class="col-xs-12 col-sm-6 emphasis">

											
										</div>
									</div>
								</div>

							</div>
						</c:forEach>
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
		src="<c:url value="/resources/production/js/nicescroll/jquery.nicescroll.min.js" />"></script>
	<!-- icheck -->
	<script
		src="<c:url value="/resources/production/js/icheck/icheck.min.js" />"></script>
	<script src="<c:url value="/resources/production/js/custom.js" />"></script>