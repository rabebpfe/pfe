<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="testmodal" style="padding: 30px 30px;">
					
					<c:url var="saveComment" value="/comment/save"></c:url>
					<form:form modelAttribute="comment"  action="${saveComment}" method="POST">
						
						<form:hidden path="idCommente"  />

						<div class="form-group">
							<form:label path="description"
								class="control-label col-md-3 col-sm-3 col-xs-12"
								for="Comment_Description">
								<spring:message code="label.Commented" />
								<span class="required">*</span>
							</form:label>
							<div class="col-sm-9">
							<form:textarea path="Description" cssClass="form-control col-md-7 col-xs-12"/>
								
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