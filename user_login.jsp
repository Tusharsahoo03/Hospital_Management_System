<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Patient page</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
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
    <form action="user_login" method="post" class="w3-display-middle w3-card-4 form">
        <h3 class="w3-center" style="padding: 5px 0px"> Patient Login page</h3> 
        
         <c:if test="${not empty success}">
            
            <h4 class="w3-center w3-text-white w3-container w3-green success">${success}</h4>
            
            	<script>
            	
            	setTimeout(() => {
            		 window.location.href = "user_homepage.jsp";
					
				}, 3000);
            	</script>
   
            </c:if>
            
             <c:if test="${not empty fail}">
            
            <h4 class="w3-center w3-text-white w3-container w3-red successforfail w3-animate-top">${fail}</h4>
   
            </c:if>
            
        
        <div class="logincontainer w3-display-middle">
<div class="email">
    <label for="email">
        Enter your email:
    </label>
    <input type="email" name="email" id="email" class="w3-round-xsmall" required>
</div>

<div class="password">
    <label for="password">
        Enter your password:
    </label>
    <input type="password" name="password" id="password" class="w3-round-xsmall" required="required">
</div>
<button type="submit" class="w3-button w3-green w3-margin w3-padding" >Submit</button>
</div>
    </form>
    
    
    <script>
    
    $(document).ready(function(){
    	$("input").focus(function(){
    	$(this).css("background-color",("blue"))
    	});
    	$("input").blur(function(){
    	$(this).css("background-color"),("red")
    	});
    	
    	if ($(".success").is(":visible") || $(".successforfail").is(":visible")) {
            $(".success, .successforfail").css("margin-bottom", "10px");
            $(".form").css("height", "300px");
            $(".logincontainer").css("margin-top", "15px");
        }
    	
    	
    	
    	   
    	});



    </script>
</body>
</html>