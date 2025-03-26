<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

        /* Logout message container styling */
        .message-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
            margin-bottom: 20px;
        }

        /* Styling for the logout success message */
        .message-container h2 {
            color: #28a745; /* Green color for success message */
            font-size: 24px;
            margin-bottom: 10px;
        }

        .message-container p {
            color: #333;
            font-size: 16px;
            margin-top: 10px;
        }

        /* Link styling to go back to home */
        .message-container a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
        }

        /* Hover effect for link */
        .message-container a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
   <% 
     session.removeAttribute("sbean");
   session.invalidate();
   out.println("Student Logged Out Successfully...<br>");
   %>
   <%@ include file="home.html" %>
</body>
</html>