<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.student_management_system.classes.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /* General reset for margin and padding */
    body, html {
        margin: 0;
        padding: 0;
        height: 100%;
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
    }

    /* Centering content using Flexbox */
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        text-align: center;
    }

    .container {
        background-color: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        width: 300px;
        text-align: left;
    }

    h1 {
        color: #333;
        margin-bottom: 20px;
    }

    a {
        display: block;
        text-decoration: none;
        color: #fff;
        background-color: #4CAF50;
        padding: 10px;
        margin: 10px 0;
        border-radius: 5px;
        text-align: center;
        font-weight: bold;
        transition: background-color 0.3s ease;
    }

    a:hover {
        background-color: #45a049;
    }

</style>
</head>
<body>
 <div class="container">
        <h1 align="center">Welcome Admin</h1>
    <h2 align="center"><%
      AdminBean ab = (AdminBean)session.getAttribute("abean");
      String msg = (String)request.getAttribute("msg");
      
      out.println(msg);
    %></h2>
    <a href="Student.html">AddStudent</a>
    <a href="view">ViewAllStudents</a>
    <a href="logout">Logout</a>
    </div>
</body>
</html>