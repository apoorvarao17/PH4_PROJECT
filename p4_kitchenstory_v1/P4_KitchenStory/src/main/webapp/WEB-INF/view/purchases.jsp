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

    <title class="card-title">Kitchen story- Your Purchases</title>
  </head>

<body>
<div class="container">
      <div class = "row">
      <div class ="col-sm-9">
			<jsp:include page="/WEB-INF/view/components/header.jsp" ></jsp:include>
			<jsp:include page="/WEB-INF/view/components/topbar.jsp" ></jsp:include>
			
			<br><br>Total ${list.size()} Orders: ${totalAmount }<br>
			
			<table class ="table table-hover">
			 <thead class="table-active">
			   <tr class="table-info">
			 		<td><b>Order ID</b></td>
			 		<td><b>Date</b></td>
			 		<td><b>Items</b></td>
			 		<td><b>Total</b></td>
			 	</tr>
			 </thead>
			 <tbody>
			 	<c:forEach items="${list}" var="item">
			 	  	<tr class="table-primary">
				 		<td>${item.ID }</td>
			 			<td>${item.date }</td>
  		 			     <td>
			 				  ${mapItems.get(item.ID)}
			 			</td>
			 			 <td style ="font-weight:bold" >${item.total}</td>
			 	  	</tr>
			 	  </c:forEach>
			 </tbody>
			</table> 		
			
			<br>
			<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>
</body>
</html>