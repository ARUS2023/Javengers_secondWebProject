<%@page language="java" import="edu.csbsju.csci230.*,java.util.*"%>
<html>
<head>
<title></title>
</head>
<body>
<% 
String name = (String)session.getAttribute("name");
out.write("Hello User " + name);
UserController uc = (UserController)session.getAttribute("loggedInUser");
ArrayList<User> all = uc.getAllUsers();%>

<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="8" rowspan="1" style="vertical-align: top;"><a
href="Add.jsp">ADD A USER</a>
</td>

</tr>
<tr>

<td style="vertical-align: top;">
Edit</td>
<td style="vertical-align: top; text-align: center;">Full name
</td>
<td style="vertical-align: top; text-align: center;">Username
</td>
<td style="vertical-align: top; text-align: center;">Password
</td>
<td style="vertical-align: top; text-align: center;">Type
</td>
<td style="vertical-align: top; text-align: center;">Status
</td>
<td style="vertical-align: top;">Delete
</td>
</tr>

<%for(int i = 0; i< all.size();i++) {
String fullname = all.get(i).getFullName();
String username = all.get(i).getUsername();
String password = all.get(i).getPassword();
char type = all.get(i).getType();
char status = all.get(i).getStatus();%>


<tr>
<td style="vertical-align: top;">
<form method="post" action="Edit.jsp" name="Edit">
    <input name="Edit" value="Edit" type="submit">
    <input name="Username" value="Username" type="hidden">
</form>
</td>
<td style="vertical-align: top;"><%=username %>
</td>
<td style="vertical-align: top;"><%=username %>
</td>
<td style="vertical-align: top;"><%=password %>
</td>
<td style="vertical-align: top;"><%=type %>
</td>
<td style="vertical-align: top;"><%=status %>
</td>
<%} %>
<td style="vertical-align: top;">
<form method="post" action="Delete.jsp" name="Delete">
    <input name="Delete" value="Delete" type="submit">
    <input name="Username" value="???" type="hidden">
</form>
</td>
</tr>
</tbody>
</table>
</body>
</html>

