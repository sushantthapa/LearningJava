<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Sofia">
</head>
<body>
	<style>
body {
	background: #90EE90;
}

.fn {
	width: 50%;
	height: 40px;
	border: 3px solid #ccc;
	margin: 5px 5px 5px 5px;
}

.fn:hover {
	box-shadow: 0 0 11px black;
}

span {
	color: red;
}

#forminput {
	list-style:
}

#form1 {
	margin-top: 10%;
	width: 40rem;
	height: 40rem;
	padding: 2%;
	border-radius: 8px;
}

#btn1 {
	margin-top: 10px;
	margin-right: 40px;
	border-radius: 5px;
	background: black;
	width: 8rem;
	height: 3rem;
	color: white;
	font-family: "Sofia", sans-serif;
	font-size: 20px;
}

label {
	font-family: "Sofia", sans-serif;
	font-size: 20px;
	margin-right: 15px;
}

input {
	font-family: "Sofia", sans-serif;
	font-size: 20px;
}

::placeholder {
	color: red;
	opacity: 1;
}

#img1 {
	height: 80px;
	width: 80px;
	position: absolute;
	top: 8px;
	right: 16px;
	transform: rotate(-180deg);
	transition: 10s;
	opacity: 0.8;
}

#img1:hover {
	transform: rotate(180deg);
	transition: 10s;
}

input:focus::placeholder {
	color: transparent;
	transform: rotate(180deg);
	transition: 4s;
}
</style>
	<img id="img1" src="images/3.png" />

	<center>
		<form id="form1" name="myform">
			<fieldset>
				<legend>Info Form</legend>
				<div>
					<label>Full Name :</label> <input type="text" name="fullname"
						class="fn" id="fullname" oninput="checkName()"
						placeholder="Enter Your Full Name"><br /> <span id="fname"></span>
				</div>
				<br />
				<div>
					<label>Email:</label> <input type="text" name="uemail" class="fn"
						id="uemail" oninput="checkEmail()" placeholder="Enter Email"><br />
					<span id="email"></span>
				</div>

				<div>
					<label>Password: </label> <input type="password" name="pass"
						class="fn" id="pass" oninput=""><br /> <span
						id="passwd"></span>

				</div>
				<div>
					<label>Re-password: </label> <input type="password" name="pass"
						class="fn" id="">

				</div>

				<div>
					<button id="btn1">Submit</button>
				</div>
			</fieldset>
		</form>


	</center>

	<a href="index.jsp">back to homepage</a>


</body>

<script>
	var fname = document.getElementById("fname");
	var email = document.getElementById("email");
	

	var ufname = document.myform.fullname;
	var uemail = document.myform.uemail;
	
	

	var regName1 = /^[a-zA-Z]+ [a-zA-Z]+ [a-zA-Z]+$/;
	var regName2 = /^[a-zA-Z]+ [a-zA-Z]+$/;
	var regName3 = /^[a-zA-Z]+$/;
	var regEmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	
	
	function checkName() {
		

		if (ufname.value.match(regName2)) {
			fname.innerHTML = "";
		} else if (ufname.value.match(regName1)) {
			fname.innerHTML = "";
		}

		else if (ufname.value.match(regName3)) {
			fname.innerHTML = "Single Name Is not Acccepted";
		} else {
			fname.innerHTML = "You have entered Space at last";
		}
	}

	function checkEmail() {
		if (uemail.value.match(regEmail)) {
			email.innerHTML = "";
		} else {
			email.innerHTML = "**Please enter valid email**";
		}
	}
	
	
	

	
</script>



</html>