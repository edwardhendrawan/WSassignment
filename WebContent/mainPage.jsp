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
	
	String filePath = application.getRealPath("WEB-INF/polls.xml");
	webApp.setLoadPolls(filePath);
	Polls polls = webApp.getPolls();
	session.setAttribute("polls", polls);
	List<Poll> test = polls.fetchOpenPolls();

%>


<title>Main</title>
<%

%>


</head>
<body style="background-color: lightblue; text-align: center">

	<h1>Main</h1>

<br>
<form method="get" action="login.jsp">
    <button type="submit">Login</button>
</form><br>
	<form action="pollview.jsp" method="post">

		<%
			if (!test.isEmpty()) {
		%>
		Your polls are:<br>
		<%
			for (Poll p : test) {		
		%>

		<%=p.getTitle()%>  --  <%=p.getUserID() %>
		<input type="radio" value="<%=p.getId()%>" <%if(p == test.get(0)){ %> checked="checked" <%}%> name="poll"/><br>

		<%}%>
		<br><input type="submit" value="View Poll" /> 

	
		<%} else {%>
		There are no polls
		<%}%>
	</form>
	

</body>
</html>