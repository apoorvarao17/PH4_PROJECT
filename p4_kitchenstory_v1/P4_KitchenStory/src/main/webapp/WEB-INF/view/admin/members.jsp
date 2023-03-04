<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title style='color: purple'>Admin - Browse Members</title>
  </head>



<body>
<div class="container">
<jsp:include page="/WEB-INF/view/components/admin-header.jsp" ></jsp:include>
<jsp:include page="/WEB-INF/view/components/admin-topbar.jsp" ></jsp:include>

      <div class = "row">
      <div class ="col-sm-9">

		<form name=search action="adminmembersearch" method="post">
			
		<h3>Enter search details:</h3>
		<table class ="table table-hover">
		 <thead class="table-active">
		   <tr class="table-info">
		 		<td width=25%>First Name of the user*</td>
		 		<td><input name=fname maxlength=50></td>
		 	</tr>
		 	<tr class="table-info">
		 		<td colspan=2>
		 			<button>Search</button><br> 			
		 		</td>
		 	</tr>
	    </thead>
	   </table>
       </form>
		 
		Total Members: ${list.size() }
		
	<table class ="table table-hover">
	 <thead class="table-active">
	   <tr class="table-info">
		 		<td><b>Name</b></td>
		 		<td><b>Email</b></td>
		 		<td><b>Signup Date</b></td>
		 		<td><b>Age</b></td>
		 		<td><b>Address</b></td>
		 	</tr>
		 </thead>
		 <tbody>
		 	<c:forEach items="${list}" var="item">
		 	  	<tr class="table-primary">
			 		<td>${item.fname}&nbsp;${item.lname }</td>
		 			<td>${item.email}</td>
		 			<td>${item.dateAdded}</td>
		 			<td>${item.age}</td>
		 			<td>${item.address}</td>
		 			
		 	  	</tr>
		 	  </c:forEach>
		 </tbody>
		</table> 		
			
		
		
		<jsp:include page="/WEB-INF/view/components/admin-footer.jsp"></jsp:include>
</body>
</html>