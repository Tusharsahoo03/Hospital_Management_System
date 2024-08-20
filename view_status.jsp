<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Status</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body>

    <div class="w3-container">
        <h2>Your Appointment Status</h2>
        <table class="w3-table w3-bordered w3-striped">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Appointment Date</th>
                    <th>Doctor</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <!-- Since we are passing a single object, no need for <c:forEach> -->
                <tr>
                   <td>hii</td>
                </tr>
            </tbody>
        </table>
    </div>

</body>

</html>
