<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.student_management_system.classes.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Students</title>
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
      color: #333;
    }

    .container {
      background-color: white;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      width: 90%;
      max-width: 1000px;
    }

    .message {
      font-size: 18px;
      color: #555;
      text-align: center;
      margin-bottom: 20px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    table, th, td {
      border: 1px solid #ccc;
    }

    th, td {
      padding: 12px;
      text-align: center;
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
      text-decoration: none;
      color: black;
      font-weight: bold;
      background-color: #FFFFFF;
      margin:10px;
      padding:6px;
      border-radius: 10px;
      transition: transform 0.3s ease; 
    }

    a:hover {
      text-decoration: underline;
      transform: scale(0.9);
    }
    

    /* Optional: Add responsive design */
    @media screen and (max-width: 600px) {
      table, th, td {
        font-size: 14px;
      }
    }
  </style>
</head>
<body>
 <div class="container">
    <h2 align="center">All Students</h2>
    <div class="message">
    <%
       AdminBean ab = (AdminBean)session.getAttribute("abean");
       ArrayList<StudentBean> list = (ArrayList<StudentBean>)session.getAttribute("alist");
       out.println("<h2>Page belongs to :"+ab.getfName()+"</h2><br>");
       if(list.size()==0)
       {
    	   out.print("No Students Available...<br>");
       } %>
        </div>
       <%
       if(list.size()!=0){
    	   Iterator<StudentBean> itr = list.iterator();
    	   %>
    	   <table>
		   <tr>
		     <th>Roll No</th><th>Name</th><th>Course</th><th>Total Marks</th><th>Percentage</th><th>Result</th><th>Marks Link</th>
		   </tr>
		   
		   <%
		   while(itr.hasNext())
    	   {
    		   StudentBean sb = (StudentBean)itr.next();%>
    		   
    		   <tr>
    		     <th><% out.println(sb.getRollNo()); %></th><th><% out.println(sb.getName()); %></th><th><% out.println(sb.getCourse()); %></th><th><% out.println(sb.getTotMarks()); %></th><th><% out.println(sb.getPer()); %></th><th><% out.println(sb.getResult()); %></th><th><% out.println("<a href='viewm?rollno="+sb.getRollNo()+"'>View Marks</a>"); %></th>
    		   </tr>
    		   
    		  <% 
    	   }%></table><%
       }
    %>
     </div>
</body>
</html>