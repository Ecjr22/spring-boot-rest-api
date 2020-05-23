<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<body>

	<h1>Welcome to the Home Page</h1>

	<hr>
	
	<p> User: <security:authentication property="principal.username" /></p>
	
	<!-- 'authorities' is the same as 'roles' -->
	<p> Role(s): <security:authentication property="principal.authorities" /></p>
	
	<hr>
	
	<security:authorize access="hasRole('MANAGER')">
		<!-- link for managers only -->
		<p>
			<a href="${pageContext.request.contextPath}/leaders">Leaders Meeting (Managers Only)</a>
		</p>
	</security:authorize>
	
	<security:authorize access="hasRole('ADMIN')">
		<!--  link for admins only -->
		<p>
			<a href="${pageContext.request.contextPath}/systems">IT Systems (Admins Only)</a>
		</p>
	</security:authorize>

	<!-- logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
		<input type="submit" value="logout" />
	</form:form>

</body>
</html>