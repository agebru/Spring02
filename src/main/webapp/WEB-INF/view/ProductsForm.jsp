<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/StyleSheet.css" />" rel="stylesheet">
</head>
<body>
<div class="SideMenuPanel">
<form:form modelAttribute="newProduct" method="POST" action="products">
<table>
<tr>
<td><form:label path="id">ID</form:label></td>
<td><form:input path="id"/></td>
</tr>

<tr>
<td><form:label path="name">Name</form:label></td>
<td><form:input path="name"/></td>
</tr>

<tr>
<td><form:label path="price">Price</form:label></td>
<td><form:input path="price"/></td>
</tr>

<tr>
<td></td><td> <input type="submit" value="submit"></td>
</tr>


</table>






</form:form>



</div>
 
</body>
</html>