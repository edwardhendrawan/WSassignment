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
	<form method="post" action="pickTimes.jsp">
	<table align="center">
			<tr>
				<td>Poll Title</td>
				<td><input type="text" name="title" required></td>
			</tr>
			<tr>
				<td>Location</td>
				<td><input type="text" name="location" required></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><input type="text" name="description" required></td>
			</tr>
			<tr>
				<td>Amount of Meeting Times</td>
				<td><select name="MTimes">
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
</select>
</td>
			</tr>
			
		</table>	
<button type="submit" align="center">Pick meeting times</button>
	</form>

</body>
 
