<%@page language="java" import="edu.csbsju.csci230.*,java.util.*"%>

<%

UserController unique = (UserController)session.getAttribute("loggedInUser");
if (unique == null || unique.isLoggedIn() == false){
	
	session.setAttribute("-4", "Must log on");
	response.sendRedirect("index.jsp");
	return;
}%>