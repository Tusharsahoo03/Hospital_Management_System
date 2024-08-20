<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hospital Management System</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

header {
    display: flex;
    background-color: black;
    color: white;
}

header > .flex {
    display: flex;
    height: 70px;
    width: 100%;
}

.flex > .content1 {
    display: flex;
    height: 100%;
    width: 30%;
    justify-content: space-evenly;
    align-items: center;
    font-family: "Gupter", serif;
    font-weight: 800;
    font-style: normal;
}

.flex > .register_login {
    display: flex;
    height: 100%;
    width: 60%;
    justify-content: end;
    align-items: center;
    gap: 20px;
}

.register, .login {
    position: relative;
}

#Demo1, #Demo2 {
    position: absolute;
    top: 100%;
    right: 0.1%;
    background-color: white;
    border: 1px solid #ccc;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    z-index: 1000;
    color: black;
}

.login p, #Demo1 p, #Demo2 p {
    cursor: pointer;
    padding: 10px;
    margin: 0;
}

#Demo1 p:hover, #Demo2 p:hover {
    background-color: #f1f1f1;
}

.owl-carousel .item {
    padding: 20px;
    border-radius: 20px;
    color: white;
    text-align: center;
    font-size: 18px;
}

img{

width: 100%;
border-radius:20px;

}
</style>
</head>
<body>
    <header>
        <div class="flex">
            <div class="content1">
                <h6 class="Hms">Hospital Management System</h6>
            </div>
            <div class="register_login">
                <div class="register">
                    <p class="w3-green w3-button w3-round-xlarge" onclick="toggleDropdown('Demo2')">Register</p>
                    <div id="Demo2" class="w3-container w3-hide w3-padding" style="width: 250px;">
                        <p> <a href="admin_registration.jsp" style="text-decoration: none"> Admin Registration</a></p>
                        <p> <a href="user_registration.jsp"  style="text-decoration: none"> Patient Registration</a></p>
                    </div>
                </div>
                <div class="login">
                    <p class="login-trigger w3-button w3-red w3-round-xlarge" onclick="toggleDropdown('Demo1')">Log In</p>
                    <div id="Demo1" class="w3-container w3-hide w3-padding" style="width: 200px;">
                        <p> <a href="admin_login.jsp" style="text-decoration: none">  Admin login </a></p>
                        <p><a href="doctor_login.jsp" style="text-decoration: none"> Doctor login </a></p>
                        <p> <a href="user_login.jsp" style="text-decoration: none">Patient login </a></p>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
    <div class="owl-carousel owl-theme">
        <div class="item">
<img alt="" src="https://images.unsplash.com/photo-1516549655169-df83a0774514?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" height="500px">
</div>
       <div class="item"> <img alt="" src="https://plus.unsplash.com/premium_photo-1664475477169-46b784084d4e?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" height="600vh">  </div>
        <div class="item"> <img alt="" src="https://images.unsplash.com/photo-1527613426441-4da17471b66d?q=80&w=1452&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" height="500px"> </div>
        <div class="item"> <img alt="" src="https://plus.unsplash.com/premium_photo-1682130277144-423d6b582e56?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" height="500px"> </div>
    </div>
    
    <!-- jQuery -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <!-- Owl Carousel 2 JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>    
    <script>
        function toggleDropdown(id) {
            var element = document.getElementById(id);
            if (element.className.indexOf("w3-show") == -1) {
                element.className += " w3-show";
            } else {
                element.className = element.className.replace(" w3-show", "");
            }
        }

        $(document).ready(function(){
            $('.owl-carousel').owlCarousel({
                loop:true,
                margin:10,
                autoplay:true,
                autoplayTimeout:3000,
                nav:true,
                dots:false,
                nav:false,
                responsive:{
                    0:{
                        items:1
                    },
                    600:{
                        items:3
                    },
                    1000:{
                        items:1
                    }
                }
            });
        });
    </script>
</body>
</html>
