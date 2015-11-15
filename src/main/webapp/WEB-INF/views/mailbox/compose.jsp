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
	<div class="page-title">

		<div class="clearfix"></div>

		<div class="row"></div>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>
					<spring:message code="label.Compose_New_Message" />
					<small>Activity report</small>
				</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>

					<li><a class="close-link"><i class="fa fa-close"></i></a></li>
				</ul>
				<div class="clearfix"></div>
			</div>




			<form:form id="demo-form2" class="form-horizontal form-label-left"
				modelAttribute="msgs" method="POST" action="send">


				<div class="form-group">
					<form:label path="user"
						class="control-label col-md-3 col-sm-3 col-xs-12" name="user">
						<spring:message code="label.To" />
					</form:label>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<form:select path="user" class="select2_multiple form-control">
							<c:forEach var="users" items="${users}">
								<form:option path="user" value="${users.email}" />
							</c:forEach>

						</form:select>
					</div>

				</div>
				<br />

				<div class="form-group">
					<form:label path="sujet"
						class="control-label col-md-3 col-sm-3 col-xs-12" for="Subject">
						<spring:message code="label.Subject" />
						<span class="required">*</span>
					</form:label>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<form:input path="sujet" type="text" id="Subject" name="Subject"
							class="form-control col-md-7 col-xs-12" />
					</div>
				</div>
				<br />

				<div class="form-group">
					<form:label path="message"
						class="control-label col-md-3 col-sm-3 col-xs-12" for="message">
						<spring:message code="label.Message" />
						<span class="required">*</span>
					</form:label>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<form:textarea path="message" name="message" id="message"
							class="form-control col-md-7 col-xs-12" />
					</div>
				</div>
				<br />




				
				<div class="ln_solid"></div>
				<div class="form-group">
					<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
						<button type="submit" class="btn btn-primary">
							<spring:message code="label.Cancel" />
						</button>
						<button type="submit" class="btn btn-success"
							onclick="return valider(this.form);">
							<spring:message code="label.Send" />
						</button>


					</div>
				</div>

			</form:form>


			<script
				src="<c:url value="/resources/production/js/bootstrap.min.js" />"></script>
			<script src="<c:url value="/resources/production/js/custom.js" />"></script>
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
			<!-- tags -->
			<script
				src="<c:url value="/resources/production/js/tags/jquery.tagsinput.min.js" />"></script>
			<!-- switchery -->
			<script
				src="<c:url value="/resources/production/js/switchery/switchery.min.js" />"></script>
			<!-- daterangepicker -->
			<script
				src="<c:url value="/resources/production/js/moment.min2.js" />"></script>
			<script
				src="<c:url value="/resources/production/js/datepicker/daterangepicker.js" />"></script>
			<script
				src="<c:url value="/resources/production/js/editor/bootstrap-wysiwyg.js" />"></script>
			<script
				src="<c:url value="/resources/production/js/editor/external/jquery.hotkeys.js" />"></script>
			<script
				src="<c:url value="/resources/production/js/editor/external/google-code-prettify/prettify.js" />"></script>
			<!-- select2 -->
			<script
				src="<c:url value="/resources/production/js/select/select2.full.js" />"></script>
			<!-- form validation -->
			<script
				src="<c:url value="/resources/production/js/parsley/parsley.min.js" />"></script>
			<!-- textarea resize -->
			<script
				src="<c:url value="/resources/production/js/textarea/autosize.min.js" />"></script>
			<script>
				autosize($('.resizable_textarea'));
			</script>
			<!-- Autocomplete -->
			<script
				src="<c:url value="/resources/production/js/autocomplete/countries.js" />"></script>
			<script
				src="<c:url value="/resources/production/js/autocomplete/jquery.autocomplete.js" />"></script>

			<!-- editor -->
			<script>
				$(document).ready(function() {
					$('.xcxc').click(function() {
						$('#message').val($('#editor').html());
					});
				});

				$(function() {
					function initToolbarBootstrapBindings() {
						var fonts = [ 'Serif', 'Sans', 'Arial', 'Arial Black',
								'Courier', 'Courier New', 'Comic Sans MS',
								'Helvetica', 'Impact', 'Lucida Grande',
								'Lucida Sans', 'Tahoma', 'Times',
								'Times New Roman', 'Verdana' ], fontTarget = $(
								'[title=Font]').siblings('.dropdown-menu');
						$
								.each(
										fonts,
										function(idx, fontName) {
											fontTarget
													.append($('<li><a data-edit="fontName ' + fontName + '" style="font-family:\'' + fontName + '\'">'
															+ fontName
															+ '</a></li>'));
										});
						$('a[title]').tooltip({
							container : 'body'
						});
						$('.dropdown-menu input').click(function() {
							return false;
						}).change(
								function() {
									$(this).parent('.dropdown-menu').siblings(
											'.dropdown-toggle').dropdown(
											'toggle');
								}).keydown('esc', function() {
							this.value = '';
							$(this).change();
						});

						$('[data-role=magic-overlay]').each(
								function() {
									var overlay = $(this), target = $(overlay
											.data('target'));
									overlay.css('opacity', 0).css('position',
											'absolute').offset(target.offset())
											.width(target.outerWidth()).height(
													target.outerHeight());
								});
						if ("onwebkitspeechchange" in document
								.createElement("input")) {
							var editorOffset = $('#editor').offset();
							$('#voiceBtn').css('position', 'absolute').offset(
									{
										top : editorOffset.top,
										left : editorOffset.left
												+ $('#editor').innerWidth()
												- 35
									});
						} else {
							$('#voiceBtn').hide();
						}
					}
					;

					function showErrorAlert(reason, detail) {
						var msg = '';
						if (reason === 'unsupported-file-type') {
							msg = "Unsupported format " + detail;
						} else {
							console.log("error uploading file", reason, detail);
						}
						$(
								'<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>'
										+ '<strong>File upload error</strong> '
										+ msg + ' </div>').prependTo('#alerts');
					}
					;
					initToolbarBootstrapBindings();
					$('#editor').wysiwyg({
						fileUploadError : showErrorAlert
					});
					window.prettyPrint && prettyPrint();
				});
			</script>
			<!-- /editor -->
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

					return confirm("<spring:message code="label.send_message" />");

					return true;
				}
			</script>