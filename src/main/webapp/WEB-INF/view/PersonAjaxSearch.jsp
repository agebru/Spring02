<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
	 
	$('#btnSearch').click(function(){
		
		//alert("what do you want");
		$('#personResult').show();
		
		var name=$('#firstName').val();
		$.ajax({
			type:'GET',
			dataType:'json',
			url:'${pageContext.request.contextPath}/webapi/persons',     			
			success:function(data){
							
				
				$('#persoRresult').html('<h2>JSON output of Persons Information</h2>')
				
				jQuery.each(data,function(i,val){
					$('#persoRresult').append('<p><center>'+val.ssn+'   '+val.firstName+'  '+val.lastName+'  '+val.age+'</center></p>');
				})
			}
			
			
		});
		
		
		
		
	}) ;
	
	
	// btn clear here
	$('#btnClear').click(function(){
		
		$('#persoRresult').html('<h3>Click Find All to See all persons info</h3>');
	//	$('#personResult').toggle();
					
	});
	
	
	$('#btnSearchOne').click(function(){
		
		var ssn=$('#ssn').val();
		$.ajax({
			type:'GET',
			dataType:'json',
			url:'${pageContext.request.contextPath}/webapi/persons/'+ssn,     			
			success:function(data){
							
				
				$('#persoRresult').html('<h2>JSON output of single Persons Information</h2>')
				$('#persoRresult').append('<table><tr><th>SSN</th><th>First Name</th><th>Last Name</th><th>Age</th></tr>')
				jQuery.each(data,function(i,val){
					$('#persoRresult').append('<tr><td>'+val.ssn+'</td>   <td>'+val.firstName+'</td>   <td>'+val.lastName+'</td>   <td>'+val.age+'</td></tr>');
				})
				$('#persoRresult').append('</table>');
			}
			
			
		});
		
		
		
		
		
		// end of person search
	});
	
	
	
	 
 });
 
 
 
 
 
 </script>
</head>
<body>



<h3> Searching Person Using AJAX</h3>
<fieldset>
<legend>Search person </legend>
<h3>Find all persons</h3>
<input type="button" id="btnSearch" value="Find All"/><input type="button" id="btnClear" value="Clear"/><br/>

Enter SSN: <input type="text" id="ssn"> <input type="button" id="btnSearchOne" value="Find Person"/><br/>


<div id="persoRresult">search result here!</div>
</fieldset>



</body>
</html>