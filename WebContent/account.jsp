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
	User user = (User) session.getAttribute("user");
	String filePath = application.getRealPath("WEB-INF/polls.xml");
	webApp.setLoadPolls(filePath);
	Polls polls = webApp.getPolls();
	session.setAttribute("polls", polls);
	List<Poll> test = polls.fetchUserPolls(user.getID());

%>


<title><%=user.getName()%>'s Account</title>
<%

%>


</head>
<body style="background-color: lightblue; text-align: center">

	<h1><%=user.getName()%></h1>
<form method="get" action="logout.jsp">
    <button type="submit">Logout</button>
</form><br>


	<form action="pollview.jsp" method="post">

		<%
			if (!test.isEmpty()) {
		%>
		Your polls are:<br>
		<%
			for (Poll p : test) {		
		%>

		<%=p.getTitle()%>  --  <%=p.getActualState() %>
		<input type="radio" value="<%=p.getId()%>" <%if(p == test.get(0)){ %> checked="checked" <%}%> name="poll"/><br>

		<%}%>
		<br><input type="submit" value="View Poll" /> 

	
		<%} else {%>
		You have no polls
		<%}%>
	</form>
	

</body>
</html>