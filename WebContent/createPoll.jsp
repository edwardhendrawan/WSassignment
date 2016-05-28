<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="uts.wsd.assign.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:useBean id="webApp" class="uts.wsd.assign.WebApplication"
	scope="application">
</jsp:useBean>

<%
	User user = (User) session.getAttribute("user");
	String filePath = application.getRealPath("WEB-INF/polls.xml");
	webApp.setLoadPolls(filePath);
%>

<title>Create Poll</title>

</head>
<body style="background-color: lightblue; text-align: center">
<h1>Create Poll</h1>
	<form method="post" action="createPollAction.jsp">
	<table align="center">
			<tr>
				<td>Poll Title</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>Location</td>
				<td><input type="text" name="location"></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><input type="text" name="description"></td>
			</tr>
			



	</table>
	<h3>Meeting Times</h3>
	<table align="center">
			<tr>
				<td>Meeting Date</td>
				<td><input type="date" name="meetingDate"></td>
			</tr>
			<tr>
				<td>Meeting Time</td>
				<td><input type="time" name="meetingTime"></td>
			</tr>
			<tr>
				<td></td>
				<td>Add Meeting Time button?</td>
			</tr>
			
		</table>	
	</form>
<button type="submit" align="center">Create Poll</button>
</body>
 
