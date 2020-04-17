<html>
<head>

<title>Login Form</title>
</head>
<body>
<br>
Login form:<br>
<br>
<form method="post" action="Login_action.jsp" name="Login"><br>

<%String msg1 = (String) session.getAttribute("invalidUser");
String msg2 = (String) session.getAttribute("invalidPassword");
String msg3 = (String) session.getAttribute("error");
String msg4 = (String) session.getAttribute("-4");
if(msg1 != null){%>
<h3><%=msg1 %></h3>	
<%} 
if(msg2 != null){%>
<h3><%=msg2 %></h3>	
<%} 
if(msg3 != null){%>
<h3><%=msg3 %></h3>	

<%} 
if(msg4 != null){%>
<h3><%=msg4 %></h3>
<%}%>

<table style="text-align: left; width: 266px; height: 228px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input name="Username"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="Password"> </td>
</tr>

<td style="vertical-align: top;"><input value="Log in"
name="Log in" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Reset"
name="Reset" type="reset"></td>
</tr>
</tbody>
</table>
<br>
</form>
</form>
<br>
</body>
</html>