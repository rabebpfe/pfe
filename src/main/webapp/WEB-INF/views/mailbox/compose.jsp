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


<link
	href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css"
	rel="stylesheet">
<link
	href="<c:url value="/resources/css/editor/external/google-code-prettify/prettify.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/editor/index.css" />"
	rel="stylesheet">
<!-- editor -->
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" />
<link
	href="<c:url value="/resources/production/css/editor/external/google-code-prettify/prettify.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/production/css/editor/index.css" />"
	rel="stylesheet">
<!-- select2 -->
<link
	href="<c:url value="/resources/production/css/select/select2.min.css" />"
	rel="stylesheet">
<!-- switchery -->
<link
	href="<c:url value="/resources/production/css/switchery/switchery.min.css" />"
	rel="stylesheet">



<script src="<c:url value="/resources/production/js/jquery.min.js" />"></script>
</head>
<div class="">
	<div class="page-title">
		<div class="title_left">
			<h3></h3>
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
		<form id="demo-form2" data-parsley-validate
			class="form-horizontal form-label-left" action="compose">

			<div class="form-group">
				<label class="control-label col-md-3 col-sm-3 col-xs-12"
					for="first-name"><spring:message code="label.To" /><span
					class="required">*</span> </label>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<input type="text" id="first-name" required="required"
						class="form-control col-md-7 col-xs-12">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3 col-sm-3 col-xs-12"
					for="last-name"><spring:message code="label.Subject" /> <span
					class="required">*</span> </label>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<input type="text" id="last-name" name="last-name"
						required="required" class="form-control col-md-7 col-xs-12">
				</div>
			</div>
			<br />


			<div class="btn-toolbar editor" data-role="editor-toolbar"
				data-target="#editor">
				<div class="btn-group">
					<a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i
						class="fa icon-font"></i><b class="caret"></b></a>
					<ul class="dropdown-menu">
					</ul>
				</div>
				<div class="btn-group">
					<a class="btn dropdown-toggle" data-toggle="dropdown"
						title="Font Size"><i class="icon-text-height"></i>&nbsp;<b
						class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a data-edit="fontSize 5"><p style="font-size: 17px">Huge</p></a>
						</li>
						<li><a data-edit="fontSize 3"><p style="font-size: 14px">Normal</p></a>
						</li>
						<li><a data-edit="fontSize 1"><p style="font-size: 11px">Small</p></a>
						</li>
					</ul>
				</div>
				<div class="btn-group">
					<a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i
						class="icon-bold"></i></a> <a class="btn" data-edit="italic"
						title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a> <a
						class="btn" data-edit="strikethrough" title="Strikethrough"><i
						class="icon-strikethrough"></i></a> <a class="btn"
						data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i
						class="icon-underline"></i></a>
				</div>
				<div class="btn-group">
					<a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i
						class="icon-list-ul"></i></a> <a class="btn"
						data-edit="insertorderedlist" title="Number list"><i
						class="icon-list-ol"></i></a> <a class="btn" data-edit="outdent"
						title="Reduce indent (Shift+Tab)"><i class="icon-indent-left"></i></a>
					<a class="btn" data-edit="indent" title="Indent (Tab)"><i
						class="icon-indent-right"></i></a>
				</div>
				<div class="btn-group">
					<a class="btn" data-edit="justifyleft"
						title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>
					<a class="btn" data-edit="justifycenter"
						title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>
					<a class="btn" data-edit="justifyright"
						title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>
					<a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i
						class="icon-align-justify"></i></a>
				</div>
				<div class="btn-group">
					<a class="btn dropdown-toggle" data-toggle="dropdown"
						title="Hyperlink"><i class="icon-link"></i></a>
					<div class="dropdown-menu input-append">
						<input class="span2" placeholder="URL" type="text"
							data-edit="createLink" />
						<button class="btn" type="button">Add</button>
					</div>
					<a class="btn" data-edit="unlink" title="Remove Hyperlink"><i
						class="icon-cut"></i></a>

				</div>

				<div class="btn-group">
					<a class="btn" title="Insert picture (or just drag & drop)"
						id="pictureBtn"><i class="icon-picture"></i></a> <input
						type="file" data-role="magic-overlay" data-target="#pictureBtn"
						data-edit="insertImage" />
				</div>
				<div class="btn-group">
					<a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i
						class="icon-undo"></i></a> <a class="btn" data-edit="redo"
						title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
				</div>
			</div>
			<div id="editor"></div>
			<textarea name="descr" id="descr" style="display: none;"></textarea>
			<br />



			<div class="form-group">
				<label class="control-label col-md-3 col-sm-3 col-xs-12"><spring:message
						code="label.Resizable_Text_area" /></label>
				<div class="col-md-9 col-sm-9 col-xs-12">
					<textarea class="resizable_textarea form-control"
						style="width: 100%; overflow: hidden; word-wrap: break-word; resize: horizontal; height: 87px;">This text area automatically resizes its height as you fill in more text courtesy of autosize-master it out...
                                        </textarea>
				</div>
			</div>



			<div class="ln_solid"></div>
			<div class="form-group">
				<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
					<button type="submit" class="btn btn-primary">
						<spring:message code="label.Cancel" />
					</button>
					<button type="submit" class="btn btn-success">
						<spring:message code="label.Send" />
					</button>
				</div>
			</div>

		</form>







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
		<script type="text/javascript">
			$(function() {
				'use strict';
				var countriesArray = $.map(countries, function(value, key) {
					return {
						value : value,
						data : key
					};
				});
				// Initialize autocomplete with custom appendTo:
				$('#autocomplete-custom-append').autocomplete({
					lookup : countriesArray,
					appendTo : '#autocomplete-container'
				});
			});
		</script>
		<script src="js/custom.js"></script>


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
		<!-- input tags -->
		<script>
			function onAddTag(tag) {
				alert("Added a tag: " + tag);
			}

			function onRemoveTag(tag) {
				alert("Removed a tag: " + tag);
			}

			function onChangeTag(input, tag) {
				alert("Changed a tag: " + tag);
			}

			$(function() {
				$('#tags_1').tagsInput({
					width : 'auto'
				});
			});
		</script>
		<!-- /input tags -->
		<!-- form validation -->
		<script type="text/javascript">
			$(document).ready(function() {
				$.listen('parsley:field:validate', function() {
					validateFront();
				});
				$('#demo-form .btn').on('click', function() {
					$('#demo-form').parsley().validate();
					validateFront();
				});
				var validateFront = function() {
					if (true === $('#demo-form').parsley().isValid()) {
						$('.bs-callout-info').removeClass('hidden');
						$('.bs-callout-warning').addClass('hidden');
					} else {
						$('.bs-callout-info').addClass('hidden');
						$('.bs-callout-warning').removeClass('hidden');
					}
				};
			});

			$(document).ready(function() {
				$.listen('parsley:field:validate', function() {
					validateFront();
				});
				$('#demo-form2 .btn').on('click', function() {
					$('#demo-form2').parsley().validate();
					validateFront();
				});
				var validateFront = function() {
					if (true === $('#demo-form2').parsley().isValid()) {
						$('.bs-callout-info').removeClass('hidden');
						$('.bs-callout-warning').addClass('hidden');
					} else {
						$('.bs-callout-info').addClass('hidden');
						$('.bs-callout-warning').removeClass('hidden');
					}
				};
			});
			try {
				hljs.initHighlightingOnLoad();
			} catch (err) {
			}
		</script>
		<!-- /form validation -->
		<!-- editor -->
		<script>
			$(document).ready(function() {
				$('.xcxc').click(function() {
					$('#descr').val($('#editor').html());
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
										'.dropdown-toggle').dropdown('toggle');
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
											+ $('#editor').innerWidth() - 35
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