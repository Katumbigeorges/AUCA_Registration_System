<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, intial-scale=1.0">
<title>Student Home Page - Adventist University Of Central Africa</title>
<link rel="stylesheet" href="css/style.css"/>
<!--fav-icon-->
<link rel="shortcut icon" href="images/iconheader.png"/>
<script src="asserts/script.js"></script>
</head>

<body>
   
    <section class="main" style="background-image: url(images/Auca2.PNG);">
        
        <nav>
            <a href="#" class="logo">
                <img src="images/logo.png" height="40px" />
            </a>
            <input class="menu-btn" type="checkbox" id="menu-btn"/>
            <label class="menu-icon" for="menu-btn">
                <span class="nav-icon"></span>
            </label>
            <ul class="menu" style="border-radius: 5px;">
            <li><a href="index.jsp">Home</a></li>
                <li><a href="StudentDashboard.jsp">Academics</a></li>
                <li><a href="StudentRegistration.jsp">Apply</a></li>
                <li><a href="Login.jsp" class="active" onclick="document.getElementById('id01').style.display='block'" style="width:auto; border-radius: 5px; cursor: pointer;">Logout</a></li>
            </ul>
        </nav>
        <!--main-content-->
        <div class="home-content">
            
            <!--text-->
            <div class="home-text" >
                
                <h1 style="color: white;"> Student Home Page</h1>
            </div>
            <!--img-->
            <div class="home-img" style="width: 500px;">

            </div>
            
        </div>
    </section>
    
    <section class="services">
        <!--heading----------->
        <div class="services-heading">
            <h2>SERVICES</h2>
            
        </div>
        <!--box-container----------------->
        <div class="box-container">
            <!--box-1-------->
            <div class="box">
                <img src="images/student.png">
                <font>New Student</font>
                
                <!--btn--------->
                <a href="Student.jsp">Register</a>
            </div>
            <!--box-2-------->
            <div class="box">
                <img src="images/student.png">
                <font>Student Registration</font>
                
                <!--btn--------->
                <a href="StudentRegistration.jsp">Register</a>
            </div>
        </div>
    </section>
</body>
</html>