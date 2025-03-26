<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Invalid Credentials</title>
 <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4; /* Light background for the page */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        /* Message box styling */
        .message-box {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        /* Styling for error message text */
        .message-box h2 {
            color: #e74c3c; /* Red color for error */
            font-size: 24px;
            margin-bottom: 15px;
        }

        .message-box p {
            color: #333;
            font-size: 16px;
            margin-top: 10px;
        }

        /* Link styling to go back to home */
        .message-box a {
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
        .message-box a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <% String msg = (String)request.getAttribute("msg");
    out.println(msg);
    %>
    <%@include file="home.html" %>
</body>
</html>