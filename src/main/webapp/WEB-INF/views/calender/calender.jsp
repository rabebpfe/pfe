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
	href="<c:url value="/resources/production/css/calendar/fullcalendar.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/production/css/calendar/fullcalendar.print.css" />"
	rel="stylesheet" media="print">
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
						<spring:message code="label.Calender_Events" />
						<small>Sessions</small>
					</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>

						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">

					<div id='calendar'></div>

				</div>
			</div>
		</div>
	</div>


	<!-- Start Calender modal -->
	<div id="CalenderModalNew" class="modal fade" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">�</button>
					<h4 class="modal-title" id="myModalLabel">
						<spring:message code="label.New_Calender_Entry" />
					</h4>
				</div>
				<div class="modal-body">
					<div id="testmodal" style="padding: 5px 20px;">
						<form id="antoform" class="form-horizontal calender" role="form">
							<div class="form-group">
								<label class="col-sm-3 control-label"><spring:message
										code="label.Title" /></label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="title" name="title">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label"><spring:message
										code="label.Description" /></label>
								<div class="col-sm-9">
									<textarea class="form-control" style="height: 55px;" id="descr"
										name="descr"></textarea>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default antoclose"
						data-dismiss="modal">
						<spring:message code="label.Close" />
					</button>
					<button type="button" class="btn btn-primary antosubmit">
						<spring:message code="label.Save_changes" />
					</button>
				</div>
			</div>
		</div>
	</div>
	<div id="CalenderModalEdit" class="modal fade" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">�</button>
					<h4 class="modal-title" id="myModalLabel2">
						<spring:message code="label.Edit_Calender_Entry" />
					</h4>
				</div>
				<div class="modal-body">

					<div id="testmodal2" style="padding: 5px 20px;">
						<form id="antoform2" class="form-horizontal calender" role="form">
							<div class="form-group">
								<label class="col-sm-3 control-label"><spring:message
										code="label.Title" /></label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="title2"
										name="title2">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label"><spring:message
										code="label.Description" /></label>
								<div class="col-sm-9">
									<textarea class="form-control" style="height: 55px;"
										id="descr2" name="descr"></textarea>
								</div>
							</div>

						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default antoclose2"
						data-dismiss="modal">
						<spring:message code="label.Close" />
					</button>
					<button type="button" class="btn btn-primary antosubmit2">
						<spring:message code="label.Save_changes" />
					</button>
				</div>
			</div>
		</div>
	</div>

	<div id="fc_create" data-toggle="modal" data-target="#CalenderModalNew"></div>
	<div id="fc_edit" data-toggle="modal" data-target="#CalenderModalEdit"></div>

	<!-- End Calender modal -->
	<!-- /page content -->







	<script
		src="<c:url value="/resources/production/js/bootstrap.min.js" />"></script>

	<script src="<c:url value="/resources/production/js/nprogress.js" />"></script>
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

	<script src="<c:url value="/resources/production/js/moment.min.js" />"></script>
	<script
		src="<c:url value="/resources/production/js/calendar/fullcalendar.min.js" />"></script>





	<!-- tags -->
	<script
		src="<c:url value="/resources/production/js/tags/jquery.tagsinput.min.js" />"></script>
	<!-- switchery -->
	<script
		src="<c:url value="/resources/production/js/switchery/switchery.min.js" />"></script>
	<!-- daterangepicker -->
	<script src="<c:url value="/resources/production/js/moment.min2.js" />"></script>
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
						'Courier', 'Courier New', 'Comic Sans MS', 'Helvetica',
						'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma',
						'Times', 'Times New Roman', 'Verdana' ], fontTarget = $(
						'[title=Font]').siblings('.dropdown-menu');
				$
						.each(
								fonts,
								function(idx, fontName) {
									fontTarget
											.append($('<li><a data-edit="fontName ' + fontName + '" style="font-family:\'' + fontName + '\'">'
													+ fontName + '</a></li>'));
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
									'absolute').offset(target.offset()).width(
									target.outerWidth()).height(
									target.outerHeight());
						});
				if ("onwebkitspeechchange" in document.createElement("input")) {
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
								+ msg
								+ ' </div>').prependTo('#alerts');
			}
			;
			initToolbarBootstrapBindings();
			$('#editor').wysiwyg({
				fileUploadError : showErrorAlert
			});
			window.prettyPrint && prettyPrint();
		});
	</script>




	<script>
		$(window).load(function() {

			var date = new Date();
			var d = date.getDate();
			var m = date.getMonth();
			var y = date.getFullYear();
			var started;
			var categoryClass;

			var calendar = $('#calendar').fullCalendar({
				header : {
					left : 'prev,next today',
					center : 'title',
					right : 'month,agendaWeek,agendaDay'
				},
				selectable : true,
				selectHelper : true,
				select : function(start, end, allDay) {
					$('#fc_create').click();

					started = start;
					ended = end

					$(".antosubmit").on("click", function() {
						var title = $("#title").val();
						if (end) {
							ended = end
						}
						categoryClass = $("#event_type").val();

						if (title) {
							calendar.fullCalendar('renderEvent', {
								title : title,
								start : started,
								end : end,
								allDay : allDay
							}, true // make the event "stick"
							);
						}
						$('#title').val('');
						calendar.fullCalendar('unselect');

						$('.antoclose').click();

						return false;
					});
				},
				eventClick : function(calEvent, jsEvent, view) {
					//alert(calEvent.title, jsEvent, view);

					$('#fc_edit').click();
					$('#title2').val(calEvent.title);
					categoryClass = $("#event_type").val();

					$(".antosubmit2").on("click", function() {
						calEvent.title = $("#title2").val();

						calendar.fullCalendar('updateEvent', calEvent);
						$('.antoclose2').click();
					});
					calendar.fullCalendar('unselect');
				},
				editable : true,
				events : [ {
					title : 'All Day Event',
					start : new Date(y, m, 1)
				}, {
					title : 'Long Event',
					start : new Date(y, m, d - 5),
					end : new Date(y, m, d - 2)
				}, {
					title : 'Meeting',
					start : new Date(y, m, d, 10, 30),
					allDay : false
				}, {
					title : 'Lunch',
					start : new Date(y, m, d + 14, 12, 0),
					end : new Date(y, m, d, 14, 0),
					allDay : false
				}, {
					title : 'Birthday Party',
					start : new Date(y, m, d + 1, 19, 0),
					end : new Date(y, m, d + 1, 22, 30),
					allDay : false
				}, {
					title : 'Click for Google',
					start : new Date(y, m, 28),
					end : new Date(y, m, 29),
					url : 'http://google.com/'
				} ]
			});
		});
	</script>