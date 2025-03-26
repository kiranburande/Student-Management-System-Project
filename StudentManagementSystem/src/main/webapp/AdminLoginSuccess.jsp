<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "com.student_management_system.classes.AdminBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login Operations</title>
<style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f9;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      flex-direction: column;
    }

    
    h2 {
      background-color: #ffffff;
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      width: 80%;
      max-width: 600px;
      text-align: center;
      font-size: 24px;
      font-weight: bold;
      color: #4CAF50;
      margin-bottom: 30px;
    }

    .links {
      margin-top: 40px;
      text-align: center;
    }
    
    .links a {
      text-decoration: none;
      color: white;
      background-color: #4CAF50;
      padding: 10px 20px;
      margin: 5px;
      border-radius: 4px;
      font-size: 16px;
      transition: background-color 0.3s;
    }

    .links a:hover {
      background-color: #45a049;
    }

    .links a:active {
      background-color: #388e3c;
    }

   
  </style>
</head>
<body>
     <h2><%  AdminBean ab = (AdminBean)session.getAttribute("abean");
     out.println("Welcome Admin :"+ab.getfName()+" <br>");
     %>
     <div class="links">
     <a href="Student.html">Add Student</a>
     <a href="view">View All Students</a>
     <a href="logout">Logout</a>
     </div></h2>
</body>
</html>