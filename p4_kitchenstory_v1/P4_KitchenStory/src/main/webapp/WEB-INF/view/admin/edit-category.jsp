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

    <title style='color: purple'>Admin - Add/Edit Product Category</title>
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
			<form name=frmCat method=post action="admineditcataction">
				<input type=hidden name=id value=${category.ID}>
			<table class ="table table-hover">
			 <thead class="table-active">
			   <tr class="table-primary">
			 		<td width=25%>Category name*</td>
			 		<td><input name=name  maxlength=50 value="${category.name}"></td>
			 	</tr>
			 </thead>
	         <tbody>
			 	<tr class="table-info">
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