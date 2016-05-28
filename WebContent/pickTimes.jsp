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

</head>
<body style="background-color: lightblue; text-align:center">
	<%
		User user = (User) session.getAttribute("user");
		String BMTimes = request.getParameter("MTimes");
		int MTimes = Integer.parseInt(BMTimes);
		String title = request.getParameter("title");
		String location = request.getParameter("location");
		String description = request.getParameter("description");
		String password = request.getParameter("meetingDate");
		String email = request.getParameter("meetingTime");
		int userID = user.getID();
	%>
	
<title>Create Poll</title>

</head>

<body style="background-color: lightblue; text-align: center">
<h1>Create Poll</h1>
	<form method="post" action="createPollAction.jsp">
	<%
		for (int i = 1; i < MTimes + 1; i++) {
	%>
	<h1>Time - <%=i %></h1>
	<table align="center">
	<tr>
				<td>Meeting Date</td>
				<td><input type="date" name="meetingDate"></td>
			</tr>
			<tr>
				<td>Meeting Time</td>
				<td><input type="time" name="meetingTime"></td>
			</tr>
	</table>
<% }%>
<button type="submit" align="center">Create Poll</button>
</form>

</body>
</html>