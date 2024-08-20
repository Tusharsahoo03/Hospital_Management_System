<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Checking Appointment</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">



	<style>
	table>tr>td{
	
	padding-top: 30px;
	}
	
	</style>
</head>

<body class="w3-pale-green">


	<table
		class="w3-bordered w3-table  w3-striped w3-padding w3-container w3-panel w3-padding w3-display-middle  w3-padding" style="align-content: center;">
		<thead>
			<tr>

				<th>Name</th>
				<th>Age</th>
				<th>Mobile</th>
				<th>email</th>
				<th>Disease</th>
				<th>Appointment Date</th>
				<th>Specialized Doctor</th>
				<th style="padding-left: 55px">Accept/Reject</th>
			</tr>

		</thead>
		<tbody>
			<c:forEach var="fetch" items="${check_apmnt}">
				<tr> 
					<td style="padding-top: 30px">${fetch.name}</td>
					<td style="padding-top: 30px">${fetch.age}</td>
					<td style="padding-top: 30px">${fetch.mobile}</td>
					<td style="padding-top: 30px">${fetch.email}</td>
					<td style="padding-top: 30px">${fetch.disease}</td>
					<td style="padding-top: 30px">${fetch.appointmentDate}</td>
					<td style="padding-top: 30px">${fetch.specialist}</td>
					<td><a href="acceptAppointment?id=${fetch.id}" class="w3-btn w3-blue w3-margin">Accept</a>
						<a href="rejectAppointment?id=${fetch.id}" class="w3-btn w3-red w3-margin">Reject</a></td>
				</tr>

			</c:forEach>
		</tbody>


	</table>
	
</body>

</html>