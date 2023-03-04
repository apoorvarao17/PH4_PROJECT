<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>

 

<% Integer cartsize =(Integer) session.getAttribute("cart_size");
   if (cartsize!= null && cartsize >= 0 ) { 
	out.println(cartsize+ "  Items in cart");
 } else 
	 {
		out.println(0 + "  Items in cart");
	 }%>



 
<br><br>