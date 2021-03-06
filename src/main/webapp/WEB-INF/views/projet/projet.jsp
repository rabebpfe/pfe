
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
						<spring:message code="label.Create_Project" />
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
						modelAttribute="projet" method="POST" action="saveProjet">

						<div class="form-group">
							<form:label path="nom"
								class="control-label col-md-3 col-sm-3 col-xs-12"
								for="Name_Project">
								<spring:message code="label.Name_Project" />
								<span class="required">*</span>
							</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:input path="nom" type="text" id="Name_Project"
									name="Name_Project" class="form-control col-md-7 col-xs-12" />
							</div>
						</div>

						<div class="form-group">
							<form:label path="description"
								class="control-label col-md-3 col-sm-3 col-xs-12"
								for="Project_Description">
								<spring:message code="label.Project_Description" />
								<span class="required">*</span>
							</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:textarea path="description" id="Project_Description" name="Project_Description"
									
									class="form-control col-md-7 col-xs-12" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="estimation_dure"
								class="control-label col-md-3 col-sm-3 col-xs-12"
								for="Estimated_project_duration">
								<spring:message code="label.Estimated_project_duration" />
								<span class="required">*</span>
							</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:input path="estimation_dure" type="text"
									id="Estimated_project_duration" name="Estimated_project_duration"
									class="form-control col-md-7 col-xs-12" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="estimation_budget"
								class="control-label col-md-3 col-sm-3 col-xs-12"
								for="Estimated_budget">
								<spring:message code="label.Estimated_budget" />
								<span class="required">*</span>
							</form:label>
							
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:input path="estimation_budget" type="text"
									id="Estimated_budget" class="form-control col-md-7 col-xs-12" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="categorie"
								class="control-label col-md-3 col-sm-3 col-xs-12">
								<spring:message code="label.Category" />
							</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:select path="categorie"
									class="select2_single form-control" tabindex="-1">
									<form:option path="categorie" value="Website E_commerce" />
									<form:option path="categorie" value="Customized Website" />
									<form:option path="categorie" value="Mobile Site" />
									<form:option path="categorie" value="Graphic Design" />
								</form:select>
							</div>
						</div>




						<div class="form-group">
							<form:label path="status"
								class="control-label col-md-3 col-sm-3 col-xs-12">
								<spring:message code="label.State" />
							</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:select path="status" class="form-control">
									<form:option path="status" value="Open" />
									<form:option path="status" value="Closed" />

								</form:select>
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
											class="form-control has-feedback-left" id="date"
											name="date" placeholder="First Name"
											aria-describedby="inputSuccess2Status4" />
										<span class="fa fa-calendar-o form-control-feedback left"
											aria-hidden="true"></span> <span id="inputSuccess2Status4"
											class="sr-only">(success)</span>
									</div>
								</div>
							</div>

						</div>
						<div class="ln_solid"></div>
						<div class="form-group">
							<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
								<a type="button" href="projet" class="btn btn-info"><spring:message
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



		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>
						<spring:message code="label.Projects" />
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
								<th><spring:message code="label.Project_Name" /></th>
								<th><spring:message code="label.State" /></th>
								<th class="hidden-phone"><spring:message
										code="label.Hours_Spent" /></th>
								<th><spring:message code="label.Category" /></th>
								<th width="20%">Action</th>

							</tr>
						</thead>

						<tbody>

							<c:forEach var="projets" items="${projets}">
								<tr class="even pointer">


									<td class=" ">${projets.nom}</td>
									<td class=" ">${projets.status}</td>
									<td width="18%">${projets.estimation_dure}</td>
									<td class="a-right a-right ">${projets.categorie}</td>
									<td><a class="btn btn-success"
										href="editProject?idProject=${projets.idProject}"> <i
											class="fa fa-edit m-right-xs"></i></a>
										<a class="btn btn-danger"
										href="suppProjet?idProject=${projets.idProject}" onclick="return confirm('Etes vous s�re de vouloir supprimer ce projet ?');">
											<i class="fa fa-trash-o"></i></a>
								</tr>
							</c:forEach>
						</tbody>

					</table>
				</div>
			</div>
		</div>

		<br /> <br /> <br /> <br /> <br /> <br />

	</div>



<div id="custom_notifications" class="custom-notifications dsp_none">
	<ul class="list-unstyled notifications clearfix"
		data-tabbed_notifications="notif-group">
	</ul>
	<div class="clearfix"></div>
	<div id="notif-group" class="tabbed_notifications"></div>
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

<script type="text/javascript">
	function valider(form) {
		if (form.Name_Project.value == '') {
			alert("<spring:message code="label.Thank_you_to_seize_the_name_of_the_project" />");
			form.Name_Project.focus(); //met le curseur dans le champ demand�
			return false; //enp�che l'envoi du formulaire
		}
		if (form.Project_Description.value == '') {
			alert("<spring:message code="label.Thank_you_to_seize_project_description" />");
			form.Project_Description.focus(); //met le curseur dans le champ demand�
			return false; //enp�che l'envoi du formulaire
		}
		if (form.Estimated_project_duration.value == '') {
			alert("<spring:message code="label.Thank_you_to_seize_the_duration_of_the_project" />");
			form.Estimated_project_duration.focus(); //met le curseur dans le champ demand�
			return false; //enp�che l'envoi du formulaire

		}
		if (form.Estimated_budget.value == '') {
			alert("<spring:message code="label.Thank_you_seize_the_project_budget" />");
			form.Estimated_budget.focus(); //met le curseur dans le champ demand�
			return false; //enp�che l'envoi du formulaire

		}
		
		if (form.date.value == '') {
			alert("<spring:message code="label.Thank_you_to_seize_the_end_of_the_project" />");
			form.date.focus(); //met le curseur dans le champ demand�
			return false; //enp�che l'envoi du formulaire

		}
		return confirm("<spring:message code="label.ajouter_ce_projet" />");
	 
	
	
		return true;
	}
</script>
<!-- Datatables -->
       <script
		src="<c:url value="/resources/production/js/datatables/js/jquery.dataTables.js" />"></script>
       <script
		src="<c:url value="/resources/production/js/datatables/tools/js/dataTables.tableTools.js" />"></script>
        <script>
            $(document).ready(function () {
                $('input.tableflat').iCheck({
                    checkboxClass: 'icheckbox_flat-green',
                    radioClass: 'iradio_flat-green'
                });
            });

            var asInitVals = new Array();
            $(document).ready(function () {
                var oTable = $('#example').dataTable({
                    "oLanguage": {
                        "sSearch": "Search all columns:"
                    },
                    "aoColumnDefs": [
                        {
                            'bSortable': false,
                            'aTargets': [0]
                        } //disables sorting for column one
            ],
                    'iDisplayLength': 12,
                    "sPaginationType": "full_numbers",
                    "dom": 'T<"clear">lfrtip',
                    "tableTools": {
                        "sSwfPath": "<?php echo base_url('assets2/js/Datatables/tools/swf/copy_csv_xls_pdf.swf'); ?>"
                    }
                });
                $("tfoot input").keyup(function () {
                    /* Filter on the column based on the index of this element's parent <th> */
                    oTable.fnFilter(this.value, $("tfoot th").index($(this).parent()));
                });
                $("tfoot input").each(function (i) {
                    asInitVals[i] = this.value;
                });
                $("tfoot input").focus(function () {
                    if (this.className == "search_init") {
                        this.className = "";
                        this.value = "";
                    }
                });
                $("tfoot input").blur(function (i) {
                    if (this.value == "") {
                        this.className = "search_init";
                        this.value = asInitVals[$("tfoot input").index(this)];
                    }
                });
            });
        </script>


