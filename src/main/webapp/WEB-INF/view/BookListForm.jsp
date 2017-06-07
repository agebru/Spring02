<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/StyleSheet.css" />" rel="stylesheet">
 <script src="<c:url value="/resources/js/jquery-3.2.0.min.js" />"></script>
    
    <script type="text/javascript">
    
    function searchBook(){
    	
    	$.getJSON("searchByAuthor",
    		{chars:$('#searchBox').val()},
    		function(data){
    			alert("Working...");
    		});
    }
    
    function hello(){
    	//alert("hello");
    	$()
    }
    
    
    
    </script>
  
</head>
<body>
<div class="SideMenuPanel">
<table>
<tr>
<th>ISBN</th><th>Title</th><th>Author</th><th>Price</th>
</tr>
<c:forEach var="book" items="${bookList }">
<tr>
<td>${book.isbn}</td>
<td>${book.title}</td>
<td>${book.author}</td>
<td>${book.price}</td>

</tr>
</c:forEach>
<tr>
<td></td><td></td><td><a href="searchBook">Search Book</a></td></tr>
</table>


</div>
<BR/>


</body>
</html>