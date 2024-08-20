<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Registration Form</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 20px;
        }

        .form-container {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: auto;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-container label {
            display: block;
            margin: 10px 0 5px;
        }

        .form-container input[type="text"],
        .form-container input[type="email"],
        .form-container input[type="number"],
        .form-container input[type="date"],
        .form-container input[type="tel"],
        .form-container select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        .form-container button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-container button:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>

    <div class="form-container w3-card-4">
        <h2>Patient Registration Form</h2>
        
        <c:if test="${not empty success}">
        
        
        <h3 class="w3-center success w3-green w3-round-large">${success}</h3>
        
        </c:if>
        
        
                
        
        
        <form action="add_appointment" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="age">Age:</label>
            <input type="number" id="age" name="age" required>

            <label for="gender">Gender:</label>
            <select id="gender" name="gender" required>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="mobile">Mobile:</label>
            <input type="tel" id="mobile" name="mobile" pattern="[0-9]{10}" required>

            <label for="disease">Disease:</label>
            <select name="disease" id="disease">
                <option value="heart">Heart Problem</option>
                <option value="Braindisease">Brain Problem</option>
                <option value="dental">Dental Problem</option>

            </select>



            <label for="appointmentDate">Appointment Date:</label>
            <input type="date" id="appointmentDate" name="appointmentDate" required>

            <label for="aadhar">Aadhar Number:</label>
            <input type="number" id="aadhar" name="aadhar" required>

            <label for="specialist"> Select Specialist</label>
            
           
            <select name="specialist" id="specialist">
             <c:forEach var="fetchSpecialists" items="${fetchSpecialists}">
                <option value="${fetchSpecialists.name}">${fetchSpecialists.name} (${fetchSpecialists.specialistin})</option>
                </c:forEach>
            </select>

            <button type="submit">Submit</button>
        </form>
    </div>

</body>

<script>

$(document).ready(function(){
	
	if ($(".success").is(":visible")){
		
		$("form-container").css("height","120vh")
	}
	
});

</script>

</html> 