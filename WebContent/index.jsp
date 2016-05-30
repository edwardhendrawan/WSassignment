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
	
	String pollPath = application.getRealPath("WEB-INF/polls.xml");
	String userPath = application.getRealPath("WEB-INF/users.xml");	
	webApp.setLoadPolls(pollPath);
	webApp.setLoad(userPath);
	Polls polls = webApp.getPolls();
	session.setAttribute("polls", polls);
	List<Poll> test = polls.fetchOpenPolls();

%>


<title>Homepage</title>


</head>
<body style="background-color: lightblue; text-align: center">

	<h1>Home Page</h1>

<br>
<form method="get" action="login.jsp">
    <button type="submit">Login</button>
</form><br>
	<form action="pollview.jsp" method="post">

		<%
			if (!test.isEmpty()) {
		%>
		Available polls are:<br>
		<%
			for (Poll p : test) {		
		%>

		<%=p.getTitle()%>  --  <%=webApp.getUsers().getName(p.getUserID()) %>
		<input type="radio" value="<%=p.getId()%>" <%if(p == test.get(0)){ %> checked="checked" <%}%> name="poll"/><br>

		<%}%>
		<br><input type="submit" value="View Poll" /> 

	
		<%} else {%>
		There are no polls
		<%}%>
	</form>
	<div style="width:300px; height: auto; margin:auto; background-color:#fff; float:center;">
	<h2>Web Services</h2>
	<form action="rest/pollservice/" method="post">
		Protocol:<label id=protocolLabel></label>  <br>
		<input type="button" id="soapButton" value="SOAP" onClick=myFunction/>
		<script>
			function myFunction() 
			{
	    		document.getElementById("protocolLabel").value = "SOAP";
			}
		</script>
		<input type="button" id="restButton" value="REST" />

		<br>Filter By<br>
		Creator ID: <input type="text" value="" id="creatorid"/>
		Status: 		
			OPEN    <input type="checkbox" id="openCheckBox" checked="checked"/>
		 	CLOSED  <input type="checkbox" id="closedCheckBox" />
		
		<script type="text/javascript">
			 window.onload = function(){
			 var openCheckBox = document.getElementById('openCheckBox');
			 var closedCheckBox = document.getElementById('closedCheckBox');
			
			    if (openCheckBox.checked == false)
			    {
			    	closedCheckBox.checked = true;
			    }
			    else 
			    {
			    	closedCheckBox.checked = false;
			    }
			 }
		</script>
		 
			 Minimum Responses <input type="checkbox" id="minrespCheckBox"/>
		<input type="submit" value="View Poll" />
	</form>

	<form action="pollservice/">
		
		</form>
	

</body>
</html>