<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <% String msg = request.getParameter("msg");
    out.println(msg);
    %>
    <%@include file="StudentAdmin.jsp" %>
</body>
</html>