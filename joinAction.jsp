<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% page import="./src/UserDAO"%>
<% page import="java.io.Printwriter"%>
<% request.setCharcterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="src/User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<jsp:setProperty name="user" property="userName"/>
<jsp:setProperty name="user" property="userGender"/>
<jsp:setProperty name="user" property="userEmail"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
    
    <% 
        if(user.getUserID == null || user.userPassword == null || user.userName == null || user.userGender == null || user.userEmail == null){
            Printwriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('필수 입력사항을 입력하세요.'");
            script.println("history.back()");
            script.println("</script>");
        }

        else{
            UserDAO userDAO = new UserDAO();
            int result = userDAO.join(user);
            if(result == -1){
                Printwriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('이미 존재하는 아이디입니다..'");
                script.println("history.back()");
                script.println("</script>");
            }
            else {
                session.setAttribute("userID",user.getUserID());
                Printwriter script = response.getWriter();
                script.println("<script>");
                script.println("location.href = 'main.jsp'");
                script.println("history.back()");
                script.println("</script>");
            }
        }
    %>
    
</body>
</html>