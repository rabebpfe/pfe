<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

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