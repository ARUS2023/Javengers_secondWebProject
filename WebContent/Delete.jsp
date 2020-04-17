<%@page language="java" import="edu.csbsju.csci230.*,java.util.*"%>
<%@include file = "verifyLogin.jsp" %>

<%
UserController uc = (UserController)session.getAttribute("loggedInUser");
    out.println("delete user : " + request.getParameter("Username").toString());
    User u = uc.getSpecificUser(request.getParameter("Username"));
    uc.deleteUser(u);
    response.sendRedirect("Menu.jsp");



    out.println("delete user : " + request.getParameter("Username"));

%>