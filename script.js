function vendorvalidateForm() {
	var fn = document.forms["myForm"]["fname"].value;
	if (fn == "" || fn == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('firstname').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('firstname').style.borderColor = "antiquewhite";
	}

	var ln = document.forms["myForm"]["lname"].value;
	if (ln == "" || ln == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('lastname').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('lastname').style.borderColor = "antiquewhite";
	}

	var perage = document.forms["myForm"]["personage"].value;
	if (perage == "" || perage == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById("age").style.borderColor = "red";
		return false;
	} else {
		document.getElementById("age").style.borderColor = "antiquewhite";
	}


	var ph = document.forms["myForm"]["phone"].value;
	if (ph == "" || ph == null) {
		alert("Name must be filled out");
		document.getElementById('phnum').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('phnum').style.borderColor = "antiquewhite";
	}
	var vendor = document.forms["myForm"]["vid"].value;
	if (vendor == "" || vendor == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('vendorid').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('vendorid').style.borderColor = "antiquewhite";
	}

	var password = document.forms["myForm"]["pass"].value;
	if (password == "" || password == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('myInput').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('myInput').style.borderColor = "antiquewhite";
	}
}
function vendorvalidateForm1() {
	var submittype = document.forms["myForm"]["submit"].value;
	if (submittype == "Add Personal Details" || submittype =="Add Details") {
		var fn = document.forms["myForm"]["email1"].value;
		if (fn == "" || fn == null) {
			alert("Please update the highlighted mandatory field(s)");
			document.getElementById('emailid1').style.borderColor = "red";
			return false;
		} else {
			document.getElementById('emailid1').style.borderColor = "antiquewhite";
		}

		var ln = document.forms["myForm"]["address"].value;
		if (ln == "" || ln == null) {
			alert("Please update the highlighted mandatory field(s)");
			document.getElementById('address').style.borderColor = "red";
			return false;
		} else {
			document.getElementById('address').style.borderColor = "antiquewhite";
		}
	}
}

function custadminvalidateForm() {
	var fn = document.forms["myForm"]["fname"].value;
	if (fn == "" || fn == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('firstname').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('firstname').style.borderColor = "antiquewhite";
	}

	var ln = document.forms["myForm"]["lname"].value;
	if (ln == "" || ln == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('lastname').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('lastname').style.borderColor = "antiquewhite";
	}

	var ph = document.forms["myForm"]["phone"].value;
	if (ph == "" || ph == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('phnum').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('phnum').style.borderColor = "antiquewhite";
	}

	var email = document.forms["myForm"]["email"].value;
	if (email == "" || email == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('emailid').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('emailid').style.borderColor = "antiquewhite";
	}

	var password = document.forms["myForm"]["pass"].value;
	if (password == "" || password == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('myInput').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('myInput').style.borderColor = "antiquewhite";
	}
}

function Validate() {
	var password = document.getElementById("myInput").value;
	var confirmPassword = document.getElementById("cnfpass").value;
	if (password != confirmPassword) {
		alert("Passwords do not match.");
		return false;
	}
	// var sub = document.getElementById("submit").value;
	// if(sub=="Register"){
	// alert("your detailes are succussfully submitted!");
	// return true;
	// }
	return true;
}
function myFunction() {
	var x = document.getElementById("myInput");

	if (x.type === "password") {
		x.type = "text";
	} else {
		x.type = "password"
	}
}
function myFunction1() {
	var x = document.getElementById("cnfpass");

	if (x.type === "password") {
		x.type = "text";
	} else {
		x.type = "password"
	}
}
// function confirm1() {
// var txt;
// if (confirm("your detailes are succussfully submitted!if you want reg another
// click ok! or click cancel to go to home page")) {
// txt = "You pressed OK!";
// } else {
// txt = "You pressed Cancel!";
// }
// return false;
// }

function loginvalidateForm() {
	var fn = document.forms["myForm"]["loginname1"].value;
	if (fn == "" || fn == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('loginname').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('loginname').style.borderColor = "antiquewhite";
	}

	var ln = document.forms["myForm"]["pass1"].value;
	if (ln == "" || ln == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('myInput').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('myInput').style.borderColor = "antiquewhite";
	}

}

function details() {
	document.getElementById("result").style.display = "block";
	// document.getElementById("result").innerHTML="";
	return false;
}
function details1() {
	document.getElementById("result1").style.display = "block";
	// document.getElementById("result").innerHTML="";
	return false;
}