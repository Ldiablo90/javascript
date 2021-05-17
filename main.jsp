<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% page import="java.io.Printwriter"%>
<% request.setCharcterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width", initial-scale="1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <title>jsp 게시판</title>
</head>
<body>
    <%
        String userID = null;
        if(session.getAttribute("userID") != null){
            userID = (String) session.getAttribute("userID");
        }
    %>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">JSP 5.0 계시판 만들기</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <!-- 버튼에 data-bs-target 값이 연동할 div id와 같아야 된다. -->
          <div class="collapse navbar-collapse " id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="main.jsp">메인</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="bbs.jsp">계시판</a>
              </li>
              <li class="nav-item dropdown dropdown-menu-end">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  접속하기
                </a>
                <%
                    if(userID == null){
                %>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="login.jsp">로그인</a></li>
                    <li><a class="dropdown-item" href="main.jsp">회원가입</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                </ul>
                <% } %>    
                <%
                    else{
                %>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="#">회원관리</a></li>
                    <li><a class="dropdown-item" href="logoutAction.jsp">로그아웃</a></li>
                </ul>
                <% } %>
                
              </li>
            </ul>
          </div>
        </div>
      </nav>

    <script
      src="https://code.jquery.com/jquery-3.6.0.js"
      integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
      crossorigin="anonymous"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>