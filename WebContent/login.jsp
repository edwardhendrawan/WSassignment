<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<%session.invalidate(); %>
<script type="text/javascript" src="jquery.validate.js"></script>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript">
	$("#name").validator();
</script>
</head>
<body style="background-color:lightblue; text-align:center">
	<h1>Login</h1>
	<form action="loginAction.jsp" method="post">

		<table align="center">
			<tbody>
				<tr> 
					<td><label for="email">Email</label></td>
					<td><input type="email" name="email" value="" required></input></td>
				</tr>
				<tr>
					<td><label for="password">Password</label></td>
					<td><input type="password" name="password" value="" required></input></td>
				</tr>
				<tr>
					<td><label for=""></label></td>
					<td><input type="submit" value="Login"></input></td>
				</tr>
			</tbody>
		</table>

	</form>

<br><form method="get" action="index.jsp">
    <button type="submit">Back to Main</button>
</form><br>

</body>
</html>