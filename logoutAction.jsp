<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% page import="./src/UserDAO"%>
<% page import="java.io.Printwriter"%>
<% request.setCharcterEncoding("UTF-8"); %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
    
    <% 
       session.invalidate();
    %>
    <script>
        location.href = 'main.jsp';
    </script>
</body>
</html>