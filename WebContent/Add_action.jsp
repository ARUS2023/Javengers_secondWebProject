<%@page language="java" import="edu.csbsju.csci230.*,java.util.*"%>
<% String firstName = request.getParameter("FirstName");
String lastName = request.getParameter("LastName");
String  username = request.getParameter("Username");
String password = request.getParameter("Password");
String type = request.getParameter("Type");
String status = request.getParameter("Status");
char t = type.charAt(0);
char s = status.charAt(0);
User u = new User(firstName,lastName,username,password,t,s);
UserController uc = new UserController();
uc.addUser(u);
response.sendRedirect("Menu.jsp");

%>