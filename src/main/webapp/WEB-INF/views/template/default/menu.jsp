
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.*"%>

<div class="navbar nav_title" style="border: 0;">
	<a href="profile" class="site_title"><i class="fa fa-user"></i> <span>${user.username}!</span></a>
</div>
<div class="clearfix"></div>

<!-- menu prile quick info -->
<div class="profile">
	<div class="profile_pic">
		<img src="photoUser?idUser=${user.idUser} " alt="..."
			class="img-circle profile_img">
	</div>
	<div class="profile_info">
		<span><spring:message code="label.Welcome" /></span>
		<h2>${user.username}</h2>
	</div>
</div>
<!-- /menu prile quick info -->

<br />

<!-- sidebar menu -->
<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

	<div class="menu_section">
		<h3>General</h3>
		<ul class="nav side-menu">
			<li><a><i class="fa fa-users"></i>
				<spring:message code="label.Users" /><span
					class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu" style="display: none">
					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="users"><spring:message code="label.Users" /></a>
						</li>
					</sec:authorize>
					<sec:authorize access="hasRole('ROLE_DEV')">
						<li><a href="contacts"><spring:message
									code="label.Contacts" /></a></li>
					</sec:authorize>
				</ul></li>
				<sec:authorize access="hasRole('ROLE_ADMIN')">
			<li><a> <i class="fa fa-bar-chart-o   "></i> <spring:message
						code="label.Projects" /><span class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu" style="display: none">
					
						<li><a href="projet"><spring:message
									code="label.Projects" /></a></li>
						<li><a href="projetGallery"><spring:message
									code="label.Gallery" /></a></li>
				
				</ul></li>
					</sec:authorize>
			<li><a><i class="fa fa-tasks"></i> <spring:message
						code="label.Task" /><span class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu" style="display: none">
					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="task"><spring:message code="label.Task" /></a>
						</li>
					</sec:authorize>
					<sec:authorize access="hasRole('ROLE_DEV')">
						<li><a href="taskPer"><spring:message code="label.Task" /></a>
						</li>
					</sec:authorize>

				</ul></li>
			<li><a><i class="fa fa-calendar"></i>
				<spring:message code="label.Calender" /><span
					class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu" style="display: none">
					<li><a href="calender"><spring:message
								code="label.Calender" /></a></li>

				</ul></li>
			
				

				


			<li><a><i class="fa fa-envelope"></i> <spring:message
						code="label.Mailbox" /><span class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu" style="display: none">
					<li><a href="envoye"><spring:message code="label.Envoye" /></a>
					</li>
					<li><a href="reception"><spring:message code="label.Inbox" /></a>
					</li>
					<li><a href="compose"><spring:message code="label.Compose" /></a>
					</li>


				</ul></li>
				
					<sec:authorize access="hasRole('ROLE_ADMIN')">
					
					 <li><a href="dashboard"><i class="fa fa-laptop"></i> Dashboard <span class="label label-success pull-right"></span></a>
                                </li>
					</sec:authorize>

		</ul>
	</div>

</div>
