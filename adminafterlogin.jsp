<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<script type="text/javascript" src="script.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<table >
		<tr>
			<td><img src="adminbg.png" alt="image" width="100" height="100"></td>
			<td id="empty" width="350px"></td>
			<td><h1 id="heading">Admin</h1></td>
			<td>             </td>
			<td ><form name="myForm" action="AdminLoginServlet" method="post">
	<input type="submit" name="submit" value="LOGOUT" class="adminregsubmit1">
				</form>
			</td>
		</tr>
	</table>
		<form name="myForm" action="AdminLoginServlet"
			onsubmit="return vendorvalidateForm1()" method="post"
			required="required">
			<table align="center">
			<br>
			<br>
				<tr><td><input type="submit" value="      Services     " name="submit" class="adminregsubmit"><br></td><td>  </td></tr>
			</table>
			<br><br>
			<table align="center">
				<tr><td><input type="submit" value=" UPI Payments " name="submit" class="adminregsubmit"><br></td><td>  </td></tr>
			</table>
			<br><br>
			<table align="center">
				<tr><td><input type="submit" class="adminregsubmit" value="Card Payments" name="submit"><br></td><td>  </td></tr>
			</table>
			<br><br>
			<table align="center">
				<tr><td><input type="submit" class="adminregsubmit" value="Discount" name="submit"><br></td><td>  </td></tr>
			</table>
		</form>
	</table>
</body>
</html>