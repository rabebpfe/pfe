
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.*"%>
<div class="top_nav">

	<div class="nav_menu">
		<nav class="" role="navigation">
			<div class="nav toggle">
				<a id="menu_toggle"><i class="fa fa-bars"></i></a>
			</div>

			<ul class="nav navbar-nav navbar-right">
				<li class=""><a href="javascript:;"
					class="user-profile dropdown-toggle" data-toggle="dropdown"
					aria-expanded="false"> <img
						src="photoUser?idUser=${user.idUser} " alt="">${user.username}
						<span class=" fa fa-angle-down"></span>
				</a>
					<ul
						class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
						<li><a href="profile"><spring:message
									code="label.Profile" /></a></li>

						<li><a href="lockscreen"> <spring:message
									code="label.Lockscreen" /></a></li>
						<li><a href="logout"><i class="fa fa-sign-out pull-right"></i>
								<spring:message code="label.Out" /></a></li>
					</ul></li>
				<ul class="nav navbar-nav navbar-right">
					<li class=""><a href="javascript:;"
						class="user-profile dropdown-toggle" data-toggle="dropdown"
						aria-expanded="false"> 
					
							<c:if test="${pageContext.response.locale== 'en'}" >
							
					
						
						<img
							src="<c:url value="/resources/img/flag_uk.png" />" alt=""> </c:if>
							<c:if test="${pageContext.response.locale== 'de'}" >
							
					
						
						<img
							src="<c:url value="/resources/img/flag_de.png" />" alt=""> </c:if>
							<c:if test="${pageContext.response.locale == 'fr'}" >
							
					
						
						<img
							src="<c:url value="/resources/img/flag_france.png" />" alt=""> </c:if>
							<span
							class=" fa fa-angle-down"></span>
					</a>
						<ul
							class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
							
							<li><a href="?language=en">English</a></li>

							<li><a href="?language=fr"> Français</a></li>
							<li><a href="?language=de">Allemand</a></li>
						</ul></li>
						


					<li role="presentation" class="dropdown"><a
						href="javascript:;" class="dropdown-toggle info-number"
						data-toggle="dropdown" aria-expanded="false"> <i
							class="fa fa-envelope-o"></i> <span class="badge bg-green">5</span>
					</a>
						<ul id="menu1"
							class="dropdown-menu list-unstyled msg_list animated fadeInDown"
							role="menu">
							<li><a> <span class="image"> <img
										src="<c:url value="/resources/img/user1-128x128.jpg" />"
										alt="Profile Image" />
								</span> <span> <span>John Smith</span> <span class="time">3
											mins ago</span>
								</span> <span class="message"> Film festivals used to be
										do-or-die moments for movie makers. They were where... </span>
							</a></li>
							<li><a> <span class="image"> <img
										src="<c:url value="/resources/img/user1-128x128.jpg" />"
										alt="Profile Image" />
								</span> <span> <span>John Smith</span> <span class="time">3
											mins ago</span>
								</span> <span class="message"> Film festivals used to be
										do-or-die moments for movie makers. They were where... </span>
							</a></li>
							<li><a> <span class="image"> <img
										src="<c:url value="/resources/img/user1-128x128.jpg" />"
										alt="Profile Image" />
								</span> <span> <span>John Smith</span> <span class="time">3
											mins ago</span>
								</span> <span class="message"> Film festivals used to be
										do-or-die moments for movie makers. They were where... </span>
							</a></li>
							<li><a> <span class="image"> <img
										src="<c:url value="/resources/img/user1-128x128.jpg" />"
										alt="Profile Image" />
								</span> <span> <span>John Smith</span> <span class="time">3
											mins ago</span>
								</span> <span class="message"> Film festivals used to be
										do-or-die moments for movie makers. They were where... </span>
							</a></li>
							<li>
								<div class="text-center">
									<a href="mailbox"> <strong><spring:message
												code="label.Alerts" /></strong> <i class="fa fa-angle-right"></i>
									</a>
								</div>
							</li>
						</ul></li>


					<sec:authorize access="hasRole('ROLE_DEV')">
						<li role="presentation" class="dropdown"><a
							href="javascript:;" class="dropdown-toggle info-number"
							data-toggle="dropdown" aria-expanded="false"> <i
								class="fa fa-plus-square-o"></i> <span class="badge bg-green">4</span>
						</a>
							<ul id="menu1"
								class="dropdown-menu list-unstyled msg_list animated fadeInDown"
								role="menu">
								<li><a> <span class="image"> <img
											src="<c:url value="/resources/img/user1-128x128.jpg" />"
											alt="Profile Image" />
									</span> <span> <span>John Smith</span> <span class="time">3
												mins ago</span>
									</span> <span class="message"> Film festivals used to be
											do-or-die moments for movie makers. They were where... </span>
								</a></li>
								<li><a> <span class="image"> <img
											src="<c:url value="/resources/img/user1-128x128.jpg" />"
											alt="Profile Image" />
									</span> <span> <span>John Smith</span> <span class="time">3
												mins ago</span>
									</span> <span class="message"> Film festivals used to be
											do-or-die moments for movie makers. They were where... </span>
								</a></li>
								<li><a> <span class="image"> <img
											src="<c:url value="/resources/img/user1-128x128.jpg" />"
											alt="Profile Image" />
									</span> <span> <span>John Smith</span> <span class="time">3
												mins ago</span>
									</span> <span class="message"> Film festivals used to be
											do-or-die moments for movie makers. They were where... </span>
								</a></li>
								<li><a> <span class="image"> <img
											src="<c:url value="/resources/img/user1-128x128.jpg" />"
											alt="Profile Image" />
									</span> <span> <span>John Smith</span> <span class="time">3
												mins ago</span>
									</span> <span class="message"> Film festivals used to be
											do-or-die moments for movie makers. They were where... </span>
								</a></li>
								<li>
									<div class="text-center">
										<a href="notification"> <strong><spring:message
													code="label.Alerts_Notification" /></strong> <i
											class="fa fa-angle-right"></i>
										</a>
									</div>
								</li>

							</ul></li>
					</sec:authorize>
				</ul>
		</nav>
	</div>
</div>

