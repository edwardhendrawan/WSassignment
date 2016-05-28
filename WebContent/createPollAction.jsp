<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="uts.wsd.assign.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	String filePath = application.getRealPath("WEB-INF/polls.xml");
%>
<jsp:useBean id="webApp" class="uts.wsd.assign.WebApplication"
	scope="application">
	<jsp:setProperty name="webApp" property="load" value="<%=filePath%>"/>
</jsp:useBean>

<title>Login</title>
</head>
<body style="background-color: lightblue; text-align:center">
	<%
		User user = (User) session.getAttribute("user");
		String title = request.getParameter("title");
		String location = request.getParameter("location");
		String description = request.getParameter("description");
		String password = request.getParameter("meetingDate");
		String email = request.getParameter("meetingTime");
		int userID = user.getID();
		String today = "29/5/2016";
				// need to add meetings 
		Poll poll = new Poll(title,1,userID,today,location,description);
		webApp.savePolls(filePath);
	%>
	<%
		if (poll != null) {
	%>
	<p>
		Poll Created. Click <a href="account.jsp">here</a> to go your account.
	</p>


	<%
		} else {
	%>
	<p>
		Something went wrong. Click <a href="account.jsp">here</a> to try again.
	</p>
	<%
		}
	%>
</body>
</html>