<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add Doctor</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <style>
      form {
        height: 450px;
        width: 280px;
        border: 2px solid transparent;
        box-shadow: 10px 10px 5px gray;
        background-color: white;
      }

      label {
        display: block;
        padding: 5px 0px;
      }
    </style>
  </head>

  <body class="w3-pale-green">
    <form action="add_doctor" method="post" class="w3-display-middle">
      <h3 class="w3-center">Add Doctor</h3>

      <c:if test="${not empty success}">
        <h4 class="w3-green w3-center success">${success}</h4>
        
        <script>
                setTimeout(function () {
                    window.location.href = 'admin_homepage.jsp'; 
                }, 5000);
            </script>
        
      </c:if>

      <div class="content w3-center" style="padding-top: 20px">
        <label for="name"> Enter Doctor's Name: </label>
        <input
          type="text"
          class="w3-round-large"
          style="border: 1px solid grey"
          name="name"
          id="name"
          required
        />
        <label for="mobile" style="padding-top: 20px">
          Enter the mobile number:
        </label>
        <input
          type="number"
          name="mobile"
          class="w3-round-large"
          id="mobile"
          required
          style="border: 1px solid grey"
        />
        
        <label for="password" style="padding-top: 20px">
          Enter the password:
        </label>
        <input
          type="password"
          name="password"
          class="w3-round-large"
          id="password"
          required
          style="border: 1px solid grey"
        />
        
        <label for="specialist" style="padding-top: 20px">
          Specialization In:
        </label>
        <select
          id="specialist"
          style="width: 210px; padding: 3px 5px; text-align: center"
          class="w3-round-large"
          name="specialist"
        >
          <option value="Cardiologist">Cardiologist</option>
          <option value="Neurologist">Neurologist</option>
          <option value="Dentist">Dentist</option>
        </select>
      </div>
      <button
        type="submit"
        class="w3-green w3-center w3-container w3-panel w3-button w3-padding"
        style="position: relative; top: 6%; left: 28%"
      >
        Add Doctor
      </button>
    </form>
  </body>
  <script>
    $(document).ready(function () {
      if ($(".success").is(":visible")) {
        $("form").css("height", "500px");
      }
    });
  </script>
</html>
