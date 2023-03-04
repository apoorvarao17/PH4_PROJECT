<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>

 


<% if (session.getAttribute("user_id") == null ) { %>
	<a href="login">User Login/Signup</a> | 
	<a href="adminlogin">AdminLogin</a> |
<% }  else { %>
	<a href="home">Home</a> |
	<a href="cart">Cart</a> | 
	<a href="memberpurchases">Your Orders</a> |
	<a href="logout">Logout</a>|

<% }  %>


 
<br><br>