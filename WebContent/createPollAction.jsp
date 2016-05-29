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
</jsp:useBean>

<title>Login</title>
</head>
<body style="background-color: lightblue; text-align:center">
	<%
		Poll poll = (Poll) session.getAttribute("poll");
		String BMTimes = request.getParameter("MTimes");
		int MTimes = Integer.parseInt(BMTimes);
		for(int i=1;i<=MTimes;i++){
			poll.addMeeting(request.getParameter("mTime" + i),request.getParameter("mDate" + i),i);
		}
		webApp.getPolls().addPoll(poll);
		webApp.savePolls(filePath);
	%>

	<p>
		Poll Created. Click <a href="account.jsp">here</a> to go your account.
	</p>

</body>
</html>