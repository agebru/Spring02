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
    
    $(document).ready(function(){
    	
    
    	$('#searchButton').click(function(){
    		
    		var name=$('#fullName').val();
    		$.ajax({
    			type:'GET',
    			url:'${pageContext.request.contextPath}/hello/'+name,     			
    			success:function(data){
    				$('#result').html(data);
    			}
    			
    			
    		});
    		
    		
    		
    	});/* end of $('#searchButton').click(function(){ */
    	
    		
    	
    	/* searching book by author  */    	
    	
   $('#searchBookButton').click(function(){
    		
    		var author=$('#author').val();
    		$.ajax({
    			type:'GET',
    			dataType:'json',
    			url:'${pageContext.request.contextPath}/searchByAuthor/'+author,     			
    			success:function(result){
    				
    				$('#bookResult').html('')
    				
    				jQuery.each(result,function(i,val){
    					$('#bookResult').append('<p><center>'+val.isbn+'   '+val.title+'  '+val.author+'  '+val.price+'</center></p>');
    				})
    			},
    			
    			
    			error:function(){
    				  alert("Error in Request...");
    			    }
    				
    			});
    		
    		
    		
    	}); /* end of  $('#searchBookButton').click(function(){ */
    	
    	
    	
    });
    
    
    
    </script>
</head>
<body>

<h3> Searching Book Using AJAX</h3>
<fieldset>
<legend>Greetings </legend>
Author: <input type="text" id="fullName">
<input type="button" id="searchButton"/>

<div id="result">search result here!</div>
</fieldset>


<fieldset>
<legend>Searching Book by Author </legend>
Author: <input type="text" id="author">
<input type="button" id="searchBookButton"/>

<div id="bookResult">books here!</div>
</fieldset>

</body>
</html>