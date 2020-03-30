<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Service</title>
<script type="text/javascript" src="script.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<table>
		<tr>
			<td><img src="vendor.png" alt="image" width="100" height="100"></td>
			<td id="empty" width="350px"></td>
			<td><h1 id="heading">Home Service</h1></td>
		</tr>
	</table>
	<table>
		<form name="myForm" action="" onsubmit="return vendorvalidateForm1()"
			method="post" required="required">
			<div>
				<input type="submit" class="adminregsubmit"
					value="Add Personal Details" name="submit"
					onclick="return details()"> <input type="submit"
					class="adminregsubmit" value="Edit your Details" name="submit"
					onclick="return details1()"><br>
			</div>
			<table>
				<tr id="result" style="display:none;">
					<td><br><b>Email:</b> &emsp;&emsp;&emsp;<input type="email"
					placeholder="Enter Email" size="30" id="emailid1" name="email1">&emsp;&emsp;&emsp;
				<b>Address:</b>&emsp;&emsp;&emsp;<textarea id="address" name="address" rows="3" cols="30" placeholder="Enter your address"></textarea>&emsp;&emsp;&emsp;
				<input type="submit" class="adminregsubmit" value="Add Details" name="submit"></td>
				</tr>
			</table>
			<br>
			<br>
			<table>
				<tr>
					<%@page import="java.sql.DriverManager"%>
					<%@page import="java.sql.ResultSet"%>
					<%@page import="java.sql.Statement"%>
					<%@page import="java.sql.Connection"%>
					<%@page import="java.sql.PreparedStatement"%>
					<%
						try {
							Class.forName("com.mysql.cj.jdbc.Driver");
						} catch (ClassNotFoundException e) {
							e.printStackTrace();
						}
						Connection conn = null;
						Statement st = null;
						ResultSet rs = null;
					%>

					<table align="center" cellpadding="5" cellspacing="5" border="1">
						<tr>

						</tr>
						<tr bgcolor="#A52A2A">
							<td><b>FIRSTNAME</b></td>
							<td><b>LASTNAME</b></td>
							<td><b>AGE</b></td>
							<td><b>GENDER</b></td>
							<td><b>CONTACT</b></td>
							<td><b>VENDORID</b></td>				
						</tr>


						<%
							try {
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root", "password-1");
								PreparedStatement ps = conn.prepareStatement("select * from Vendorreg where vendorid=? ");
								ps.setString(1,request.getParameter("loginname1"));
								rs = ps.executeQuery();
								
								while (rs.next()) {
						%>
						<tr bgcolor="#DEB887">
							<td><%=rs.getString(1)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%></td>
							<td><%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
<%-- 							<td><%=rs.getString(7)%></td> --%>
							<%-- 	<td><%=rs.getString(8) %></td> --%>
						</tr>

						<%
							}

							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
<!-- 					</table> -->
				</tr>
			</table>
		</form>

	</table>

</body>
</html>