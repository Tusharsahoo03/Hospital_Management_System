<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Registartion</title>
    <link rel="stylesheet" href="AdminRegister.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    
    <style >
    
    *{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    background-color: rgba(128, 128, 128, 0.76);
}

form{
    height: 320px;
    width: 300px;
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
.intro{
    background-color: white;
    padding-top: 0;
    text-decoration: underline;
}
form>label{
    display: block;
    background-color: white;

}
form>input{
    display: block;
    position: relative;
    left: 20%;
    border-radius: 20px;
    border-collapse: collapse;
    opacity: 0.5;
    background-color: white;

    
}

    
    
    </style>

</head>
<body>

    <form action="adminregistration" method="post" class="w3-card-4">

        <h4 class="intro">Admin Registration</h4>
<label for="name">
    Enter your name:
</label>
<input type="text"  id="name" name="name">

<label for="email">
    Enter your email:
</label>
<input type="email" id="email" name="email">

<label for="password" >
    Enter your password:
</label>
<input type="password" id="password" name="password">

<button type="submit" id="submit" class="w3-button w3-round-small w3-green w3-center" style="position: relative;top: 5%;">Submit </button>
    </form>

   
    
</body>
</html>