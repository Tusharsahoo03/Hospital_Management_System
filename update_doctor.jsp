<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Doctor</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        .form-container div {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        form:input,
        form:select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
            border-radius: 4px;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body class="w3-red"  >
    <div class="form-container">
        <form:form action="update_doctor" class="w3-center" modelAttribute="fetchDocDetailsById" method="post">
            <div>
                <label>Name:</label>
                <form:input path="name" />
            </div>

            <div>
                <label>Mobile:</label>
                <form:input path="mobile" />
            </div>

            <div>
                <form:hidden path="id" />
            </div>

            <div>
                <label>Specialization in:</label>
                <form:select path="specialist">
                        <form:option value="neurologist">Neurologist</form:option>
                        <form:option value="dermetologist">Dentist</form:option>
                        <form:option value="cardiologist">Cardiologist</form:option>
                    
                </form:select>
            </div>

            <div>
                <input type="submit" value="Update" />
            </div>
        </form:form>
    </div>
</body>

</html>
