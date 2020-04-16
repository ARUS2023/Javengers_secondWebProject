<%@page language="java" import="edu.csbsju.csci230.*"%>
<form method="post" action="Menu.jsp">
<%UserController uc  = new UserController();
String username = request.getParameter("Username");
String password = request.getParameter("Password");
session.setAttribute("name", username);
int num = uc.login(username, password);
if (num == 0){
 session.setAttribute("loggedInUer", uc);
 response.sendRedirect("Menu.jsp");
}
 else if(num == -1){
	 session.setAttribute("invalidUsername", "The provided username is not valid");
	 response.sendRedirect("index.jsp");
 }
 else if (num == -2){
	 session.setAttribute("invalidPassword", "The provided password is not valid");
	 response.sendRedirect("index.jsp");
 }
 else
 {
	 session.setAttribute("error", "Database Error");
	 response.sendRedirect("index.jsp");
 }
 
 %>
 </form>

