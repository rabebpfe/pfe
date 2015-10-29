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
		<div class="col-md-12">
			<div class="x_panel">
				<div class="x_title">
					<h2></h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>

						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>

				<div class="x_content">

					<div class="col-md-9 col-sm-9 col-xs-12">





						<div style="height: 350px;">

							<c:if test="${Task.status=='Open'}">
								<div class="x_panel">
									<div class="x_title">
										<h2>
											<spring:message code="label.Operations_1" />
										</h2>
										<ul class="nav navbar-right panel_toolbox">
											<li><a class="collapse-link"><i
													class="fa fa-chevron-up"></i></a></li>

											<li><a class="close-link"><i class="fa fa-close"></i></a>
											</li>
										</ul>
										<div class="clearfix"></div>
									</div>
									<div class="x_content">


										<a class="btn btn-round btn-warning" href="IN_progress">Start
											progress</a>
										<h5 class="btn btn-round btn-info" data-toggle="modal"
											data-target="#AttributNew">
											<spring:message code="label.Attribuer" />
										</h5>
										<h5 class="btn btn-round btn-info" data-toggle="modal"
											data-target="#SuiteNew">Suite</h5>



									</div>
								</div>









							</c:if>

							<c:if test="${Task.status=='IN progress'}">
								<div class="x_panel">
									<div class="x_title">
										<h2>
											<spring:message code="label.Operations_2" />
										</h2>
										<ul class="nav navbar-right panel_toolbox">
											<li><a class="collapse-link"><i
													class="fa fa-chevron-up"></i></a></li>

											<li><a class="close-link"><i class="fa fa-close"></i></a>
											</li>
										</ul>
										<div class="clearfix"></div>
									</div>
									<div class="x_content">
										<a class="btn  btn-round btn-danger" href="Open">Stop
											progress </a> <a class="btn  btn-round  btn-warning"
											href="Code_Review">Ready for review</a>
										<h5 class="btn btn-round btn-info" data-toggle="modal"
											data-target="#AttributNew">
											<spring:message code="label.Attribuer" />
										</h5>
										<h5 class="btn btn-round btn-info" data-toggle="modal"
											data-target="#SuiteNew">Suite</h5>


									</div>
								</div>



							</c:if>
							<c:if test="${Task.status=='Code Review'}">
								<div class="x_panel">
									<div class="x_title">
										<h2>
											<spring:message code="label.Operations_3" />
										</h2>
										<ul class="nav navbar-right panel_toolbox">
											<li><a class="collapse-link"><i
													class="fa fa-chevron-up"></i></a></li>

											<li><a class="close-link"><i class="fa fa-close"></i></a>
											</li>
										</ul>
										<div class="clearfix"></div>
									</div>
									<div class="x_content">

										<a class="btn btn-round btn-danger" href="IN_progress">Code
											review failed</a> <a class="btn btn-round btn-warning"
											href="Done">Code review passed</a>

										<h5 class="btn btn-round btn-info" data-toggle="modal"
											data-target="#AttributNew">
											<spring:message code="label.Attribuer" />
										</h5>
										<h5 class="btn btn-round btn-info" data-toggle="modal"
											data-target="#SuiteNew">Suite</h5>
									</div>
								</div>








							</c:if>
							<c:if test="${Task.status=='Done'}">
								<div class="x_panel">
									<div class="x_title">
										<h2>
											<spring:message code="label.Operations_4" />
										</h2>
										<ul class="nav navbar-right panel_toolbox">
											<li><a class="collapse-link"><i
													class="fa fa-chevron-up"></i></a></li>

											<li><a class="close-link"><i class="fa fa-close"></i></a>
											</li>
										</ul>
										<div class="clearfix"></div>
									</div>
									<div class="x_content">


										<a class="btn btn-round btn-danger" href="Open">Reopen</a>
										<h5 class="btn btn-round btn-info" data-toggle="modal"
											data-target="#AttributNew">
											<spring:message code="label.Attribuer" />
										</h5>
										<h5 class="btn btn-round btn-info" data-toggle="modal"
											data-target="#SuiteNew">Suite</h5>
									</div>
								</div>


							</c:if>



							<div class="clearfix"></div>

							<div class="panel-body">
								<h3 class="green">
									<i class="fa fa-paint-brush"></i>
								</h3>
							</div>
							${Task.description} <br /> <br />

						</div>

						<div>




							<h4>
								<spring:message code="label.Commented" />
							</h4>

							<!-- end of user messages -->
							<ul class="messages">
								<c:forEach var="Comments" items="${Comments}">






									<li><img src="photoUser?idUser=${Comments.user.idUser} "
										class="avatar" alt="Avatar">
										<div class="message_date">


											<h3 class="date text-info">${Comments.day}</h3>
											<p class="month">${Comments.month}</p>
										</div>
										<div class="message_wrapper">
											<h4 class="heading">${Comments.user.username}</h4>
											<blockquote class="message">${Comments.description}



											</blockquote>
											<blockquote class="message">
												<c:url var="editComment" value="/comment/edit">
													<c:param name="id" value="${Comments.idCommente}"></c:param>
												</c:url>
												<a href="${editComment}" data-remote="false" title="edit"
													type="button" data-original-title="edit"
													class="btn  btn-sm tooltips" data-toggle="modal"
													data-target="#CommentEdit"> <i
													class="fa fa-edit m-right-xs"></i>
												</a> <a href="suppComment?idCommente=${Comments.idCommente}"
													title="delete" data-original-title="delete"
													class="btn  btn-sm tooltips"
													onclick="return confirm('Etes vous sûre de vouloir supprimer ce commentaire ?');">
													<i class="fa fa-trash-o"></i>

												</a>
											</blockquote>


										</div></li>
								</c:forEach>
							</ul>
							<br />
							<h5 class="btn btn-sm btn-primary" data-toggle="modal"
								data-target="#CommentNew">
								<spring:message code="label.Add_comments" />

							</h5>
							<!-- end of user messages -->


						</div>


					</div>

					<!-- start project-detail sidebar -->
					<div class="col-md-3 col-sm-3 col-xs-12">

						<section class="panel">

							<div class="x_title">
								<h2>
									<spring:message code="label.Project_Description" />
								</h2>
								<div class="clearfix"></div>
							</div>
							<div class="panel-body">
								<h3 class="green">
									<i class="fa fa-paint-brush"></i>
								</h3>

								<p>${Task.projet.description}</p>
								<br /> <br />
								<h5>
									<spring:message code="label.Task_files" />
								</h5>
								<ul class="list-unstyled project_files">
									<c:forEach var="files" items="${Files}">
										<li><a href="Download?id=${files.idfileTask}"><i
												class="fa fa-paperclip"></i> ${files.nom}</a></li>
									</c:forEach>
								</ul>
								<br />

								<div class="text-center mtop20">
									<h5 class="btn btn-sm btn-primary" data-toggle="modal"
										data-target="#FileNew">
										<spring:message code="label.Add_files" />
									</h5>

								</div>
							</div>

						</section>

					</div>
					<!-- end project-detail sidebar -->

					<div id="AttributNew" class="modal fade" tabindex="-1"
						role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
						<div class="modal-dialog">
							<div class="modal-content">

								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">x</button>
									<h4 class="modal-title" id="myModalLabel">
										<spring:message code="label.Attribuer" />
									</h4>
								</div>
								<div class="modal-body">
									<div id="testmodal" style="padding: 30px 30px;">
										<form:form modelAttribute="Commente" action="attribut"
											method="POST">

											<div class="form-group">
												<form:label path="user"
													class="control-label col-md-3 col-sm-3 col-xs-12"
													name="user">
													<spring:message code="label.User" />
												</form:label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<form:select path="user" class=" form-control">
														<c:forEach var="users" items="${users}">
															<form:option path="user" value="${users.email}" />
														</c:forEach>

													</form:select>
												</div>

											</div>
											<br />
											<br />
											<br />
											<br />
											<br />
											<div class="modal-footer">
												<button type="button" class="btn btn-default antoclose"
													data-dismiss="modal">
													<spring:message code="label.Close" />
												</button>
												<input type="submit" name="submit" class="btn btn-primary"
													value="<spring:message code="label.Save" />" />

											</div>

										</form:form>
									</div>
								</div>

							</div>
						</div>
					</div>


					<div id="SuiteNew" class="modal fade" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="false">
						<div class="modal-dialog">
							<div class="modal-content">

								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">x</button>
									<h4 class="modal-title" id="myModalLabel">Suite</h4>
								</div>
								<div class="modal-body">
									<div id="testmodal" style="padding: 30px 30px;">
										<form:form modelAttribute="Task" action="saveHours"
											method="POST">

											<div class="form-group">
												<form:label path="hours"
													class="control-label col-md-3 col-sm-3 col-xs-12"
													for="Hours_Task">
													<spring:message code="label.nembres_heures" />

												</form:label>
												<div class="col-sm-9">
													<div class="col-md-6 col-sm-6 col-xs-12">
														<form:input path="hours" type="text" id="hours" value=" "
															class="form-control col-md-7 col-xs-12" />
													</div>
												</div>
											</div>
											<br />
											<br />
											<br />
											<br />
											<br />
											<div class="modal-footer">
												<button type="button" class="btn btn-default antoclose"
													data-dismiss="modal">
													<spring:message code="label.Close" />
												</button>
												<input type="submit" name="submit" class="btn btn-primary"
													onclick="return valider(this.form);"
													value="<spring:message code="label.Save" />" />

											</div>

										</form:form>
									</div>
								</div>

							</div>
						</div>
					</div>


					<div id="CommentNew" class="modal fade" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="false">
						<div class="modal-dialog">
							<div class="modal-content">

								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">x</button>
									<h4 class="modal-title" id="myModalLabel">
										<spring:message code="label.New_Comment_Entry" />
									</h4>
								</div>
								<div class="modal-body">
									<div id="testmodal" style="padding: 30px 30px;">
										<form:form modelAttribute="Commente" action="saveComment"
											method="POST">

											<div class="form-group">
												<form:label path="description"
													class="control-label col-md-3 col-sm-3 col-xs-12"
													for="Comment_Description">
													<spring:message code="label.Commented" />
													<span class="required">*</span>
												</form:label>
												<div class="col-sm-9">
													<form:textarea path="description" id="Comment_Description"
														name="Comment_Description"
														class="form-control col-md-7 col-xs-12" />
												</div>
											</div>
											<br />
											<br />
											<br />
											<br />
											<br />
											<div class="modal-footer">
												<button type="button" class="btn btn-default antoclose"
													data-dismiss="modal">
													<spring:message code="label.Close" />
												</button>
												<input type="submit" name="submit" class="btn btn-primary"
													value="<spring:message code="label.Save" />" />

											</div>

										</form:form>
									</div>
								</div>

							</div>
						</div>
					</div>



					<div id="CommentEdit" class="modal fade" tabindex="-1"
						role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
						<div class="modal-dialog">
							<div class="modal-content">

								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">x</button>
									<h4 class="modal-title" id="myModalLabel">
										<spring:message code="label.Edit_Comment_Entry" />
									</h4>
								</div>
								<div class="modal-body"></div>

							</div>
						</div>
					</div>
					<div id="FileNew" class="modal fade" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="false">
						<div class="modal-dialog">
							<div class="modal-content">

								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">x</button>
									<h4 class="modal-title" id="myModalLabel">
										<spring:message code="label.New_File_Entry" />
									</h4>
								</div>
								<div class="modal-body">
									<div id="testmodal" style="padding: 5px 20px;">
										<form:form action="Upload" method="POST"
											enctype="multipart/form-data">

											<br />
											<input type="file" name="file" id="fille">
											<br />
											<br />
											<br />
											<div class="modal-footer">
												<button type="button" class="btn btn-default antoclose"
													data-dismiss="modal">
													<spring:message code="label.Close" />
												</button>
												<input type="submit" name="submit" class="btn btn-primary"
													value="<spring:message code="label.Save" />" />

											</div>

										</form:form>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>

				<script type="text/javascript">
					//Fill modal with content from link href
					$(document).ready(
							function() {
								$("#CommentEdit").on(
										"show.bs.modal",
										function(e) {
											var link = $(e.relatedTarget);
											$(this).find(".modal-body").load(
													link.attr("href"));
										});
							});
				</script>
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

				<!-- echart -->
				<script
					src="<c:url value="/resources/production/js/echart/echarts-all.js" />"></script>
				<script
					src="<c:url value="/resources/production/js/echart/green.js" />"></script>
				<!-- select2 -->
				<script
					src="<c:url value="/resources/production/js/select/select2.full.js" />"></script>

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

				<script type="text/javascript">
					function valider(form) {
						if (isNaN(form.hours.value) == true) {
							alert("<spring:message code="label.Please_include_number" />");
							form.hours.focus();
							return false;

						}

						return true;
					}
				</script>