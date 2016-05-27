<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Logout</title>
</head>
<body style="background-color:lightblue;text-align:center">

<%session.invalidate(); %>
You have been logged out. Click <a href='login.jsp'>here</a>  to return to loginpage.
</body>
</html>