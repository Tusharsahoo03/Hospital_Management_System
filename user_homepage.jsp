<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Homepage</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body>
    <header style="display: flex; align-items: center; height: 80px;" class="w3-pale-green">
        <div class="content w3-container w3-third" style="display: flex; justify-content: space-between; align-items: center;">
            <p class="w3-button w3-blue">Hospital</p>
            <p class="w3-round-large w3-border w3-panel w3-container w3-button w3-purple w3-padding">
                <a href="appointment_registration" style="text-decoration: none;">Make Appointment</a>
            </p>
            <p class="w3-round-large w3-border w3-panel w3-container w3-pink w3-button w3-padding">

                <c:url var="viewStatusUrl" value="/view_status">
                    <c:param name="id" value="1" />
                    <c:param name="appointmentId" value="1" />
                </c:url>
                <a href="${viewStatusUrl}">View Status</a>
            </p>
        </div>
        <div class="user w3-display-topright w3-container ">
            <p class="w3-button w3-red user">User</p>
            <p style="display: none;" class="logout w3-center w3-red">Logout</p>
        </div>
    </header>

    <script>
        $(document).ready(function () {
            $(".user").click(function () {
                $(".logout").show();
            });
        });
    </script>
</body>

</html>
