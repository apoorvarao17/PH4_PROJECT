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

    <title>Kitchen story - Login</title>
  </head>

<body>
<div class="container">
      <div class = "row">
      <div class ="col-sm-9">
      
		<jsp:include page="/WEB-INF/view/components/header.jsp" ></jsp:include>
		<jsp:include page="/WEB-INF/view/components/topbar.jsp" ></jsp:include>
		
		${error}
		
		<form name=frmLogin action="loginaction" method="post">
			
		<table class ="table table-hover">
		 <thead class="table-active">
		   <tr class="table-primary">

		 		<td width=25%>Email id*</td>
		 		<td><input name=email_id maxlength=50></td>
		   </tr>
		   <tr class="table-primary">
		 		<td width=25%>Password*</td>
		 		<td><input name=pwd maxlength=10 type="password"></td>
		   </tr>
		   <tr class="table-primary">
		 		<td colspan=2>
		 			<button>Login</button><br>
		 			<a style ="font-weight:bold" href="signup">Not a member? Signup</a>
		 		</td>
		   </tr>
		  </thead>
		 </table>

		</form>
		<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>
</body>
</html>