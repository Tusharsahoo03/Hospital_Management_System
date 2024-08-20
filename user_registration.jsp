<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Patient Registration</title>
<link rel="stylesheet" href="AdminRegister.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	background-color: rgba(128, 128, 128, 0.76);
}

form {
	height: 490px;
	width: 310px;
	border-radius: 10px;
	border: 2px solid black;
	align-content: center;
	text-align: center;
	line-height: 1.8;
	position: absolute;
	top: 20%;
	left: 35%;
	background-color: rgb(255, 255, 255);
}

.intro {
	background-color: white;
	padding-top: 0;
	text-decoration: underline;
}

form>label {
	display: block;
	background-color: white;
}

form>input {
	display: block;
	position: relative;
	left: 20%;
	border-radius: 20px;
	border-collapse: collapse;
	opacity: 0.5;
	background-color: white;
}

.error {
	color: red;
}
</style>

</head>
<body>

	<form action="patientregistration" method="post"
		class="w3-card-4 w3-display-middle">
		<h4 class="intro">Patient Registration</h4>

		<c:if test="${not empty success}">
			<h5 class="w3-text-white w3-green" style="font-weight: bold">${success}</h5>
		</c:if>

		<c:if test="${not empty fail}">
			<h5 class="w3-text-white w3-red" style="font-weight: bold">${fail}</h5>
		</c:if>

		<c:if test="${not empty fail}">
			<ul class="error">
				<c:forEach items="${fail}" var="error">
					<li>${error}</li>
				</c:forEach>
			</ul>
		</c:if>

		<label for="name"> Enter your name: </label> <input type="text"
			id="name" name="name" required>
		<c:if test="${not empty errors.name}">
			<span class="error">${errors.name}</span>
		</c:if>

		<label for="age"> Enter your age: </label> <input type="number"
			id="age" name="age" >
		<c:if test="${not empty errors.age}">
			<span class="error">${errors.age}</span>
		</c:if>

		<label for="email"> Enter your email: </label> <input type="email"
			id="email" name="email" required>
		<c:if test="${not empty errors.email}">
			<span class="error">${errors.email}</span>
		</c:if>

		<label for="password"> Enter your password: </label> <input
			type="password" id="password" name="password" required>
		<c:if test="${not empty errors.password}">
			<span class="error">${errors.password}</span>
		</c:if>

		<label for="mobile"> Enter your Number: </label> <input type="tel"
			id="number" name="mobile">
		<c:if test="${not empty errors.mobile}">
			<span class="error">${errors.mobile}</span>
		</c:if>

		<button type="submit" id="submit"
			class="w3-button w3-round-small w3-green w3-center"
			style="position: relative; top: 5%;">Submit</button>

	</form>

</body>
</html>
