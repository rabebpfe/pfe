
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
						modelAttribute="projet" method="POST" action="updateditProject">

						<div class="form-group">
							<form:label path="nom"
								class="control-label col-md-3 col-sm-3 col-xs-12"
								for="Name_Project">
								<spring:message code="label.Name_Project" />
								<span class="required">*</span>
							</form:label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<form:input path="nom" type="text" id="Name_Project"
									name="Name_Project" class="form-control col-md-7 col-xs-12"
									value="${Projectedite.nom}" />
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
								<textarea name="Project_Description" id="Project_Description"
									class="form-control col-md-7 col-xs-12"><c:out
										value="${Projectedite.description}" /></textarea>
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
									id="Estimated_project_duration"
									name="Estimated_project_duration"
									class="form-control col-md-7 col-xs-12"
									value="${Projectedite.estimation_dure}" />
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
									id="Estimated_budget" class="form-control col-md-7 col-xs-12"
									value="${Projectedite.estimation_budget}" />
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




									<option value="Website E_commerce"
										<c:if test="${Projectedite.categorie eq 'Website E_commerce'}">SELECTED</c:if>><c:out
											value="Website E_commerce" /></option>
									<option value="Customized Website"
										<c:if test="${Projectedite.categorie eq 'Customized Website'}">SELECTED</c:if>><c:out
											value="Customized Website" /></option>
									<option value="Mobile Site"
										<c:if test="${Projectedite.categorie eq 'Mobile Site'}">SELECTED</c:if>><c:out
											value="Mobile Site" /></option>

									<option value="Graphic Design"
										<c:if test="${Projectedite.categorie eq 'Graphic Design'}">SELECTED</c:if>><c:out
											value="Graphic Design" /></option>


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
									<option value="Open"
										<c:if test="${Projectedite.status eq 'Open'}">SELECTED</c:if>><c:out
											value="Open" /></option>
									<option value="Closed"
										<c:if test="${Projectedite.status eq 'Closed'}">SELECTED</c:if>><c:out
											value="Closed" /></option>


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
											class="form-control has-feedback-left" id="date" name="date"
											placeholder="First Name"
											aria-describedby="inputSuccess2Status4"
											value="${Projectedite.date}" />
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
					maximumSelectionLength : 3,
					placeholder : "With Max Selection limit 3",
					allowClear : true
				});
			});
		</script>
		

		<script type="text/javascript">
			function valider(form) {
				if (form.Name_Project.value == '') {
					alert("<spring:message code="label.Thank_you_to_seize_the_name_of_the_project" />");
					form.Name_Project.focus(); //met le curseur dans le champ demandé
					return false; //enpèche l'envoi du formulaire
				}
				if (form.Project_Description.value == '') {
					alert("<spring:message code="label.Thank_you_to_seize_project_description" />");
					form.Project_Description.focus(); //met le curseur dans le champ demandé
					return false; //enpèche l'envoi du formulaire
				}
				if (form.Estimated_project_duration.value == '') {
					alert("<spring:message code="label.Thank_you_to_seize_the_duration_of_the_project" />");
					form.Estimated_project_duration.focus(); //met le curseur dans le champ demandé
					return false; //enpèche l'envoi du formulaire

				}
				if (form.Estimated_budget.value == '') {
					alert("<spring:message code="label.Thank_you_seize_the_project_budget" />");
					form.Estimated_budget.focus(); //met le curseur dans le champ demandé
					return false; //enpèche l'envoi du formulaire

				}

				if (form.date.value == '') {
					alert("<spring:message code="label.Thank_you_to_seize_the_end_of_the_project" />");
					form.date.focus(); //met le curseur dans le champ demandé
					return false; //enpèche l'envoi du formulaire

				}
				return confirm("<spring:message code="label.modifier_ce_projet" />");
			
				return true;
			}
		</script>