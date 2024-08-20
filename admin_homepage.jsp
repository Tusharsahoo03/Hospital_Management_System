<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin home pahe</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head>

<body>
    <header class="w3-green" style="display: flex;">

        <div class="nav1 w3-half" style="display: flex;justify-content: space-around;align-items: center;">
            <h4 class="w3-button w3-red w3-round">Hospital</h4>
            <p> <a href="index.jsp" style="text-decoration: none"> Home </a> </p>
            <p> <a href="doctor_registration.jsp" style="text-decoration: none">Add Doctor</a> </p>
            <p> <a href="view_doctor" style="text-decoration: none"> ViewDoctor</a>   </p>
            <p> <a href="add_specialistfordoctor" style="text-decoration: none">AddSpecialist</a> </p>
            <p> <a href="check_appointment" style="text-decoration: none"> Check Appointment</a></p>

        </div>
        <div class="nav2 w3-half" style="display: flex;justify-content: end;align-items: center;padding-right: 30px;">
            <button class="w3-button w3-blue w3-hover-white adminbtn" style="cursor: pointer;">Admin</button>
            <p class="logout w3-red " style="position: absolute;margin-top: 80px;display: none;width: 80px;text-align: center;cursor: pointer;"><a href="index.jsp" style="text-decoration: none"> Log out </a></p>
        </div>

    </header>
</body>

<script>
    $(document).ready(function () {
        $(".adminbtn").click(function () {
            $(".logout").slideToggle("slow");
        });
    })
</script>

</html>