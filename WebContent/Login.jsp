<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, intial-scale=1.0">
<title>Login - Adventist University of Central Africa</title>
<link rel="stylesheet" href="css/style.css"/>
<!--fav-icon-->
<link rel="shortcut icon" href="images/iconheader.png"/>
<script src="asserts/script.js"></script>
</head>
<body>
<section class="main">
        
        <nav>
            <a href="index.html" class="logo">
                <img src="images/logo.png" height="40px" />
            </a>
            <input class="menu-btn" type="checkbox" id="menu-btn"/>
            <label class="menu-icon" for="menu-btn">
                <span class="nav-icon"></span>
            </label>
            <ul class="menu" style="border-radius: 5px;">
                <li><a href="index.jsp">Home</a></li>
                <li><a class="active" onclick="document.getElementById('id01').style.display='block'" style="width:auto; border-radius: 5px; cursor: pointer;">Login</a></li>
            </ul>
        </nav>

        <form action="LoginServlet" method="post">
            <h2>Login</h2>
            <div class="form-group email">
              <label for="email">Email</label>
              <input type="text" id="email" placeholder="Enter your email" name="email" required>
            </div>
            <div class="form-group password">
              <label for="password">Password</label>
              <input type="password" id="password" placeholder="Enter your password" name="password" required>
            </div>
            <div>
              <a href="#" class="info" style="color: red;">Recover Password!!</a>
            </div>
            <br />
            <div class="form-group submit-btn">
              <input type="submit" value="Login">
            </div>
            <div>
              <a href="Signup.jsp" class="info" style="color: #fff;">Don't Have an Account?</a>
            </div>
          </form>
      
    </section>
    <!--footer------------->
    <footer>
        <p>Copyright (C) - 2024 | Developed By <a>David Turinayo</a> </p>
    </footer>
    
  
</body>
</html>