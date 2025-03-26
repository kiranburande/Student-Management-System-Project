<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.student_management_system.classes.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>
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
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 800px;
            text-align: left;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        a {
            display: inline-block;
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            margin: 10px 0;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 2s ease;
        }

        a:hover {
            background-color: #45a049;
            transform: scale(0.95);
        }

    </style>
</head>
<body>
 <div class="container">
    <h2 align="center"><%
      AdminBean ab = (AdminBean)session.getAttribute("abean");
    StudentBean sb = (StudentBean)request.getAttribute("sbean");
    out.println("Page belongs to : "+ab.getfName()); %></h2>
    <table>
       <tr> 
         <th>Roll No</th><th>Name</th><th>CoreJava</th><th>AdvJava</th><th>UI</th><th>DB</th><th>Tools</th>
       </tr>
       <tr>
          <td><% out.println(sb.getRollNo()); %></td>
          <td><% out.println(sb.getName()); %></td>
          <td><% out.println(sb.getMk().getCoreJava()); %></td>
          <td><% out.println(sb.getMk().getAdvJava()); %></td>
          <td><% out.println(sb.getMk().getUi()); %></td>
          <td><% out.println(sb.getMk().getDb()); %></td>
          <td><% out.println(sb.getMk().getTools()); %></td>
       </tr>
    </table>
    
    <a href="edit?rollno=<%=sb.getRollNo()%>">Edit Marks</a>
    <a href="Student.html">Add Student</a>
     <a href="view" >View All Students</a>
     <a href="logout">Logout</a>
 </div>
</body>
</html>