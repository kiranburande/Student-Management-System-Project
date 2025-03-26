<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.student_management_system.classes.AdminBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
<style>
 body, html {
        margin: 0;
        padding: 0;
        height: 100%;
        width: 100%;
    }
    body {
        font-family: Arial, sans-serif;
        margin: 20px;
        background-color: #f4f4f9;
        display: ;
        justify-content: center; /* Center horizontally */
        align-items: center;     /* Center vertically */
        text-align: center;
    }

    a {
        text-decoration: none;
        color: white;  
        font-weight: bold;
        background-color: green;
        margin: 12px;
        padding: 12px 20px;
        border-radius: 8px;
        display: inline-block;  /* Ensures they don't align inline */
        transition: all 0.3s ease; /* Smooth transition for all properties */
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Soft shadow for depth */
    }

    a:hover {
        text-decoration: underline;
        transform: scale(0.95);  /* Slightly smaller on hover */
        background-color: #f0f0f0; /* Slight background color change */
        box-shadow: 0 6px 8px rgba(0, 0, 0, 0.2); /* Slightly larger shadow for hover effect */
    }

    h1 {
        color: #333;
        margin-top: 200px;
    }

</style>
</head>
<body>
    <h1> <%
        AdminBean ab = (AdminBean)session.getAttribute("abean");
        out.println("Page belong to admin :"+ab.getfName());
        String msg = (String)request.getAttribute("msg");
        out.print(msg);
     %></h1>
     <a href="Student.html">Add Student</a>
     <a href="view" >View All Students</a>
     <a href="logout">Logout</a>
     
</body>
</html>