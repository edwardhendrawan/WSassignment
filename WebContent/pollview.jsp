<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="uts.wsd.assign.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<jsp:useBean id="webApp" class="uts.wsd.assign.WebApplication"
	scope="application">
</jsp:useBean>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.validate.js"></script>

<%
	User user = (User) session.getAttribute("user");
	Polls polls = webApp.getPolls();
	String filePath = application.getRealPath("WEB-INF/polls.xml");
	String poll = request.getParameter("poll");
	int polltoview = Integer.parseInt(poll);
	Poll current = polls.fetchPoll(polltoview);
	List<Meeting> currentMeetings = current.getMeetings().getMeeting();
%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%=current.getTitle()%></title>

<style>
ul {
	display: table;
	margin: 0 auto;
}
</style>

<script type="text/javascript">
	$("#name").validator({
	});
</script>

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
	<form method="get" action="index.jsp">
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

				<ul>


					<%
						for (String r : a.getResponses().getResponse()) {
					%>

					<li><%=r%></li>


					<%
						}
					%>
				</ul> <%
 	}
 %></td>
		</tr>
	</table>

	<%
		if (user == null) {
	%>
	<form method="get" action="submitResponse.jsp">
		<h3>
			<u>Choose available times</u>
		</h3>
		<table align="center" cellpadding="5">
			<tr>
				<th>Meetings Times:</th>
			</tr>

			<%
				for (Meeting a : currentMeetings) {
			%>
			<tr>
				<td><input type="checkbox" name="option"
					value="<%=a.getOption()%>"> Option <%=a.getOption()%> - <%=a.getDate()%>
					<%=a.getTime()%><br></td>
			</tr>
			<%
				}
			%>


			<tr>
				<th>Enter Name:</th>
			</tr>
			<tr>
				<td><input type="text" name="yourName" pattern="[a-zA-Z ]{5,}"
					maxlength="30" required="required" placeholder="Minimum 5 Letters"></td>
			</tr>
		</table>
		<input type="hidden" name="currentPoll" value="<%=current.getId()%>">
		<button type="submit">Submit</button>
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
	<form id="name" method="post" action="closePollAction.jsp">
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