<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="com.auca.domain.Eregistration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, intial-scale=1.0">
<title>StudentRegistration - Adventist University Of Central Africa</title>
<link rel="stylesheet" href="css/style.css"/>
<!--fav-icon-->
<link rel="shortcut icon" href="images/iconheader.png"/>
<script src="asserts/script.js"></script>
</head>
<body>
<section class="main">
        
        <nav>
            <a href="adminDashboard.jsp" class="logo">
                <img src="images/logo.png" height="40px" />
            </a>
            <input class="menu-btn" type="checkbox" id="menu-btn"/>
            <label class="menu-icon" for="menu-btn">
                <span class="nav-icon"></span>
            </label>
            <ul class="menu" style="border-radius: 5px;">
                <li><a href="studentDashboard.jsp">Back</a></li>
                <li><a href="Report.jsp">Summary</a></li>
                <li><a href="Login.jsp" class="active" onclick="document.getElementById('id01').style.display='block'" style="width:auto; border-radius: 5px; cursor: pointer;">Logout</a></li>
            </ul>
        </nav>

        <form action="studentregistration" method="post">
            <h2>StudentRegistration</h2>
            <div class="form-group password">
              <label for="password">Student ID</label>
              <input type="text" id="name" placeholder="Enter student id" name="code">
            </div>
            <div class="form-group email">
              <label for="email">RegistrationDate</label>
              <input type="date" id="code" placeholder="Enter registration date" name="date">
            </div>
            <div class="form-group password">
              <label for="password">AcademicUnit</label>
              <input type="text" id="name" placeholder="Enter academicunit" name="academicunitcode">
            </div>
            <div class="form-group password">
              <label for="password">Semester</label>
              <input type="text" id="name" placeholder="Enter semester" name="semestercode">
            </div>
              <br />
            <div class="form-group submit-btn">
              <input type="submit" value="Add">
            </div>
          </form>
      
    </section>
    <!--footer------------->
    <footer>
        <p>Copyright (C) - 2024 | Developed By <a>David Turinayo</a> </p>
    </footer>
    
  
</body>
</html>