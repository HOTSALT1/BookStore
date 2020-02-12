<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">	
	/* banner */
	.banner {position: relative; width: 1200px; height: 750px; top: 70px;  margin:0 auto; padding:0; overflow: hidden;}
	.banner ul {position: absolute; margin: 0px; padding:0; list-style: none; }
	.banner ul li {float: left; width: 1200px; height: 750px; margin:0; padding:0;}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script language="JavaScript">
<!--
	$(document).ready(function() {
		var $banner = $(".banner").find("ul");

		var $bannerWidth = $banner.children().outerWidth();//이미지의 폭
		var $bannerHeight = $banner.children().outerHeight(); // 높이
		var $length = $banner.children().length;//이미지의 갯수
		var rollingId;

		//정해진 초마다 함수 실행
		rollingId = setInterval(function() { rollingStart(); }, 3000);//다음 이미지로 롤링 애니메이션 할 시간차
    
		function rollingStart() {
			$banner.css("width", $bannerWidth * $length + "px");
			$banner.css("height", $bannerHeight + "px");
			//alert(bannerHeight);
			//배너의 좌측 위치를 옮겨 준다.
			$banner.animate({left: - $bannerWidth + "px"}, 1500, function() { //숫자는 롤링 진행되는 시간이다.
				//첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
				$(this).append("<li>" + $(this).find("li:first").html() + "</li>");
				//뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
				$(this).find("li:first").remove();
				//다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
				$(this).css("left", 0);
				//이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
			});
		}
	}); 
//-->  
</script>

<title>뜨거운 책방</title>
</head>
<link rel="stylesheet" type="text/css" href="../css/index.css">
<body>
	<nav class="navbar" style="width: 1210px; text-align: center;">
		<ul class="navbar-menu" style="display: inline-block; float: left">
			<li class="navbar-left"><a href="#">☰</a></li>
			<li class="navbar-left"><a href="#">자유게시판</a></li>
			<li class="navbar-left"><a href="#">알림마당</a></li>
			<li class="navbar-left"><a href="#">소개</a></li>  
		</ul>
		<ul class="navbar-menu" style="display: inline-block; float: right;">
			<li class="navbar-right"><a href="#">회원가입</a></li>
			<li class="navbar-right"><a href="#">로그인</a></li>
			<li class="navbar-right"><a href="#">장바구니</a></li> 
		</ul>
	</nav>

	<div class="contents">
		<div class="banner">
			<ul>
				<li><img src="../img/indeximg1.png" class="bodyImg"></li>
				<li><img src="../img/indeximg2.jpg" class="bodyImg"></li>
				<li><img src="../img/indeximg3.jpg" class="bodyImg"></li>
			</ul>
		</div>
	</div>
	<div style="text-align: center">
		<img src="../img/sun.png">
	</div>
	<ul style="width: 100%;text-align: center; margin-top: 28px; padding: 0;">
		<li class="li1"><img src="../img/indeximg1.png" style="width: 390px; "><a href="#"></a></li>
		<li class="li1"><img src="../img/indeximg1.png" style="width: 390px;"><a href="#"></a></li>
		<li class="li1"><img src="../img/indeximg1.png" style="width: 390px;"><a href="#"></a></li>
	</ul>


</body>
</html>