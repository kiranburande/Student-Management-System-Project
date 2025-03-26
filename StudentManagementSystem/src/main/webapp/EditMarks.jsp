<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.student_management_system.classes.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 20px;
        padding: 0;
        display: flex;
        justify-content: center; /* Center horizontally */
        align-items: center;     /* Center vertically */
        /* height: 100vh; Full viewport height */
    }

    .container {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        width: 400px;
    }

    h1 {
        text-align: center;
        color: #333;
    }

    form {
        display: flex;
        flex-direction: column;
        gap: 15px;
    }

    label {
        font-weight: bold;
        color: #333;
    }

    input[type="number"] {
        padding: 8px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }

    input[type="submit"] {
        padding: 10px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

</style>
</head>
<body>
<div class="container">
    <h1>Update Marks</h1>
   <h2 align="center"><%
     AdminBean ab = (AdminBean)session.getAttribute("abean");
   StudentBean sb = (StudentBean)request.getAttribute("sbean");
   out.println("Page Belongs to:"+ab.getfName());
   %></h2>
   <form action="update" method="post">
      <input type="hidden" name="rollno" value="<%= sb.getRollNo()%>">
      CoreJava:<input type="number" name="corejava" value="<%=sb.getMk().getCoreJava()%>">
      Adv Java:<input type="number" name="advjava" value="<%=sb.getMk().getAdvJava() %>" >
      UI:<input type="number" name="ui" value="<%=sb.getMk().getUi() %>" >
      DB:<input type="number" name="db" value="<%=sb.getMk().getDb() %>" >
      Tools:<input type="number" name="tools" value="<%=sb.getMk().getTools() %>" >
      <input type="submit" value="UpdateMarks" >
   </form>
   </div>
</body>
</html>