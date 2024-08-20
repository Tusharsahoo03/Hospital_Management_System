<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login page</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js">   
    </script>
   <style>
   
   *{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    background-color: black;
}
form{
    border: 2px solid black;
    width: 280px;
    height: 250px;
    border-radius: 20px;
    background-color: white;
}
form>.logincontainer{
    padding-top: 50px;
}
button{
    position: relative;
    left: 20%;
}
   </style>
</head>
<body>
    <form action="doctor_login" method="post" class="w3-display-middle w3-card-4">
        <h4 class="w3-center" style="text-decoration: underline; "> Doctor Login page</h4> 
        
        <c:if test="${not empty success}" >
        <h5 class="w3-green w3-center success">${success}</h5>
        </c:if>
        
        <c:if test="${not empty fail}" >
        <h5 class="w3-red w3-center fail">${fail}</h5>
        </c:if>
        
        <div class="logincontainer w3-display-middle">
<div class="email">
    <label for="mobile">
        Enter your mobile :
    </label>
    <input type="number" name="mobile" id="mobile" class="w3-round-xsmall">
</div>

<div class="password">
    <label for="password">
        Enter your password:
    </label>
    <input type="password" name="password" id="password" class="w3-round-xsmall">
</div>
<button type="submit" class="w3-button w3-green w3-margin w3-padding" >Submit</button>
</div>
    </form>
</body>

<script >
$(document).ready(function(){
    $("input").focus(function(){
        $(this).css("background-color", "blue");
    });
    $("input").blur(function(){
        $(this).css("background-color", "red");
    });
    
    if ($(".success").is(":visible") || $(".fail").is(":visible")) {
        $(".success, .fail").css("margin-bottom", "15px");
        $("form").css("height", "300px");
        $(".logincontainer").css("padding-top", "50px");
    }
});

</script>


</html>