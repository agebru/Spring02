<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adding Books</title>
<link href="<c:url value="/resources/css/StyleSheet.css" />" rel="stylesheet" />
</head>
<body>
<div class="SideMenuPanel">
<form:form modelAttribute="NewBook" method="POST" action="addBook">
<table>
<tr>
<td><form:label path="isbn">ISBN</form:label></td>
<td><form:input path="isbn"/></td>
</tr>

<tr>
<td><form:label path="title">Title</form:label></td>
<td><form:input path="title"/></td>
</tr>
<tr>
<td><form:label path="author">Author</form:label></td>
<td><form:input path="author"/></td>
</tr>

<tr>
<td><form:label path="price">Price</form:label></td>
<td><form:input path="price"/></td>
</tr>

</table>
<input type="submit" value="Submit">

</form:form>



</div>


</body>
</html>