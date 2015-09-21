<%@ page language="java" session="true" contentType="text/html; charset=ISO-8859-1 "
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
		<div class="col-md-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>
						<spring:message code="label.Task_Detail" />
					</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>

						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>

				<div class="x_content">

					<div class="col-md-9 col-sm-9 col-xs-12">


						<div style="height: 150px;">
							<h4>${Task.description}</h4>
							<br />
						</div>

						<div>

							<h4>
								<spring:message code="label.Commented" />
							</h4>

							<!-- end of user messages -->
							<ul class="messages">
								<c:forEach var="Comments" items="${Comments}">



									<%
										   String ref = "${Comments.idCommente}";

											session.setAttribute("idComent", ref);
									%>



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
												<a href="${editComment}"  data-remote="false"  title="edit" type="button"
													data-original-title="edit" class="btn  btn-sm tooltips"
													data-toggle="modal" data-target="#CommentEdit"
													>
													<i class="fa fa-edit m-right-xs"></i>
												</a>


												<a href="suppComment?idCommente=${Comments.idCommente}">
													<button title="delete" data-original-title="delete"
														class="btn  btn-sm tooltips"
														onclick="return confirm('Etes vous sûre de vouloir supprimer ce commentaire ?');">
														<i class="fa fa-trash-o"></i>
													</button>
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
<script type="text/javascript">

//Fill modal with content from link href
$( document ).ready(function() {
	$("#CommentEdit").on("show.bs.modal", function(e) {
	    var link = $(e.relatedTarget);
	    $(this).find(".modal-body").load(link.attr("href"));
	});
});
</script>
<div id="CommentEdit" class="modal fade" tabindex="-1" role="dialog"
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
				
			</div>

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


	