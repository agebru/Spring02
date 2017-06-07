<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<title>Login Page</title>
<link href="<c:url value="/resources/css/StyleSheet.css" />" rel="stylesheet" />
</head>

<body>
<h3>Login with Username and Password</h3>

<c:if test="${param.error!=null }">

<p class="error"> Login Failed. check userName and password are correct!</p>
</c:if>

<div class="SideMenuPanel">
<form name='f' action='${pageContext.request.contextPath }/j_spring_security_check' method='POST'>
 <table>
    <tr><td>User:</td><td><input type='text' name='j_username' value=''></td></tr>
    <tr><td>Password:</td><td><input type='password' name='j_password'/></td></tr>
    
    <tr><td colspan='2'><input name="submit" type="submit" value="Login"/></td></tr>
  </table>
</form>
</div>
</body>

</html>