<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="uts.wsd.assign.*,java.util.*,java.text.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	String filePath = application.getRealPath("WEB-INF/polls.xml");
%>
<jsp:useBean id="webApp" class="uts.wsd.assign.WebApplication"
	scope="application">
</jsp:useBean>

<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.timepicker.js"></script>
<link rel="stylesheet" type="text/css" href="jquery.timepicker.css" />
<script type="text/javascript" src="lib/bootstrap-datepicker.js"></script>
<link rel="stylesheet" type="text/css"
	href="lib/bootstrap-datepicker.css" />
<link rel="stylesheet" type="text/css"
	href="lib/bootstrap-datepicker.css" />



</head>
<body style="background-color: lightblue; text-align: center">
	<%
		User user = (User) session.getAttribute("user");
		Polls polls = webApp.getPolls();
		String BMTimes = request.getParameter("MTimes");
		int MTimes = Integer.parseInt(BMTimes);
		String title = request.getParameter("title");
		String location = request.getParameter("location");
		String description = request.getParameter("description");
		DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		Date dateobj = new Date();
		String currentdate = df.format(dateobj);
		int userID = user.getID();
		Poll poll = new Poll(title, 1, userID, currentdate, location, description, polls.getNextID());
		session.setAttribute("poll", poll);
	%>

	<title>Create Poll</title>
</head>

<body style="background-color: lightblue; text-align: center">
	<h1>Create Poll</h1>
	<!--Loop throguh amount of meeting times and ask for date and time-->
	<form method="post" action="createPollAction.jsp">
		<%
			for (int i = 1; i <= MTimes; i++) {
		%>
		<h3>
			Time -
			<%=i%></h3>

		<table id="datetime" align="center">
			<tr>
				<td>Meeting Date:</td>
				<td><input id="date" type="text" class="date"
					name="mDate<%=i%>" value="<%=currentdate%>" required /></td>
			</tr>
			<tr>
				<td>Meeting Time:</td>
				<td><input id="time" type="text" class="time"
					name="mTime<%=i%>" value="11:00am" required /></td>
			</tr>
		</table>
		
		<script>
			$(function() {
				$('#datetime .time').timepicker({
					'step' : 15,
					'useSelect' : true
				});
				$('#datetime .date').datepicker({
					'autoclose' : true,
					'format' : 'd/m/yyyy'
				});
			});
		</script>

		<%
			}
		%>
		<button type="submit" align="center" value="<%=MTimes%>" name="MTimes">Create
			Poll</button>
	</form>




</body>
</html>