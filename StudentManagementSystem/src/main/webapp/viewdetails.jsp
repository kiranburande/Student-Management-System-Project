<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.student_management_system.classes.*" %>
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

        /* Container for the student details */
        .student-details {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 350px;
            margin-bottom: 20px;
            text-align: left;
        }

        /* Styling for the student name */
        .student-details h2 {
            color: #007bff;
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* Styling for the student details */
        .student-details p {
            font-size: 16px;
            color: #333;
            margin: 5px 0;
        }

        /* Link styling */
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
        }

        /* Hover effect for links */
        a:hover {
            background-color: #218838;
        }

        /* Styling for the logout link */
        .logout-link {
            background-color: #dc3545;
            margin-top: 10px;
        }

        .logout-link:hover {
            background-color: #c82333;
        }
        table{
         width:90%;
         border-collapse: collapse;
         margin-bottom: 30px;
        }
        table,th,td{
        border:2px solid green;
        }
        th,td{
        padding:10px;
        text-align:left;
        }
        th{
        background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <%
    StudentBean sb = (StudentBean)session.getAttribute("sbean");
    HttpSession hs = request.getSession(false);
    %>
     <h2>Page Belongs To:<% sb.getName();%></h2>
     <table>
       <tr>
         <th>Roll No</th><th>Name</th><th>Course</th><th>Total Marks</th><th>Percentage</th><th>Result</th><th>View Marks</th>
       </tr>
       <tr>
         <td><% out.println(sb.getRollNo()); %></td><td><% out.println(sb.getName()); %></td><td><% out.println(sb.getCourse()); %></td><td><% out.println(sb.getTotMarks()); %></td><td><% out.println(sb.getPer()); %></td><td><% out.println(sb.getResult()); %></td><td> <a href="viewstudentmarks">View Marks</a></td>
       </tr>
     </table>
     
     <a href="slogout">Logout</a>
</body>
</html>