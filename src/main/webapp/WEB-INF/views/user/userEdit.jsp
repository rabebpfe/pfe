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
						placeholder="<spring:message code="label.Search" />"> <span
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
						<spring:message code="label.Edit_User" />
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
						modelAttribute="usere" method="POST" action="updateUser"
						enctype="multipart/form-data">
						<div class="form-group">
							<form:label path="username"
								class="control-label col-md-3 col-sm-3 col-xs-12" for="username">
								<spring:message code="label.Username" />
								<span class="required">*</span>
							</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:input path="username" id="username" required="required"
									class="form-control col-md-7 col-xs-12"
									value="${useredite.username}" />
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
									required="required" class="form-control col-md-7 col-xs-12"
									value="${useredite.email}" />

							</div>
							<p>${message}</p>
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
								<span class="required">*</span>
							</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:input path="adresse" type="text" id="adresse"
									name="adresse" class="form-control col-md-7 col-xs-12"
									value="${useredite.adresse}" />
							</div>
						</div>

						<div class="form-group">
							<form:label path="roles"
								class="control-label col-md-3 col-sm-3 col-xs-12" for="role">
								<spring:message code="label.Role" />
							</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:radiobutton path="roles" value="Admin" id="rdio2"
									style="margin-left:5px;" checked="checked" />
								Admin

								<form:radiobutton path="roles" value="Dev" id="rdio2"
									style="margin-left:5px;" />
								Dev



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
										code="label.Cancel" /> </a>
								<button type="submit" class="btn btn-success"
									onclick="return valider(this.form);">
									<spring:message code="label.Save_changes" />
								</button>
							</div>
						</div>

					</form:form>
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
		<script>
			function controle(form1) {

				confirm('Ch');
			}
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
		<script type="text/javascript">
			function alertsupp() {
				alert('�tes-vous s�r de vouloir supprimer ?');
			}
			window.onbeforeunload = closeIt;

			//Fonction appel� au moment de fermer la page
			function closeIt() {
				alert("On passe")
			}
		</script>
		<!-- /select2 -->
		<script type="text/javascript">
			function valider(form) {
				if (form.username.value == '') {
					alert("<spring:message code="label.Thank_you_to_seize_your_username" />");
					form.username.focus(); //met le curseur dans le champ demand�
					return false; //enp�che l'envoi du formulaire
				}
				if (form.password.value == '') {
					alert("<spring:message code="label.Thank_you_to_seize_your_password" />");
					form.password.focus(); //met le curseur dans le champ demand�
					return false; //enp�che l'envoi du formulaire
				}
				if (form.email.value == '') {
					alert("<spring:message code="label.Thank_you_seize_your_email" />");
					form.email.focus(); //met le curseur dans le champ demand�
					return false; //enp�che l'envoi du formulaire
				}

				if (form.email.value.indexOf("@", 0) < 0) {
					alert("<spring:message code="label.Please_include" />");
					form.email.focus();
					return false;
				}

				if (form.adresse.value == '') {
					alert("<spring:message code="label.Thank_you_seize_your_address" />");
					form.adresse.focus();
					return false;

				}
				<c:forEach items="${useredit}" var="user" varStatus="loop">
				if (form.username.value == '${user.username}') {
					alert("<spring:message code="label.Thank_you_to_seize_another_username" />");
					form.username.focus(); //met le curseur dans le champ demand�
					return false; //enp�che l'envoi du formulaire

				}
				</c:forEach>

				<c:forEach items="${useredit}" var="user" varStatus="loop">
				if (form.email.value == '${user.email}') {
					alert("<spring:message code="label.Thank_you_to_seize_another_email" />");
					form.email.focus(); //met le curseur dans le champ demand�
					return false; //enp�che l'envoi du formulaire

				}

				</c:forEach>
				return true;
			}
		</script>