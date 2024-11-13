<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, intial-scale=1.0">
<title>ADMIN-ADVENTIST UNIVERSITY OF CENTRAL AFRICA</title>
<link rel="stylesheet" href="css/style.css"/>
<!--fav-icon-->
<link rel="shortcut icon" href="images/iconheader.png"/>
<script src="asserts/script.js"></script>
</head>

<body>
   
    <section>
        
        <nav>
            <a href="adminDashboard.jsp" class="logo">
                <img src="images/logo.png" height="40px" />
            </a>
            <input class="menu-btn" type="checkbox" id="menu-btn"/>
            <label class="menu-icon" for="menu-btn">
                <span class="nav-icon"></span>
            </label>
            <ul class="menu" style="border-radius: 5px;">
                <li><a href="index.jsp">Home</a></li>
            	<li><a href="About.jsp">About</a></li>
                <li><a href="adminDashboard.jsp">Admissions</a></li>
                <li><a href="StudentDashboard.jsp">Academics</a></li>
                <li><a href="About.jsp">Media Center</a></li>
                <li><a href="About.jsp">Research</a></li>
                <li><a href="Report.jsp">Summary</a></li>
                <li><a href="StudentRegistration.jsp">Apply</a></li>
                <li><a href="index.jsp" class="active" onclick="document.getElementById('id01').style.display='block'" style="width:auto; border-radius: 5px; cursor: pointer;">Logout</a></li>
            </ul>
        </nav>
        <!--main-content-->
        
        <center>
        <div class="home-content">
            
            <!--text-->
            <div class="home-text" >

                <h2 style="color: white; letter-spacing: 2px;">WELCOME TO THE ADMIN HOME PAGE</h2>
            </div>
            </div>
            
            </center>
        
    </section>
    
    
    
    <!--services----------------------->
    <section class="services">
        <!--heading----------->
        <div class="services-heading">
            <h2> .</h2>
            <h2>Administration Page</h2>
        </div>
        <!--box-container----------------->
        <div class="box-container">
            <!--box-1-------->
            <div class="box">
                <img src="images/teacher.png">
                <font>Register New Teachers</font>
                <!--btn--------->
                <a href="Teacher.jsp">Register</a>
            </div>
            <!--box-2-------->
            <div class="box">
                <img src="images/books.png">
                <font>Register Course Definition</font>
                
                <!--btn--------->
                <a href="CourseDefinition.jsp">Register</a>
            </div>
            <!--box-3-------->
            <div class="box">
                <img src="images/calendar.png">
                <font>Add Semesters Available</font>
                
                <!--btn--------->
                <a href="Semester.jsp">Register</a>
            </div>
            <!--box-4-------->
            <div class="box">
                <img src="images/academic.png">
                <font>Register AcademicUnits</font>
                
                <!--btn--------->
                <a href="AcademicUnit.jsp">Register</a>
            </div>
            <!--box-5-------->
            <div class="box">
                <img src="images/books.png">
                <font>Register Courses</font>
                
                <!--btn--------->
                <a href="Course.jsp">Register</a>
            </div>
            <!--box-5-------->
            <div class="box">
                <img src="images/books.png">
                <font>Register Student Courses</font>
                
                <!--btn--------->
                <a href="StudentCourse.jsp">Register</a>
            </div>
            <!--box-5-------->
            <div class="box">
                <img src="images/update.png">
                <font>Update Student Registration</font>
                
                <!--btn--------->
                <a href="StudentRegistrationAdmin.jsp">Register</a>
            </div>
        </div>
    </section>
    
    <!--footer------------->
    <footer>
        <p>Copyright (C) - 2024 | Developed By <a>David Turinayo</a> </p>
    </footer>
    
</body>

</html>
