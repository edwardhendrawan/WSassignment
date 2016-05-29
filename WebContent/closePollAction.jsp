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

	String numberPoll = request.getParameter("currentPoll");
	int polltoview = Integer.parseInt(numberPoll);
	Poll current = polls.fetchPoll(polltoview);
	List<Meeting> currentMeetings = current.getMeetings().getMeeting();
	current.closePoll();
	webApp.savePolls(filePath);%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Closed Poll</title>
</head>
<body style="background-color: lightblue; text-align:center">
<body>
<p>
	Poll Closed! Click <a href="account.jsp">here</a> to accounts page.
	</p>

</body>
</html>