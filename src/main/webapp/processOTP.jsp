<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="tyss.in.UserAccount"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OTP Validate</title>
</head>
<body>
<% 
	int otp=Integer.parseInt(request.getParameter("rotp"));

	if(UserAccount.getOTP()==otp)
	{
		out.print("OTP match Successful");
		request.getRequestDispatcher("ICICIHomePage.jsp").forward(request, response);
	}
	else
	{
		out.print("OTP mismatch");
		request.getRequestDispatcher("Login.jsp").forward(request, response);
	}
	
%>

</body>
</html>