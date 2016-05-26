<%@ page contentType="text/html; charset=utf-8" language="java" import="javax.xml.parsers.DocumentBuilderFactory,javax.xml.parsers.DocumentBuilder,org.w3c.dom.*" errorPage="" %>
<%
DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();

DocumentBuilder db = dbf.newDocumentBuilder();
String filePath = application.getRealPath("WEB-INF/polls.xml");
Document doc = db.parse(filePath);

NodeList Poll = doc.getElementsByTagName("poll");
NodeList Title = doc.getElementsByTagName("title");
NodeList State = doc.getElementsByTagName("state");
NodeList UserID = doc.getElementsByTagName("userID");
NodeList Description = doc.getElementsByTagName("description");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main Page</title>
</head>
<body>
<h1 style="margin:10px 20% 10px 20%"> Polls </h1>

<%for(int i= 0; i < Poll.getLength(); i++ ) {%>
<% if (State.item(i).getFirstChild().getNodeValue().equals("1")){%>
<div style="border-style: solid; width:60%;height: 100px; align: center;margin:0px 20% 10px 20%;padding: 10px;">
<table>
<td style = "width: 70%">
<h2 style="text-align: left;"><%= Title.item(i).getFirstChild().getNodeValue()%></h2>
</td>
<td style=" width: 30%">
<h2 style="text-align: right;"> <%= UserID.item(i).getFirstChild().getNodeValue()%></h2>
</td>
<tr>
<tr>

</table>
</div>
<%} %> 
<%} %>
</body>
</html>