<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% page import="./src/UserDAO"%>
<% page import="java.io.printwriter"%>
<% request.setCharcterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="src/User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
    <%
        UserDAO userDAO = new UserDAO();
        int int result - userDAO.login(user.getUserID(), user.getUserPassword());
        if(result == 1){
            Printwriter mscript = response.getWriter();
            script.println("<script>"");
            script.println("localtion.href = 'main.jsp'");
            script.println("</script>");
        }
        else if(result == 0){
            Printwriter mscript = response.getWriter();
            script.println("<script>")
            script.println("alert('비밀번호가 틀립니다.'");
            script.println("history.back()");
            script.println("</script>");
        }
        else if(result == -1){
            Printwriter mscript = response.getWriter();
            script.println("<script>");
            script.println("alert('존재 하지않는 아이디입니다.'");
            script.println("history.back()");
            script.println("</script>");
        }
        else if(result == -2){
            Printwriter mscript = response.getWriter();
            script.println("<script>");
            script.println("alert('데이터베이스에 오류가 발생했습니다.'");
            script.println("history.back()");
            script.println("</script>");
        }
    %>
    
</body>
</html>