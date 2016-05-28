<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="uts.wsd.assign.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	String filePath = application.getRealPath("WEB-INF/users.xml");
%>
<jsp:useBean id="webApp" class="uts.wsd.assign.WebApplication"
	scope="application">
	<jsp:setProperty name="webApp" property="load" value="<%=filePath%>"/>
</jsp:useBean>

<title>Login</title>
</head>
<body style="background-color: lightblue; text-align:center">
	<%
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		User user = webApp.getUsers().login(email, password);
		%>
	<%
		if (user != null) {
			session.setAttribute("user", user);
	%>
	<p>
		Login Successful. Click <a href="account.jsp">here</a> to go your account.
	</p>


	<%
		} else {
	%>
	<p>
		Password incorrect. Click <a href="login.jsp">here</a> to try again.
	</p>
	<%
		}
	%>
</body>
</html>