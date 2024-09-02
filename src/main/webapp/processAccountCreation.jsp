<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Process Create Account form</title>
</head>
<body>
<%
	String userName2=request.getParameter("userName");
    String password2=request.getParameter("password");
    String number=request.getParameter("phone");
    long phone2=Long.parseLong(number);
%>

<jsp:useBean id="account1" class="tyss.in.UserAccount" scope="session"></jsp:useBean>
<jsp:setProperty property="userName" value="<%=userName2%>" name="account1"></jsp:setProperty>
<jsp:setProperty property="password" value="<%=password2%>" name="account1"></jsp:setProperty>
<jsp:setProperty property="phone" value="<%=phone2%>" name="account1"></jsp:setProperty>

<%="Account Creation Success "+userName2 %>
<a href="Login.jsp">Login Page</a>

</body>
</html>