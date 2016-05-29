<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="uts.wsd.assign.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:useBean id="webApp" class="uts.wsd.assign.WebApplication"
	scope="application">
</jsp:useBean>
<script type="text/javascript" src="jquery.validate.js"></script>
<script type="text/javascript" src="jquery.js"></script>
<%
	User user = (User) session.getAttribute("user");
	String filePath = application.getRealPath("WEB-INF/polls.xml");
	webApp.setLoadPolls(filePath);
%>

<title>Create Poll</title>

<!-- Validation for fields -->
<script type="text/javascript">
	$("#info").validator();
</script>



</head>
<body style="background-color: lightblue; text-align: center">
	<h1>Create Poll</h1>
	<form method="post" action="pickTimes.jsp" id="info">
		<table align="center">
			<tr>
				<td>Poll Title</td>
				<td><input type="text" name="title" minlength="5"
					maxlength="30" required></td>
			</tr>
			<tr>
				<td>Location</td>
				<td><input type="text" name="location" maxlength="30" required></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><input type="text" name="description" minlength="5"
					maxlength="100" required></td>
			</tr>
			<tr>
				<td>Amount of Meeting Times</td>
				<td><select name="MTimes">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
				</select></td>
			</tr>

		</table>
		<button type="submit" align="center">Pick meeting times</button>
	</form>

</body>