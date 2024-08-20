<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Specialist</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    

</head>
<body>
    <form action="add_specialist" method="post" style="border: 2px solid rgba(128, 128, 128, 0.322); height: 270px; width: 300px;border-radius: 20px;" class="w3-display-middle">
        <div class="center w3-center">
        <c:if test="${not empty success}" >
        <h6 class="w3-green w3-center ">${success}</h6>
        <script>
        
        setTimeout(() => {
   		 window.location.href = "admin_homepage.jsp";

		}, 4000);
        </script>
        
        </c:if>

        <label for="name" style="display: block;padding-top: 30px;">Select Doctor</label>
        
       <select name="name" style="width: 70%; display: block;position: relative;left: 16%">
                              <c:forEach var="fetchDoc" items="${fetchDoc}">
       
       
       <option value="${fetchDoc.name}">${fetchDoc.name}</option>
                      </c:forEach>
              
      
       </select>

        <label for="specialistin" style="display: block;padding-top: 30px;">Specialized In</label>
        <select name="specialistin" style="display: block;width: 70%;position: relative;left: 16%;" id="specialistin" class="w3-padding" >
            <option value="neurologist">Neurologist</option>
            <option value="Cardiologist">Cardiologist</option>
            <option value="Dentist">Dentist</option>
        </select>

        <button class="w3-button w3-green  w3-panel w3-padding">Add Specialist</button>
    </div>

    </form>
</body>
</html>