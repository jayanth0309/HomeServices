<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill</title>
<script type="text/javascript" src="script.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<table>
		<tr>
			<td><img src="custmernew.png" alt="image" width="100" height="100"></td>
			<td id="empty" width="350px"></td>
			<td><h1 style="text-align: center;" id="heading">Home Service</h1><br><h1>Payment bills</h1></td>
		</tr>
	</table>
	&emsp;&emsp;<h1><b><u>Service Details:-</u></b></h1>
<table>
	<tr>
		<td><b><h1 style="color:red;">&emsp;&emsp;Customer Name </h1></b></td>
		<td><h2>&emsp;&emsp;: ${custname}</h2></td>
	</tr>
	<tr>
		<td><b><h1 style="color:red;">&emsp;&emsp;Email Id</h1></b></td>
		<td><h2>&emsp;&emsp;: ${custemailid}</h2></td>
	</tr>
	<tr>
		<td><b><h1 style="color:red;">&emsp;&emsp;Phone Number</h1></b></td>
		<td><h2>&emsp;&emsp;: ${custnum}</h2></td>
	</tr>
	<tr>
		<td><b><h1 style="color:red;">&emsp;&emsp;Address</h1></b></td>
		<td><h2>&emsp;&emsp;: ${address}</h2></td>
	</tr>
	<tr>
		<td><b><h1 style="color:red;">&emsp;&emsp;Reference Id</h1></b></td>
		<td><h2>&emsp;&emsp;: ${random}</h2></td>
	</tr>
	<tr>
		<td><b><h1 style="color:red;">&emsp;&emsp;Amount</h1></b></td>
		<td><h2>&emsp;&emsp;: ${amount}</h2></td>
	</tr>
	<tr>
		<td><b><h1 style="color:red;">&emsp;&emsp;Vendor Id</h1></b></td>
		<td><h2>&emsp;&emsp;: ${vendorid}</h2></td>
	</tr>
	<tr>
		<td><b><h1 style="color:red;">&emsp;&emsp;Vendor Number</h1></b></td>
		<td><h2>&emsp;&emsp;: ${vendornum}</h2></td>
	</tr>
	<tr>
		<td><b><h1 style="color:red;">&emsp;&emsp;Service Type</h1></b></td>
		<td><h2>&emsp;&emsp;: ${servicetype}</h2></td>
	</tr>
	<tr>
		<td><b><h1 style="color:red;">&emsp;&emsp;Category</h1></b></td>
		<td><h2>&emsp;&emsp;: ${category}</h2></td>
	</tr>
	
	
</table>
<button onclick="myFunction()" class="adminregsubmit">Print this page</button>

<script>
function myFunction() {
  window.print();
}
</script>
</body>
</html>