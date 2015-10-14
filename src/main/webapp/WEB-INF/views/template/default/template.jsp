<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
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

<link
	href="<c:url value="/resources/production/css/datatables/tools/css/dataTables.tableTools.css" />"
	rel="stylesheet">
<!-- select2 -->
<link
	href="<c:url value="/resources/production/css/select/select2.min.css" />"
	rel="stylesheet">
<!-- editor -->
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" />
<link
	href="<c:url value="/resources/production/css/editor/external/google-code-prettify/prettify.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/production/css/editor/index.css" />"
	rel="stylesheet">

<link
	href="<c:url value="/resources/production/css/calendar/fullcalendar.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/production/css/calendar/fullcalendar.print.css" />"
	rel="stylesheet" media="print">

<script src="<c:url value="/resources/production/js/jquery.min.js" />"></script>

<body class="nav-md">

	<div class="container body">
		<div class="main_container">

			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<tiles:insertAttribute name="menu" />
					<!-- /sidebar menu -->


				</div>
			</div>

			<!-- top navigation -->
			<tiles:insertAttribute name="header" />
			<!-- /top navigation -->

			<!-- page content -->

			<div class="right_col" role="main">

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
								<div class="input-group"></div>
							</div>
						</div>
					</div>
					<tiles:insertAttribute name="body" />

				</div>
				<!-- footer content -->
				<tiles:insertAttribute name="footer" />
				<!-- /footer content -->

			</div>
			<!-- /page content -->
		</div>
</body>


</html>