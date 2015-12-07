
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
					aria-expanded="false"> <c:if
							test="${pageContext.response.locale== 'en'}">



							<img src="<c:url value="/resources/img/flag_uk.png" />" alt="">
						</c:if> <c:if test="${pageContext.response.locale== 'de'}">



							<img src="<c:url value="/resources/img/flag_de.png" />" alt="">
						</c:if> <c:if test="${pageContext.response.locale == 'fr'}">



							<img src="<c:url value="/resources/img/flag_france.png" />"
								alt="">
						</c:if> <span class=" fa fa-angle-down"></span>
				</a>
					<ul
						class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">

						<li><a href="?language=en">English</a></li>
						<li><a href="?language=fr"> Français</a></li>
						<li><a href="?language=de">Allemand</a></li>
					</ul></li>






				<%!int l = 0;%>

				<c:forEach var="messageAll" items="${messageAll}">


					<%
						l = l + 1;
					%>




				</c:forEach>





				<%!int j = 0;%>

				<c:forEach var="notificationAll" items="${notificationAll}">


					<%
						j = j + 1;
					%>




				</c:forEach>


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
							<li><a href="logout"><i
									class="fa fa-sign-out pull-right"></i> <spring:message
										code="label.Out" /></a></li>
						</ul></li>




					<li role="presentation" class="dropdown"><a
						href="javascript:;" class="dropdown-toggle info-number"
						data-toggle="dropdown" aria-expanded="false"> <i
							class="fa fa-envelope-o"></i> <span class="badge bg-green">
								<%=l%></span> <%l = 0;%>
					</a>
						<ul id="menu1"
							class="dropdown-menu list-unstyled msg_list animated fadeInDown"
							role="menu">
							<c:forEach var="message" items="${message}">
								<li><a> <span class="image"> <img
											src="photoUser?idUser=${message.users.idUser} " />

									</span> <span> <span>${message.users.username} </span> <span
											class="time"> ${message.day} ${message.month}
												${message.hours} : ${message.munite}</span>
									</span> <span class="message"> ${message.message} </span>
								</a></li>
							</c:forEach>



							<li>
								<div class="text-center">
									<a href="reception"> <strong><spring:message
												code="label.Alerts" /></strong> <i class="fa fa-angle-right"></i>
									</a>
								</div>
							</li>
						</ul></li>


					<sec:authorize access="hasRole('ROLE_DEV')">
						<li role="presentation" class="dropdown"><a
							href="javascript:;" class="dropdown-toggle info-number"
							data-toggle="dropdown" aria-expanded="false"> <i
								class="fa fa-plus-square-o"></i> <span class="badge bg-green">
									<%=j%></span> <%
 	j = 0;
 %>
						</a>
							<ul id="menu1"
								class="dropdown-menu list-unstyled msg_list animated fadeInDown"
								role="menu">
								<c:forEach var="notification" items="${notification}">
									<li><a> <span class="image"> <img
												src="photoUser?idUser=${notification.users.idUser} " />

										</span> <span> <span>${notification.users.username} </span> <span
												class="time"> ${notification.day}
													${notification.month} ${notification.hours} :
													${notification.munite} </span>
										</span> <span class="message"> ${notification.description} </span>
									</a></li>
								</c:forEach>





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

