<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="uts.wsd.assign.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%
	User user = (User)session.getAttribute("user");
	String filePath = application.getRealPath("WEB-INF/polls.xml");
%>
<jsp:useBean id="webApp" class="uts.wsd.assign.WebApplication"
	scope="application">
</jsp:useBean>

<title>Account</title>
<%

webApp.setLoadPolls(filePath);
Polls polls = webApp.getPolls();
session.setAttribute("polls", polls); 
List<Poll> test = polls.fetchUserPolls(user.getID());
String poll = request.getParameter("poll");
if(poll!=null){
int polltoclose = Integer.parseInt(poll);
polls.fetchPoll(polltoclose).closePoll();
}
webApp.savePolls(filePath);
%>


</head>
<body style="background-color:lightblue">
<form action="account.jsp" method="post">
Your open polls are:<br/>
<%for(Poll p: test){if (p.getState()==1){%>

	<%=p.getTitle()%>   <input type="radio" value="<%=p.getId()%>" name="poll"><br/>
	
<%}}%>
<input type="submit" value="Close Poll"><input type="submit" value="View Poll">
<br/>Your closed polls are:<br/>
<%for(Poll p: test){if (p.getState()==0){%>

<%=p.getTitle()%>

<%;}}%>
</form>
</body>
</html>