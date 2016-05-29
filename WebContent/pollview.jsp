<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="uts.wsd.assign.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:useBean id="webApp" class="uts.wsd.assign.WebApplication"
	scope="application">
</jsp:useBean>
<%
	User user = (User) session.getAttribute("user");
	Polls polls = webApp.getPolls();
	String filePath = application.getRealPath("WEB-INF/polls.xml");
	String poll = request.getParameter("poll");
	int polltoview = Integer.parseInt(poll);
	Poll current = polls.fetchPoll(polltoview);
	List<Meeting> currentMeetings = current.getMeetings().getMeeting();
	//current.closePoll();
	//webApp.savePolls(filePath);
%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%=current.getTitle()%></title>
<style>
ul {
	display: table;
	margin: 0 auto;
}
</style>
</head>
<body style="background-color: lightblue; text-align: center">
	<h1><%=current.getTitle()%></h1>

	<%
		if (user != null) {
			if (user.getID() == current.getUserID()) {
	%>
	<form method="get" action="account.jsp">
		<button type="submit">Back to account</button>
	</form>
	<br>

	<%
		}
		} else {
	%>
	<form method="get" action="mainPage.jsp">
		<button type="submit">Back to Main</button>
	</form>
	<%
		}
	%>

	<br>
	<h3><%=current.getActualState()%></h3>

	<b> Date created: </b><%=current.getDatecreated()%><br>

	<b> Location: </b><%=current.getLocation()%><br>

	<b> Meetup Times: </b><%=currentMeetings.size()%><br>
	<br>

	<u> <b>Decription </b></u>
	<br><%=current.getDescription()%><br>
	<br>




	<table align="center" style="border-spacing: 15px;">
		<tr>
			<%
				int i = 0;
				for (Meeting a : currentMeetings) {
					i++;
			%>
			<td style="float: left; padding: 0 10px 0 10px;"><u> <b>Meetup
						Time - <%=i%></b></u><br> <b> Date: </b><%=a.getDate()%><br> <b>
					Time: </b><%=a.getTime()%><br> <%
 	
 %> <b> Reponses: </b> <%=a.getResponses().getResponse().size()%><br>
			<br>
				<ul>


					<%
						for (String r : a.getResponses().getResponse()) {
					%>

					<li><%=r%></li>


					<%
						}
					%>
				</ul>
				<br>
				<%
					}
				%></td>
		</tr>
	</table>

	<%
		if (user == null) {
	%>
	<form method="get" action="votePoll.jsp">
		<h3>Vote for Time</h3>
		<table align="center">
			<tr>
				<td>Meeting Time</td>
				<td><select name="time"
					style="width: 100%; text-align: center;">
						<%
							for (int j = 1; j < i + 1; j++) {
						%>
						<option value="<%=j%>"><%=j%></option>
						<%
							}
						%>
				</select></td>
			</tr>
			<tr>
				<td>Your Name</td>
				<td><input type="text" name="yourName"></td>
			</tr>
		</table>
		<button type="submit">Vote!</button>
	</form>
	<%
		}
	%>



	<%
		if (user != null) {
			if (user.getID() == current.getUserID()) {
	%>
	<%
		if (current.getState() == 1) {
	%>
	<form method="post" action="closePollAction.jsp">
		<input type="hidden" name="currentPoll" value="<%=current.getId()%>">
		<button type="submit">Close Poll</button>
	</form>
	<br>
	<%
		}
			}
		}
	%>
</body>
</html>