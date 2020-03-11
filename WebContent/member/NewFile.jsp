<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
  body { margin: 0; }
  .navbar {
    display: inline-block;
    width: 100%;
    background: hotpink;
  }
  .navbar>div { float: right; }
  .navbar>ul {
    float: left;
    margin: 0;
    padding: 0;
    list-style: none;
  }
  .navbar>ul>li {
    display: inline-block;
    padding: 0;
  }
  .navbar a {
    display: block;
    text-decoration: none;
    padding: 10px 20px;
    color: white;
  }
  .navbar a:hover { background: deeppink; }
</style>

<nav class="navbar">
  <ul>
    <li><a href="#">홈</a></li>
    <li><a href="#">메뉴1</a></li>
    <li><a href="#">메뉴2</a></li>
  </ul>
  <div><a href="#">☰</a></div>
  <div><a href="#">로그인</a></div>
</nav>
</body>
</html>