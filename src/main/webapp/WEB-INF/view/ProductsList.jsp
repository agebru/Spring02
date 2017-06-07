<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/StyleSheet.css" />" rel="stylesheet" />
</head>
<body>
<h2>List of Products</h2>
<div class="SideMenuPanel">
<table>
<tr>
<th>Product Id</th>  <th>Product Name</th>  <th>Product Price</th>
</tr>

<c:forEach var="pr" items="${productList}">
<tr>
    <td>${pr.id}</td> <td>${pr.name }</td> <td>${pr.price}</td>
</tr>

</c:forEach>

</table>
</div>
</body>
</html>