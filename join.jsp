<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width", initial-scale="1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <title>jsp 게시판</title>
</head>
<body>
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
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="login.jsp">로그인</a></li>
                  <li><a class="dropdown-item" href="main.jsp">회원가입</a></li>
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="#">Something else here</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="container">
          <div class="col-lg-4"></div>
          <div class="col-lg-4">
              <div class="ju pt-5">
                  <form action="LoginAction.jsp" method="POST">
                      <h3 class="text-center">회원가입화면</h3>
                      <div class="form-label">
                          <input type="text" class="form-control" placeholder="ID" name="userID" maxlength="20">
                          <input type="password" class="form-control" placeholder="PassWord" name="userPassword" maxlength="20">
                      </div>
                      <input type="submit" class="btn btn-primary form-control" value="회원가입">
                  </form>
              </div>
          </div>
      </div>

    <script
      src="https://code.jquery.com/jquery-3.6.0.js"
      integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
      crossorigin="anonymous"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>