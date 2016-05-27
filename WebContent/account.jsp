<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="uts.wsd.assign.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%
	User user = (User)session.getAttribute("user");
	String filePath = application.getRealPath("WEB-INF/polls.xml");
	String filePath2 = application.getRealPath("WEB-INF/polls2.xml");
%>
<jsp:useBean id="webApp" class="uts.wsd.assign.WebApplication"
	scope="application">
</jsp:useBean>

<title>Account</title>
<%

webApp.setLoadPolls(filePath);
Polls polls = webApp.getPolls();
webApp.savePolls(filePath2);
%>

<%=filePath2 %>

</head>
<body>

Your polls are <%=polls.getPoll().get(0).getDatecreated() %>

</body>
</html>