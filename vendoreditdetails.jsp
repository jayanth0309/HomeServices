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
			
			<br>
			<br>
			<table>
				<tr>
					<%@page import="java.sql.DriverManager"%>
					<%@page import="java.sql.ResultSet"%>
					<%@page import="java.sql.Statement"%>
					<%@page import="java.sql.Connection"%>
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
								st = conn.createStatement();
								rs = st.executeQuery("select * from Vendorreg");
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
	<form name="myForm" action="VendorEditServlet"  method="post" required="required">
			  <br>
    <br>
    <label><b>FirstName:</b></label>
    <input type="text" size="50" placeholder="Enter First Name" name="fname" id="firstname" ><br>
    
    <label><b>LastName:</b></label>
    <input type="text" size="50" placeholder="Enter Last Name" name="lname" id="lastname"><br>
    <label><b>Age:</b></label>
    <input type="text" size="50" placeholder="Enter your age" id="age" name="personage"><br>
      
      <label><b> Please select your gender:</b></label>
      
      <input type="radio" id="male" name="gender" value="M">
      Male	&emsp;&emsp;
      <input type="radio" id="female" name="gender" value="F">
        Female &emsp;&emsp;
        <input type="radio" id="other" name="gender" value="O">
  		Other<br>
    <label><b>Contact Number:</b></label>
    <input type="tel" size="50" placeholder="Enter Contact Number" id="phnum" name="phone" pattern="[789]{1}[0-9]{9}"><br>
    
	<label><b>Confirm old Password:</b></label>
    <input type="password" size="50" id="myInput" placeholder="Enter your old password" name="pass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"   title="it should contain caps letter, one small letter and digit">
		<input id="check" type="checkbox"><span id="show"><b>Show Password</b><br></span>
	
	
    <label><b>New Password:</b></label>
    <input type="password" size="50" id="myInput" placeholder="Enter your new password" name="pass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"   title="it should contain caps letter, one small letter and digit">
		<input id="check" type="checkbox" onclick="myFunction()"><span id="show"><b>Show Password</b><br></span>
      
    <label><b>Re-enter New Password:</b></label>
    <input type="password"  id="cnfpass" placeholder="Enter your new password again" name="pass1" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" size="50" >			
      <input type="checkbox" onclick="myFunction1()"><span id="show"><b>Show Password</b><br></span>

    <input type="submit"
					class="adminregsubmit" value="Edit your Details" name="submit"
					onclick="return Validate()"><br>
  </div> 
   </form>
		</form>

	</table>

</body>
</html>