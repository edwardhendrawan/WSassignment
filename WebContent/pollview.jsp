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
	Polls polls = (Polls) session.getAttribute("polls");
	String filePath = application.getRealPath("WEB-INF/polls.xml");
	String poll = request.getParameter("poll");
	int polltoview = Integer.parseInt(poll);
	Poll current = polls.fetchPoll(polltoview);
	List<Meeting> currentMeetings = current.getMeetings().getMeeting();
	//current.closePoll();
	//webApp.savePolls(filePath);
%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%=current.getTitle() %></title>
<style>
    ul { display:table; margin:0 auto;}
</style>
</head>
<body style="background-color: lightblue; text-align: center">
<h1><%=current.getTitle() %></h1>
<form method="get" action="account.jsp">


    <button type="submit">Back to account</button></form><br>
    
 <h3><%=current.getActualState() %></h3>   
 
<b> Date created: </b><%=current.getDatecreated() %><br>

<b> Location: </b><%=current.getLocation() %><br><br>

<u>Decription</u><br><%=current.getDescription() %><br><br>

<b> Meetup Times: </b><%=currentMeetings.size()%><br><br>



<%for(Meeting a: currentMeetings) {%>
<b> Date: </b><%=a.getDate() %><br>
<b> Time: </b><%=a.getTime() %><br>

<b> Reponses: </b> <%=a.getResponses().getResponse().size() %><br><br>
<ul>


<%for(String r:a.getResponses().getResponse()){ %>

<li><%=r %></li>
<%}%></ul><br><%}%>
<%if(current.getState()==1){ %>
<form method="get" action="pollview.jsp">

    <button type="submit" name="poll" onclick="<%current.closePoll();webApp.savePolls(filePath);%>" value="<%=current.getId()%>">Close Poll</button></form><br>
<%} %>



</body>
</html>