<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Process Login</title>
</head>
<body>
<%
	String userName=(String)session.getAttribute("account1").getClass().getMethod("getUserName").invoke(session.getAttribute("account1"));
    String password=(String)session.getAttribute("account1").getClass().getMethod("getPassword").invoke(session.getAttribute("account1"));
    long phone=(Long)session.getAttribute("account1").getClass().getMethod("getPhone").invoke(session.getAttribute("account1"));
    
    String userInputName=request.getParameter("userName");
    String inputPassword=request.getParameter("password");
    
    if(userName.equals(userInputName) && password.equals(inputPassword))
    {
    	out.print("Credentials matches");
    	out.print("OTP send to register phone number "+phone);
    	request.getRequestDispatcher("Forward_otp.jsp").forward(request, response);
    }
    else
    {
    	out.print("Please enter valid credentials");
    	request.getRequestDispatcher("Login.jsp").forward(request, response);
    }
%>

</body>
</html>