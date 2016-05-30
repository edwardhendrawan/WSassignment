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
	String poll = request.getParameter("currentPoll");
	String name = request.getParameter("yourName");
	int polltoview = Integer.parseInt(poll);
	Poll current = polls.fetchPoll(polltoview);
	Meetings currentMeetings = current.getMeetings();
  	List<String> selections = Arrays.asList(request.getParameterValues("option"));
  	
  	
%>
<title>Response Page</title>
</head>
<body style="background-color: lightblue; text-align: center;padding: 5%">
	<% if(selections.isEmpty()){%>
	No time was selected:
	<form method="post" action="pollview.jsp">
		<input type="hidden" name="currentPoll" value="<%=current.getId()%>">
		<button type="submit">Return to Poll</button>
	</form>
	<%}else{ %>
	<%for(String s:selections){
		int i = Integer.parseInt(s);
		currentMeetings.getMeetingbyID(i).getResponses().addResponse(name);
	}
		%>
			<h3>Successful Submission</h3>
	<form method="post" action="pollview.jsp">
		<input type="hidden" name="poll" value="<%=current.getId()%>">
		<button type="submit">Return to Poll</button>
	</form>
	<% webApp.savePolls(filePath);}%>


</body>
</html>