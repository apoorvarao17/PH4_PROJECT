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

    <title style='color: purple'>Admin - Add/Edit Produc</title>
  </head>

<body>
<div class="container">
<jsp:include page="/WEB-INF/view/components/admin-header.jsp" ></jsp:include>
<jsp:include page="/WEB-INF/view/components/admin-topbar.jsp" ></jsp:include>
	  
	  <div class = "row">
      <div class ="col-sm-9">
		<%
		if (request.getParameter("error") != null)
			out.print(request.getParameter("error"));
		%>
		
		<form name=frmProduct method=post action="admineditproductaction">
			<input type=hidden name=id value="${product.ID }">
		<table class ="table table-hover">
		 <thead class="table-active">
		   <tr class="table-primary">
		 		<td width=25%>Product name*</td>
		 		<td><input name=name  maxlength=100 value="${product.name }"></td>
		 	</tr>
		 	<tr class="table-primary">
		 		<td width=25%>Price*</td>
		 		<td><input name=price type="numeric"  maxlength=6 value="${product.price }"></td>
		 	</tr>
		 	<tr class="table-primary">
		 		<td width=25%>Category*</td>
		 		<td>
		 			<select name=category>
		 				<option value="0">Select category</option>
		 				${catDropdown}
		 			</select>
		 		</td>
		 	</tr>
		 	</thead>
		 	<tbody>
		 	<tr class="table-primary">
		 		<td colspan=2>
		 			<button>Save</button>
		 		</td>
		 	</tr>
		 	</tbody>
		 </table>
		</form>

<jsp:include page="/WEB-INF/view/components/admin-footer.jsp"></jsp:include>
</body>
</html>