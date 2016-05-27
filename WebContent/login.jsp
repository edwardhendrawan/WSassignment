<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<%session.invalidate(); %>
</head>
<body style="background-color:lightblue; text-align:center">
	<h1>Login</h1>
	<form action="loginAction.jsp" method="post">

		<table align="center">
			<tbody>
				<tr> 
					<td><label for="email">Email</label></td>
					<td><input type="text" name="email" value=""></input></td>
				</tr>
				<tr>
					<td><label for="password">Password</label></td>
					<td><input type="password" name="password" value=""></input></td>
				</tr>
				<tr>
					<td><label for=""></label></td>
					<td><input type="submit" value="Login"></input></td>
				</tr>
			</tbody>
		</table>

	</form>



</body>
</html>