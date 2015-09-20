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

		<div class="col-md-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>
						<spring:message code="label.Inbox" />
						<small>User Mail</small>
					</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>

						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">


					<div class="row">

						<div class="col-sm-3 mail_list_column">

							<div class="mail_list">
								<div class="left">
									<i class="fa fa-circle"></i> <i class="fa fa-edit"></i>
								</div>
								<div class="right">
									<a href="read">Dennis Mugo</a><small> 3.00 PM</small>
									<p>Ut enim ad minim veniam, quis nostrud exercitation enim
										ad minim veniam, quis nostrud exercitation...</p>
								</div>
							</div>
							<div class="mail_list">
								<div class="left">
									<i class="fa fa-star"></i>
								</div>
								<div class="right">
									<h3>
										Jane Nobert <small>4.09 PM</small>
									</h3>
									<p>
										<span class="badge">To</span> Ut enim ad minim veniam, quis
										nostrud exercitation enim ad minim veniam, quis nostrud
										exercitation...
									</p>
								</div>
							</div>
							<div class="mail_list">
								<div class="left">
									<i class="fa fa-circle-o"></i><i class="fa fa-paperclip"></i>
								</div>
								<div class="right">
									<h3>
										Musimbi Anne <small>4.09 PM</small>
									</h3>
									<p>
										<span class="badge">CC</span> Ut enim ad minim veniam, quis
										nostrud exercitation enim ad minim veniam, quis nostrud
										exercitation...
									</p>
								</div>
							</div>
							<div class="mail_list">
								<div class="left">
									<i class="fa fa-paperclip"></i>
								</div>
								<div class="right">
									<h3>
										Jon Dibbs <small>4.09 PM</small>
									</h3>
									<p>Ut enim ad minim veniam, quis nostrud exercitation enim
										ad minim veniam, quis nostrud exercitation...</p>
								</div>
							</div>
							<div class="mail_list">
								<div class="left">.</div>
								<div class="right">
									<h3>
										Debbis & Raymond <small>4.09 PM</small>
									</h3>
									<p>Ut enim ad minim veniam, quis nostrud exercitation enim
										ad minim veniam, quis nostrud exercitation...</p>
								</div>
							</div>
							<div class="mail_list">
								<div class="left">.</div>
								<div class="right">
									<h3>
										Debbis & Raymond <small>4.09 PM</small>
									</h3>
									<p>Ut enim ad minim veniam, quis nostrud exercitation enim
										ad minim veniam, quis nostrud exercitation...</p>
								</div>
							</div>
							<div class="mail_list">
								<div class="left">
									<i class="fa fa-circle"></i> <i class="fa fa-edit"></i>
								</div>
								<div class="right">
									<h3>
										Dennis Mugo <small>3.00 PM</small>
									</h3>
									<p>Ut enim ad minim veniam, quis nostrud exercitation enim
										ad minim veniam, quis nostrud exercitation...</p>
								</div>
							</div>
							<div class="mail_list">
								<div class="left">
									<i class="fa fa-star"></i>
								</div>
								<div class="right">
									<h3>
										Jane Nobert <small>4.09 PM</small>
									</h3>
									<p>Ut enim ad minim veniam, quis nostrud exercitation enim
										ad minim veniam, quis nostrud exercitation...</p>
								</div>
							</div>



						</div>
						<!-- /MAIL LIST -->


						<!-- CONTENT MAIL -->
						<div class="col-sm-9 mail_view">
							<div class="inbox-body">
								<div class="mail_heading row">
									<div class="col-md-8">
										<div class="compose-btn">
											<a class="btn btn-sm btn-primary" href="compose"><i
												class="fa fa-reply"></i> <spring:message
													code="label.Compose" /></a>
											<button title="" data-placement="top" data-toggle="tooltip"
												type="button" data-original-title="Print"
												class="btn  btn-sm tooltips">
												<i class="fa fa-print"></i>
											</button>
											<button title="" data-placement="top" data-toggle="tooltip"
												data-original-title="Trash" class="btn btn-sm tooltips">
												<i class="fa fa-trash-o"></i>
											</button>
										</div>

									</div>
									<div class="col-md-4 text-right">
										<p class="date">8:02 PM 12 FEB 2014</p>
									</div>
									<div class="col-md-12">
										<h4>Donec vitae leo at sem lobortis porttitor eu
											consequat risus. Mauris sed congue orci. Donec ultrices
											faucibus rutrum.</h4>
									</div>
								</div>
								<div class="sender-info">
									<div class="row">
										<div class="col-md-12">
											<strong>Jon Doe</strong> <span>(jon.doe@gmail.com)</span> to
											<strong>me</strong> <a class="sender-dropdown"><i
												class="fa fa-chevron-down"></i></a>
										</div>
									</div>
								</div>
								<div class="view-mail">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
										sed do eiusmod tempor incididunt ut labore et dolore magna
										aliqua. Ut enim ad minim veniam, quis nostrud exercitation
										ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
										aute irure dolor in reprehenderit in voluptate velit esse
										cillum dolore eu fugiat nulla pariatur. Excepteur sint
										occaecat cupidatat non proident, sunt in culpa qui officia
										deserunt mollit anim id est laborum.</p>
									<p>Riusmod tempor incididunt ut labor erem ipsum dolor sit
										amet, consectetur adipiscing elit, sed do eiusmod tempor
										incididunt ut labore et dolore magna aliqua. Ut enim ad minim
										veniam, quis nostrud exercitation ullamco laboris nisi ut
										aliquip ex ea commodo consequat. Duis aute irure dolor in
										reprehenderit in voluptate velit esse cillum dolore eu fugiat
										nulla pariatur. Excepteur sint occaecat cupidatat non
										proident, sunt in culpa qui officia deserunt mollit anim id
										est laborum.</p>
									<p>Modesed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud
										exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat. Duis aute irure dolor in reprehenderit in voluptate
										velit esse cillum dolore eu fugiat nulla pariatur. Excepteur
										sint occaecat cupidatat non proident, sunt in culpa qui
										officia deserunt mollit anim id est laborum.</p>
								</div>
								<div class="attachment">
									<p>
										<span><i class="fa fa-paperclip"></i> 3 attachments — </span>
										<a href="#">Download all attachments</a> | <a href="#">View
											all images</a>
									</p>
									<ul>
										<li><a href="#" class="atch-thumb"> <img
												src="<c:url value="/resources/production/images/1.png" />"
												alt="img" />
										</a>

											<div class="file-name">image-name.jpg</div> <span>12KB</span>


											<div class="links">
												<a href="#">View</a> - <a href="#">Download</a>
											</div></li>

										<li><a href="#" class="atch-thumb"> <img
												src="<c:url value="/resources/production/images/1.png" />"
												alt="img" />
										</a>

											<div class="file-name">img_name.jpg</div> <span>40KB</span>

											<div class="links">
												<a href="#">View</a> - <a href="#">Download</a>
											</div></li>
										<li><a href="#" class="atch-thumb"> <img
												src="<c:url value="/resources/production/images/1.png" />"
												alt="img" />
										</a>

											<div class="file-name">img_name.jpg</div> <span>30KB</span>

											<div class="links">
												<a href="#">View</a> - <a href="#">Download</a>
											</div></li>

									</ul>
								</div>
								<div class="compose-btn pull-left">
									<a class="btn btn-sm btn-primary" href="compose"><i
										class="fa fa-reply"></i> <spring:message code="label.Compose" /></a>
									<button class="btn btn-sm ">
										<i class="fa fa-arrow-right"></i> Forward
									</button>
									<button title="" data-placement="top" data-toggle="tooltip"
										type="button" data-original-title="Print"
										class="btn  btn-sm tooltips">
										<i class="fa fa-print"></i>
									</button>
									<button title="" data-placement="top" data-toggle="tooltip"
										data-original-title="Trash" class="btn btn-sm tooltips">
										<i class="fa fa-trash-o"></i>
									</button>
								</div>
							</div>

						</div>
						<!-- /CONTENT MAIL -->
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