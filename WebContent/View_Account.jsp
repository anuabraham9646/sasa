<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");

%>
<%
if(session.getAttribute("user_ID") == null){
    response.sendRedirect("Login.html");
}%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
   background-color: lightblue;
   }
</style>

</head>
<body background = "d3.jpg">

<form action="ViewAccountServlet" method = "post">


<h1><center><i><font color="red"> Account Status </font></font></i></center></h1>





<tr><center><h3><input type = "submit" value = "View"></h3></center></tr>



<br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br>
<footer>
<p><h6>Copyright@HJA16GroupB</h6></p>
</footer>

</form>
</body>
</html>