
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

<link
	href="<c:url value="/resources/production/css/progressbar/bootstrap-progressbar-3.3.0.css" />"
	rel="stylesheet">



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

			<%!int i = 0;%>

			<c:forEach var="Task" items="${Task}">

				<c:if test="${Task.status!='Done'}">
					<%
						i = i + 1;
					%>



				</c:if>
			</c:forEach>




			<%!int j = 0;%>

			<c:forEach var="Task" items="${Task}">

				<c:if test="${Task.status=='Done'}">
					<%
						j = j + 1;
					%>



				</c:if>
			</c:forEach>



			<%!int k = 0;%>

			<c:forEach var="Project" items="${Project}">

				<c:if test="${Project.status!='Done'}">
					<%
						k = k + 1;
					%>



				</c:if>
			</c:forEach>




			<%!int l = 0;%>

			<c:forEach var="Project" items="${Project}">

				<c:if test="${Project.status=='Done'}">
					<%
						l = l + 1;
					%>



				</c:if>
			</c:forEach>



			<div class="row top_tiles">
				<div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="tile-stats">
						<div class="icon">
							<i class="fa fa-sort-amount-desc"></i>
						</div>
						<div class="count">
							<%=i%></div>
						<%
							i = 0;
						%>

						<h3>
							<spring:message code="label.Task_Open" />
						</h3>

					</div>
				</div>
				<div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="tile-stats">
						<div class="icon">
							<i class="fa fa-check-square-o"></i>
						</div>
						<div class="count">
							<%=j%></div>
						<%
							j = 0;
						%>
						<h3>
							<spring:message code="label.Task_Done" />
						</h3>

					</div>
				</div>





				<div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="tile-stats">
						<div class="icon">
							<i class="fa fa-sort-amount-desc"></i>
						</div>
						<div class="count">
							<%=k%></div>
						<%
							k = 0;
						%>
						<h3>
							<spring:message code="label.Project_Open" />
						</h3>

					</div>
				</div>
				<div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="tile-stats">
						<div class="icon">
							<i class="fa fa-check-square-o"></i>
						</div>
						<div class="count">
							<%=l%></div>
						<%
							l = 0;
						%>

						<h3>
							<spring:message code="label.Project_Done" />
						</h3>

					</div>
				</div>
			</div>
		</div>



		<c:forEach var="Project" items="${Project}">
			<div class="col-md-3 col-xs-12 widget widget_tally_box">
				<div class="x_panel ui-ribbon-container fixed_height_390">
					<div class="ui-ribbon-wrapper">



						<div class="ui-ribbon">${Project.contribution}%Off</div>
					</div>
					<div class="x_title">
						<h2>${Project.categorie}</h2>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">

						<div style="text-align: center; margin-bottom: 17px">
							<span class="chart" data-percent="${Project.contribution}">
								<span class="percent"></span>
							</span>
						</div>

						<h3 class="name_title">${Project.nom}</h3>
						<p>
							<spring:message code="label.Short_Description" />
						</p>

						<div class="divider"></div>

						<p><spring:message code="label.estumation_durée" />: ${Project.estimation_dure}</p>
						<p><spring:message code="label.durée_réelle" /> : ${Project.reel_dure}</p>

					</div>
				</div>
			</div>


		</c:forEach>



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

<!-- chart js -->

<script
	src="<c:url value="/resources/production/js/chartjs/chart.min.js" />"></script>
<!-- sparkline -->

<script
	src="<c:url value="/resources/production/js/sparkline/jquery.sparkline.min.js" />"></script>
<!-- easypie -->

<script
	src="<c:url value="/resources/production/js/easypie/jquery.easypiechart.min.js" />"></script>
<script>
	$(function() {
		$('.chart').easyPieChart({
			easing : 'easeOutElastic',
			delay : 3000,
			barColor : '#1479B8',
			trackColor : '#fff',
			scaleColor : false,
			lineWidth : 20,
			trackWidth : 16,
			lineCap : 'butt',
			onStep : function(from, to, percent) {
				$(this.el).find('.percent').text(Math.round(percent));
			}
		});
		var chart = window.chart = $('.chart').data('easyPieChart');
		$('.js_update').on('click', function() {
			chart.update(Math.random() * 200 - 100);
		});
	});
</script>