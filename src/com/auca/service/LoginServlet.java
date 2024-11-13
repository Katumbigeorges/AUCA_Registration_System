package com.auca.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.auca.controller.UsersDao;
import com.auca.domain.Users;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private UsersDao usersDao = new UsersDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Users user = usersDao.getUserByEmail(email, password);

        if (user != null && user.getPassword().equals(password)) {
            // Login successful
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            
            String role = user.getRole();
            
            if ("student".equals(role)) {
                response.sendRedirect("studentDashboard.jsp");
            } else if ("admin".equals(role)) {
                response.sendRedirect("adminDashboard.jsp");
            } else  if ("teacher".equals(role)){
            	 response.sendRedirect("TeacherDashboard.jsp");
            	
            }else {
                response.sendRedirect("Login.jsp");
            }
            
            
        } else {
            request.setAttribute("error", "Login failed. Please check your email and password.");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    }

}
