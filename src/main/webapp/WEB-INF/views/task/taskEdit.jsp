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
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>
						<spring:message code="label.Create_Task" />
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
					<form:form id="demo-form2" class="form-horizontal form-label-left"
						modelAttribute="task" method="POST" action="updatTask">

						<div class="form-group">
							<form:label path="nom"
								class="control-label col-md-3 col-sm-3 col-xs-12"
								for="Name_Task">
								<spring:message code="label.Name_Task" />
								<span class="required">*</span>
							</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:input path="nom" type="text" id="Name_Task"
									class="form-control col-md-7 col-xs-12" value="${Taskedit.nom}" />
							</div>
						</div>


						<div class="form-group">
							<form:label path="description"
								class="control-label col-md-3 col-sm-3 col-xs-12"
								for="Task_Description">
								<spring:message code="label.Task_Description" />
								<span class="required">*</span>
							</form:label>


							<div class="col-md-6 col-sm-6 col-xs-12">
								<textarea name="description" id="Task_Description"
									class="form-control col-md-7 col-xs-12"><c:out
										value="${Taskedit.description}" /></textarea>
							</div>


						</div>


						<div class="form-group">
							<form:label path="date"
								class="control-label col-md-3 col-sm-3 col-xs-12">
								<spring:message code="label.Date_Of_end" />
								<span class="required">*</span>
							</form:label>

							<div class="control-group">
								<div class="controls">
									<div class="col-md-6 col-sm-6 col-xs-12">
										<form:input path="date" type="date"
											class="form-control has-feedback-left" id="date" name="date"
											placeholder="First Name"
											aria-describedby="inputSuccess2Status4"
											value="${Taskedit.date}" />
										<span class="fa fa-calendar-o form-control-feedback left"
											aria-hidden="true"></span> <span id="inputSuccess2Status4"
											class="sr-only">(success)</span>
									</div>
								</div>
							</div>

						</div>

						<div class="form-group">
							<form:label path="priorite"
								class="control-label col-md-3 col-sm-3 col-xs-12">
								<spring:message code="label.priority" />
							</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:select path="priorite" class="form-control">

									<option value="Low"
										<c:if test="${Taskedit.priorite eq 'Low'}">SELECTED</c:if>><c:out
											value="Low" /></option>
									<option value="Midium"
										<c:if test="${Taskedit.priorite eq 'Midium'}">SELECTED</c:if>><c:out
											value="Midium" /></option>
									<option value="High"
										<c:if test="${Taskedit.priorite eq 'High'}">SELECTED</c:if>><c:out
											value="High" /></option>


								</form:select>
							</div>
						</div>


						<div class="form-group">
							<form:label path="projet"
								class="control-label col-md-3 col-sm-3 col-xs-12" name="projet">
								<spring:message code="label.Project" />
							</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:select path="projet" class="select2_multiple form-control">
									<c:forEach var="projets" items="${projets}">
										<form:option path="projet" value="${projets.nom}" />
									</c:forEach>

								</form:select>
							</div>

						</div>
						<div class="form-group">
							<form:label path="user"
								class="control-label col-md-3 col-sm-3 col-xs-12" name="user">
								<spring:message code="label.User" />
							</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:select path="user" class="select2_multiple form-control">
									<c:forEach var="users" items="${users}">
										<form:option path="user" value="${users.email}" />
									</c:forEach>

								</form:select>
							</div>

						</div>

						<div class="ln_solid"></div>
						<div class="form-group">
							<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
								<a type="button" href="task" class="btn btn-info"><spring:message
										code="label.Cancel" /> </a>
								<button type="submit" class="btn btn-success"
									onclick="return valider(this.form);">
									<spring:message code="label.Submit" />
								</button>
							</div>
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


	<!-- Datatables -->
	<script
		src="<c:url value="/resources/production/js/datatables/js/jquery.dataTables.js" />"></script>
	<script
		src="<c:url value="/resources/production/js/datatables/tools/js/dataTables.tableTools.js" />"></script>
	<!-- select2 -->
	<script
		src="<c:url value="/resources/production/js/select/select2.full.js" />"></script>
	<!-- select2 -->

	<script>
		$(document).ready(function() {
			$(".select2_single").select2({
				placeholder : "Select a state",
				allowClear : true
			});
			$(".select2_group").select2({});
			$(".select2_multiple").select2({
				maximumSelectionLength : 3,
				placeholder : "With Max Selection limit 3",
				allowClear : true
			});
		});
	</script>
	<!-- /select2 -->
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
							$("tfoot input")
									.blur(
											function(i) {
												if (this.value == "") {
													this.className = "search_init";
													this.value = asInitVals[$(
															"tfoot input")
															.index(this)];
												}
											});
						});
	</script>

	<script type="text/javascript">
		function valider(form) {
			if (form.Name_Task.value == '') {
				alert("<spring:message code="label.Thank_you_to_seize_the_task_name" />");
				form.Name_Task.focus(); //met le curseur dans le champ demandé
				return false; //enpèche l'envoi du formulaire
			}
			if (form.Task_Description.value == '') {
				alert("<spring:message code="label.Thank_you_to_seize_the_description_of_the_task" />");
				form.Task_Description.focus(); //met le curseur dans le champ demandé
				return false; //enpèche l'envoi du formulaire
			}
			if (form.date.value == '') {
				alert("<spring:message code="label.Thank_you_to_seize_the_date" />");
				form.date.focus();
				return false;
			}
			return confirm("<spring:message code="label.modifier_cette_tâche" />");
			
			return true;
		}
	</script>