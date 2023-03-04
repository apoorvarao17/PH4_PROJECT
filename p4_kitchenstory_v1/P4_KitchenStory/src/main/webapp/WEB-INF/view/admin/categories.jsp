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

    <title style='color: purple'>Admin - Setup Product Categories</title>
  </head>


<body>
<div class="container">
<jsp:include page="/WEB-INF/view/components/admin-header.jsp" ></jsp:include>
<jsp:include page="/WEB-INF/view/components/admin-topbar.jsp" ></jsp:include>

    <div class = "row">
     <div class ="col-sm-9">
		Total Categories: ${list.size()} &nbsp;&nbsp; <a style ="font-weight:bold" href="admineditcat?id=0">Add Category</a><br> <br>
		
	<table class ="table table-hover">
	 <thead class="table-active">
	   <tr class="table-primary">
 		<td><b>Category</b></td>
 		<td></td>
 		</tr>
 	 </thead>
	 <tbody>
 	  <c:forEach items="${list}" var="item">
 	  	<tr class= "table-info">
 	  		<td>${item.name }</td>
 	  		<td>
 	  			<a style ="font-weight:bold" href="admineditcat?id=${item.ID}">Edit</a> | <a style ="font-weight:bold" href="admindeletecat?id=${item.ID}">Delete</a>
 	  		</td>
 	  	</tr>
 	  </c:forEach>
 	 </tbody>
</table> 	

<jsp:include page="/WEB-INF/view/components/admin-footer.jsp"></jsp:include>
</body>
</html>