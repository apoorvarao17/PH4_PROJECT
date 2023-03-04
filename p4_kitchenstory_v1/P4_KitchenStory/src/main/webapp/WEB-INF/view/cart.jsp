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

    <title>Kitchen Story - Your Cart</title>
  </head>

<body>
<div class="container">

<jsp:include page="/WEB-INF/view/components/header.jsp" ></jsp:include>
<jsp:include page="/WEB-INF/view/components/topbar.jsp" ></jsp:include>

      <div class = "row">
      <div class ="col-sm-9">
			<%
			if (request.getParameter("error") != null)
				out.print(request.getParameter("error") + "<br>");
			%>
			
			<br><br>Total Cart Value: ${cartValue }<br>
			
			<table class ="table table-hover">
			 <thead class="table-active">
			   <tr class="table-info">
			 		<td><b>Product</b></td>
			 		<td><b>Qty</b></td>
			 		<td><b>Rate</b></td>
			 		<td><b>Price</b></td>
			 		<td></td>
			 	</tr>
			 </thead>
			 <tbody>
			 	<c:forEach items="${cartItems}" var="item">
			 	  	<tr class="table-primary">
				 		<td>${item.name }</td>
			 			<td>${item.rate }</td>
			 			<td>${item.qty}</td>
			 			<td>${item.price}</td>
			 	  		<td>
			 	  			<a style ="font-weight:bold" href="cartdeleteitem?id=${item.productId}">Remove</a>
			 	  		</td>
			 	  	</tr>
			 	  </c:forEach>
			 	 </tbody>
			</table> 		
			
			<br>
			 <c:if test = "${cartItems.size() > 0}">
				<a style ="font-weight:bold" href="checkout">Checkout Now</a>
			</c:if>
			
			<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>
	      </div>
      </div>
</div>
</body>
</html>