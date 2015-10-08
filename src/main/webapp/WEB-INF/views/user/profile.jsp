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
						<spring:message code="label.User_Report" />
						<small> <spring:message code="label.Activity_report" /></small>
					</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>

						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">

					<div class="col-md-3 col-sm-3 col-xs-12 profile_left">

						<div class="profile_img">

							<!-- end of image cropping -->
							<div id="crop-avatar">
								<!-- Current avatar -->
								<div class="avatar-view" title="Change the avatar">
									<img src="photoUser?idUser=${user.idUser} " alt="Avatar">
								</div>

								<!-- Cropping modal -->
								<div class="modal fade" id="avatar-modal" aria-hidden="true"
									aria-labelledby="avatar-modal-label" role="dialog"
									tabindex="-1">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<form:form modelAttribute="usere"
												action="EditPhoto?idUser=${user.idUser}"
												enctype="multipart/form-data" method="POST">
												<div class="modal-header">
													<button class="close" data-dismiss="modal" type="button">x</button>
													<h4 class="modal-title" id="avatar-modal-label">
														<spring:message code="label.Change_Photo" />
													</h4>
												</div>
												<div class="modal-body">
													<div class="avatar-body">

														<!-- Upload image and data -->
														<div class="avatar-upload avatar-form">
															<input class="avatar-src" name="avatar_src" type="hidden">
															<input class="avatar-data" name="avatar_data"
																type="hidden">
															<form:label path="photo" for="file">
																<spring:message code="label.Local_upload" />
															</form:label>
															<input id="file" class="avatar-input" name="file"
																type="file" />
														</div>

														<!-- Crop and preview -->
														<div class="row">
															<div class="col-md-9">
																<div class="avatar-wrapper"></div>
															</div>
															<div class="col-md-3">
																<div class="avatar-preview preview-lg"></div>
																<div class="avatar-preview preview-md"></div>
																<div class="avatar-preview preview-sm"></div>
															</div>
														</div>

														<div class="row avatar-btns">
															<div class="col-md-9"></div>
															<div class="col-md-3">
																<input type="submit" value="Done"
																	class="btn btn-primary btn-block avatar-save">
															</div>
														</div>
													</div>
												</div>

											</form:form>
										</div>
									</div>
								</div>
								<!-- /.modal -->

								<!-- Loading state -->
								<div class="loading" aria-label="Loading" role="img"
									tabindex="-1"></div>
							</div>
							<!-- end of image cropping -->

						</div>
						<h3>${user.username }</h3>

						<ul class="list-unstyled user_data">
							<li><i class="fa fa-map-marker user-profile-icon"></i>${user.adresse }
							</li>



							<li class="m-top-xs"><i
								class="fa fa-external-link user-profile-icon"></i> <a
								href="mailto:${user.email}">${user.email}</a></li>
						</ul>

						<a class="btn btn-success" data-toggle="modal"
							data-target="#ProfileEdit"><i class="fa fa-edit m-right-xs"></i>
							<spring:message code="label.Edit_Profile" /></a> <br />

						<!-- start skills -->
						<h4>
							<spring:message code="label.Skills" />
						</h4>

						<c:forEach var="skills" items="${skills}">
							<ul class="list-unstyled user_data">
								<li>
									<p>${skills.nomSkills}</p>
									<div class="progress progress_sm">
										<div class="progress-bar bg-green" role="progressbar"
											data-transitiongoal="50"></div>
									</div>
								</li>


							</ul>
						</c:forEach>
						<!-- end of skills -->

					</div>
					<div class="col-md-9 col-sm-9 col-xs-12">

						<div class="profile_title">
							<div class="col-md-6">
								<h2>
									<spring:message code="label.User_Activity_Report" />
								</h2>
							</div>
							<div class="col-md-6">
								
							</div>
						</div>
						<!-- start of user-activity-graph -->
						<div id="graph_bar" style="width: 100%; height: 280px;"></div>
						<!-- end of user-activity-graph -->

						<div class="" role="tabpanel" data-example-id="togglable-tabs">
							<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
								<li role="presentation" class="active"><a
									href="#tab_content1" id="home-tab" role="tab" data-toggle="tab"
									aria-expanded="true"><spring:message
											code="label.Recent_Activity" /></a></li>

								<sec:authorize access="hasRole('ROLE_ADMIN')">
									<li role="presentation" class=""><a href="#tab_content2"
										role="tab" id="profile-tab" data-toggle="tab"
										aria-expanded="false"><spring:message
												code="label.Projects_Worked_on" /></a></li>
								</sec:authorize>
								

							</ul>
							<div id="myTabContent" class="tab-content">


								<div role="tabpanel" class="tab-pane fade active in"
									id="tab_content1" aria-labelledby="home-tab">

									<!-- start recent activity -->
									<ul class="messages">
										<c:forEach var="Activity" items="${Activity}">
											<li><img src="photoUser?idUser=${user.idUser} "
												class="avatar" alt="Avatar">
												<div class="message_date">
													<h3 class="date text-error">${Activity.day}</h3>
													<p class="month">${Activity.month}</p>
												</div>
												<div class="message_wrapper">
													<h4 class="heading">${user.username}</h4>
													<blockquote class="message">${Activity.description}</blockquote>
													<br />
													<p class="url">
														<span class="fs1" aria-hidden="true" data-icon="?"></span>

													</p>
												</div></li>
										</c:forEach>



									</ul>
									<!-- end recent activity -->

								</div>

								


								<div role="tabpanel" class="tab-pane fade" id="tab_content2"
									aria-labelledby="profile-tab">

									<!-- start user projects -->
									<table class="data table table-striped no-margin">
										<thead>
											<tr>

												<th><spring:message code="label.Project_Name" /></th>
												<th><spring:message code="label.State" /></th>
												<th class="hidden-phone"><spring:message
														code="label.Hours_Spent" /></th>
												<th><spring:message code="label.Contribution" /></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="Project" items="${Project}">
												<tr>


													<td width="40%">${Project.nom}</td>
													<td>${Project.status}</td>
													<td class="hidden-phone">${Project.estimation_dure}</td>
													<td class="vertical-align-mid">
														<div class="progress">
															<div class="progress-bar progress-bar-info"
																data-transitiongoal="${Project.contribution}"></div>
														</div>
													</td>
												</tr>
											</c:forEach>

										</tbody>
									</table>
									<!-- end user projects -->

								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Start Calender modal -->
<div id="ProfileEdit" class="modal fade" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">x</button>
				<h4 class="modal-title" id="myModalLabel2">
					<spring:message code="label.Edit_User_Entry" />
				</h4>
			</div>
			<div class="modal-body">

				<div id="testmodal2" style="padding: 5px 20px;">
					<form:form id="antoform2" class="form-horizontal calender"
						modelAttribute="usere" action="/editProfile?idUser=${user.idUser}"
						method="POST">
						<div class="form-group">
							<form:label path="username" class="col-sm-3 control-label">
								<spring:message code="label.Username" />
							</form:label>
							<div class="col-sm-9">
								<form:input path="username" type="text" class="form-control"
									id="username" name="username" value="${user.username}" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="password" class="col-sm-3 control-label">
								<spring:message code="label.Password" />
							</form:label>
							<div class="col-sm-9">
								<form:input path="password" type="password"
									placeHolder="new Password" class="form-control" id="password"
									name="password" />
							</div>
						</div>
						<div class="form-group">
							<label  class="col-sm-3 control-label">
								<spring:message code="label.Saisir_nouveau" />
							</label>
							<div class="col-sm-9">
								<input  type="password"
									placeHolder="Repeat Password" class="form-control" id="password1"
									name="password1" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="email" class="col-sm-3 control-label">
								<spring:message code="label.Email" />
							</form:label>
							<div class="col-sm-9">
								<form:input path="email" type="email" class="form-control"
									id="email" name="email" value="${user.email}" />
							</div>
						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-default antoclose2"
								data-dismiss="modal">
								<spring:message code="label.Close" />
							</button>
							<input type="submit" class="btn btn-primary "
								onclick="return valider(this.form);"
								value="<spring:message code="label.Save_changes" />">


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

	<!-- image cropping -->
	<script
		src="<c:url value="/resources/production/js/cropping/cropper.min.js" />"></script>
	<script
		src="<c:url value="/resources/production/js/cropping/main.js" />"></script>


	<!-- daterangepicker -->
	<script src="<c:url value="/resources/production/js/moment.min.js" />"></script>
	<script
		src="<c:url value="/resources/production/js/datepicker/daterangepicker.js" />"></script>
	<!-- moris js -->
	<script
		src="<c:url value="/resources/production/js/moris/raphael-min.js" />"></script>
	<script
		src="<c:url value="/resources/production/js/moris/morris.js" />"></script>
	<script>
		$(function() {
			var day_data = [ {
				"period" : "Jan",
				"Hours worked" : 80
			}, {
				"period" : "Feb",
				"Hours worked" : 125
			}, {
				"period" : "Mar",
				"Hours worked" : 176
			}, {
				"period" : "Apr",
				"Hours worked" : 224
			}, {
				"period" : "May",
				"Hours worked" : 265
			}, {
				"period" : "Jun",
				"Hours worked" : 314
			}, {
				"period" : "Jul",
				"Hours worked" : 347
			}, {
				"period" : "Aug",
				"Hours worked" : 287
			}, {
				"period" : "Sep",
				"Hours worked" : 240
			}, {
				"period" : "Oct",
				"Hours worked" : 211
			} ];
			Morris.Bar({
				element : 'graph_bar',
				data : day_data,
				xkey : 'period',
				hideHover : 'auto',
				barColors : [ '#007aff', '#007aff', '#ACADAC', '#3498DB' ],
				ykeys : [ 'Hours worked', 'sorned' ],
				labels : [ 'Hours worked', 'SORN' ],
				xLabelAngle : 60
			});
		});
	</script>

	
	<!-- PNotify -->
	<script
		src="<c:url value="/resources/production/js/notify/pnotify.core.js" />"></script>
	<script
		src="<c:url value="/resources/production/js/notify/pnotify.buttons.js" />"></script>
	<script
		src="<c:url value="/resources/production/js/notify/pnotify.nonblock.js" />"></script>
	<script type="text/javascript">
		var permanotice, tooltip, _alert;
		$(function() {
			new PNotify({
				title : "PNotify",
				type : "dark",
				text : "Welcome ${user.username}! in your account",
				nonblock : {
					nonblock : true
				},
				before_close : function(PNotify) {
					// You can access the notice's options with this. It is read only.
					//PNotify.options.text;

					// You can change the notice's options after the timer like this:
					PNotify.update({
						title : PNotify.options.title + " - Enjoy your Stay",
						before_close : null
					});
					PNotify.queueRemove();
					return false;
				}
			});

		});
	</script>

	<script type="text/javascript">
		function valider(form) {
			if (form.username.value == '') {
				alert("<spring:message code="label.Thank_you_to_seize_your_username" />");
				form.username.focus(); //met le curseur dans le champ demandé
				return false; //enpèche l'envoi du formulaire
			}
			if (form.password.value == '') {
				alert("<spring:message code="label.Thank_you_to_seize_your_password" />");
				form.password.focus(); //met le curseur dans le champ demandé
				return false; //enpèche l'envoi du formulaire
			}
			if ( form.password1.value == '') {
				alert("<spring:message code="label.seize_your_password" />");
				form.password1.focus(); //met le curseur dans le champ demandé
				return false; //enpèche l'envoi du formulaire
			}
			if (form.password.value != form.password1.value) {
				alert("<spring:message code="label.seize_your_password" />");
				form.password1.focus(); //met le curseur dans le champ demandé
				return false; //enpèche l'envoi du formulaire
			}
		
			if (form.email.value == '') {
				alert("<spring:message code="label.Thank_you_seize_your_email" />");
				form.email.focus(); //met le curseur dans le champ demandé
				return false; //enpèche l'envoi du formulaire
			}

			if (form.email.value.indexOf("@", 0) < 0) {
				alert("<spring:message code="label.Please_include" />");
				form.email.focus();
				return false;
			}
			<c:forEach items="${useredit}" var="user" varStatus="loop">
			if (form.username.value == '${user.username}') {
				alert("<spring:message code="label.Thank_you_to_seize_another_username" />");
				form.username.focus(); //met le curseur dans le champ demandé
				return false; //enpèche l'envoi du formulaire

			}
			</c:forEach>

			<c:forEach items="${useredit}" var="user" varStatus="loop">
			if (form.email.value == '${user.email}') {
				alert("<spring:message code="label.Thank_you_to_seize_another_email" />");
				form.email.focus(); //met le curseur dans le champ demandé
				return false; //enpèche l'envoi du formulaire

			}

			</c:forEach>
			return true;
		}
	</script>