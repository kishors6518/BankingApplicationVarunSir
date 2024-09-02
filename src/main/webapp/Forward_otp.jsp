<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="tyss.in.UserAccount" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forward OTP</title>
</head>
<body>
<%
	UserAccount.generateOTO();
	int otp=UserAccount.getOTP();
%>

<%= "OTP Received "+otp %>
<form action="processOTP.jsp" method="post">
Enter OTP Received: <input type="text" name="rotp"><br>
<input type="submit" value="Login">
</form>
</body>
</html>