<%@page import="antlr.collections.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>Kitchen Story</title>
  </head>

<body>
<div class="container">

<jsp:include page="/WEB-INF/view/components/header.jsp" ></jsp:include>
<jsp:include page="/WEB-INF/view/components/topbar.jsp" ></jsp:include>

<% if (session.getAttribute("user_id") != null ){ %>
      <div class = "row">
      <div class ="col-sm-9">
        <form name=search action="productsearch" method="post">
          <div class="form-group">
            <label style ="font-weight:bold" for="name"> Search Item</labelfor></label>
            <input name = sitem class ="form-control is-valid" type="text" placeholder="Enter Item">
          </div>
         <div>
            <button type="submit" class="btn-success">Search</button>
          </div>
        </form>
				 
		<br><br>
			<table class ="table table-hover">
			 <thead class="table-active">
			 	<tr class="table-info">
			 		<td><b>Product</b></td>
			 		<td><b>Price</b></td>
			 		<td><b>Category</b></td> 
			 		<td></td>
			 	</tr>
			 </thead>
			 <tbody>
			 	<c:forEach items="${list}" var="item">
			 	  	<tr class="table-primary">
				 		<td>${item.name }</td>
			 			<td>${item.price }</td>
			 			<td>${mapCats.get(item.ID)}</td>
			 	  		<td>
			 	  			<a style ="font-weight:bold" href="cartadditem?id=${item.ID}">Add To Cart</a>
			 	  		</td>
			 	  	</tr>
			 	  </c:forEach>
			     </tbody>
			 </table>
			<br>
		<jsp:include page="/WEB-INF/view/tempcart.jsp"></jsp:include>
<% } %>
		<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>
      </div>
      </div>
</div>

 <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>