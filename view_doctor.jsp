<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Viewing Doctor</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>

<body class="w3-pale-red">

	<table class="w3-bordered w3-table  w3-striped w3-padding w3-container w3-panel">
		<thead>
			<tr>

				<th>Name</th>
				<th>Mobile Number</th>
				<th>Specialized In</th>
				<th>Update/Delete</th>
			</tr>

		</thead>
		<tbody>
	<c:forEach var="fetch" items="${fetch_doctor}">
			<tr>
				<td>${fetch.name}</td>
				<td>${fetch.mobile}</td>
				<td>${fetch.specialist}</td>
				<td>
                        <a href="updatePage?id=${fetch.id}" class="w3-btn w3-blue">Update</a>
                        <a href="delete?id=${fetch.id}" class="w3-btn w3-red">Delete</a>
                    </td>
			</tr>
		
			</c:forEach>
		</tbody>


	</table>

</body>

</html>