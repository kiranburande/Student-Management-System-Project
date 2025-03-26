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
        .marks-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 350px;
            margin-bottom: 20px;
            text-align: left;
        }

        /* Styling for the student name */
        .marks-container h2 {
            color: #007bff;
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* Styling for the student details */
        .marks-container p {
            font-size: 16px;
            color: #333;
            margin: 5px 0;
        }

        /* Link styling */
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #dc3545;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
        }

        /* Hover effect for links */
        a:hover {
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
      MarksBean mbean = (MarksBean)session.getAttribute("mbean");
      StudentBean sbean = (StudentBean)session.getAttribute("sbean");
    %>
    <table>
         <tr>
            <th>RollNo</th><th>Name</th><th>Course</th><th>Core Java</th><th>Adv Java</th><th>UI</th><th>Data Base</th><th>Tools</th><th>Total Marks</th><th>Percentage</th><th>Result</th>
         </tr>
         <tr>
            <td><% out.println(sbean.getRollNo()); %></td><td><% out.println(sbean.getName()); %></td><td><% out.println(sbean.getCourse()); %></td><td><% out.println(mbean.getCoreJava()); %></td><td><% out.println(mbean.getAdvJava());%></td><td><% out.println(mbean.getUi()); %></td><td><% out.println(mbean.getDb()); %></td><td><% out.println(mbean.getTools()); %></td><td><% out.println(sbean.getTotMarks()); %></td><td><% out.println(sbean.getPer()); %></td><td><% out.println(sbean.getResult()); %></td>
         </tr>
    </table>
    
     
     <a href="slogout">Log out</a>
</body>
</html>