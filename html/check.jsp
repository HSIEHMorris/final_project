<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, javax.servlet.*, javax.servlet.http.*"%>
<%
    // Predefined user credentials
    String validUsername = "user123";
    String validPassword = "pass123";

    // Get the username and password from the request
    String username = request.getParameter("id");
    String password = request.getParameter("pwd");

    if (username != null && password != null) {
        if (username.equals(validUsername) && password.equals(validPassword)) {
            // Successful login, set session attributes
            session.setAttribute("username", username);
            session.setAttribute("loggedIn", true);

            // Redirect to the homepage
            response.sendRedirect("index.jsp");
        } else {
            // Failed login
            out.println("<html><body>");
            out.println("<h1>Login Failed</h1>");
            out.println("<p>Invalid username or password.</p>");
            out.println("<a href='login.html'>Try Again</a>");
            out.println("</body></html>");
        }
    } else {
        // Missing username or password
        out.println("<html><body>");
        out.println("<h1>Login Error</h1>");
        out.println("<p>Username and password must be provided.</p>");
        out.println("<a href='login.html'>Try Again</a>");
        out.println("</body></html>");
    }
%>
