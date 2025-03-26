<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.student_management_system.classes.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4; /* Light background for the page */
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        /* Welcome message container styling */
        .welcome-message {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
            margin-bottom: 20px;
        }

        /* Styling for the welcome text */
        .welcome-message h2 {
            color: #28a745; /* Green color for the student name */
            font-size: 24px;
            margin-bottom: 10px;
        }

        /* Styling for the links */
        a {
            display: inline-block;
            margin: 15px;
            padding: 12px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 18px;
            transition: background-color 0.3s, transform 0.3s;
        }

        /* Hover effect for links */
        a:hover {
            background-color: #0056b3;
            transform: scale(1.1);
        }

        /* Add some spacing around the links */
        a:active {
            transform: scale(1);
        }
    </style>
</head>
<body>
   <% 
     StudentBean sb = (StudentBean)session.getAttribute("sbean");
     HttpSession hs = request.getSession(false);
     hs.setAttribute("roll", sb.getRollNo());
   %>
   <h2>Welcome Student:<%out.println(sb.getName()); %></h2><br>
   <a href="viewdetails.jsp">View Details</a>
   <a href="slogout">Logout</a>
   
</body>
</html>