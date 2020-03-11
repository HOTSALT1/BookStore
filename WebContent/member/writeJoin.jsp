<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href=	"https://fonts.googleapis.com/css?family=Jua|Nanum+Gothic|Yeon+Sung&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/writeJoin.css" />
<meta charset="EUC-KR">
<style type="text/css">
.radioBtn{
	margin:0 auto;
	width: 84%;
	max-width: 921px;
	margin-top: 10px;
	margin-bottom: 10px;
	cursor:pointer;
}
.radioImg1{
	width:20px;
	height:20px;
	vertical-align: text-top;
	cursor: pointer;
}
.radioImg2{
	width:18px;
	height:18px;
	vertical-align: middle;
	margin-top: -3px;
	cursor: pointer;
}
.radioImg3{
	width:18px;
	height:18px;
	vertical-align: middle;
	margin-top: -3px;
	cursor: pointer;
}
.write-button, .cancel-button{background-color:#a7a4a4;}
</style>
<title>Insert title here</title>
</head>
<body>

<!-- �������� ���� �̿� ���� / �������� ��Ź ���� -->
<div id="card-writeJoin">
<h3 class="order-title">���� ���� �� �̿� ����</h3>
<div class="radioBtn" style="border-bottom: 1px solid #f1f1f1; height: 40px; margin-bottom: 30px;">
	<img src="../img/radiobutton_gray.png" class="radioImg1">
	<span>�߰ſ�å�� ���� �̿� ���, �������� ���� �� �̿뿡 ��� �����մϴ�.<span style="font-size: 14px;">(��ü����)</span></span>
</div>
<div class="radioBtn">
	<img src="../img/radiobutton_gray.png" class="radioImg2">
	<span style="font-size: 13px;">�������� ���� �� �̿� ����</span>
</div>
<div id="agreementWrap1" class="agreement">
	<span class="span-agreement">�������� ���� �̿� ����</span>
	<div id="agreementUnit1" class="agreementUnit"></div>
</div>
<div class="radioBtn" style="margin-top: 20px;">
	<img src="../img/radiobutton_gray.png" class="radioImg3">
	<span style="font-size: 13px;">���� �̿� ��� ����</span>
</div>
<div id="agreementWrap2" class="agreement">
	<span class="span-agreement">�������� ó�� ��Ź ����</span>
	<div id="agreementUnit2" class="agreementUnit"></div>
</div>
<div style="text-align: center;">
	<input type="button" class="back-button" value="�ڷ�">&nbsp;
	<input type="button" class="next-button" value="����">
</div>
<!-- �������� ���� �̿� ���� / �������� ��Ź ���� �� -->
</div>
<div id="card-writeForm" style="display:none;"></div>
</body>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

$(function() {
	$('#agreementUnit1').load('agreement1.html')
	$('#agreementUnit2').load('agreement2.html')
	$('#card-writeForm').load('writeForm.jsp');
});
/* ��ȿ���˻�  */
let checkAll = false;
$('.radioImg1, .radioBtn:eq(0) span').click(function(){
	let src = '';
	if(checkAll){
		src = "../img/radiobutton_gray.png"
		$('.next-button').css("background-color","#a7a4a4");
		check1 = false;
		check2 = false;
	}else{
		src = "../img/radiobutton_pink.png"
		$('.next-button').css("background-color","#f56a6a");
		check1 = true;
		check2 = true;
	}
	$('img[class^="radioImg"]').attr("src",src);
	checkAll = !checkAll;
});

let check1 = false;
$('.radioImg2, .radioBtn:eq(1) span').click(function(){
	let src = '';
	if(check1){
		src = "../img/radiobutton_gray.png"
		$('.radioImg1').attr("src",src);
		$('.next-button').css("background-color","#a7a4a4");
		checkAll = false;
	}else{
		src = "../img/radiobutton_pink.png"
		if(check2){			
			checkAll = true;
			$('.radioImg1').attr("src",src);
			$('.next-button').css("background-color","#f56a6a");
		}
	}
	$('.radioImg2').attr("src",src);
	check1 = !check1;
});

let check2 = false;
$('.radioImg3, .radioBtn:eq(2) span').click(function(){
	let src = '';
	if(check2){
		src = "../img/radiobutton_gray.png"
		$('.radioImg1').attr("src",src);
		$('.write-button').css("background-color","#a7a4a4");
		checkAll = false;
	}else{
		src = "../img/radiobutton_pink.png"
		if(check1){			
			checkAll = true;
			$('.radioImg1').attr("src",src);
			$('.next-button').css("background-color","#f56a6a");
		}
	}
	$('.radioImg3').attr("src",src);
	check2 = !check2;
});
/* ī��css */
$('.next-button').click(function(){
	if(checkAll){
		$('#card-writeJoin').hide();
		$('#card-writeForm').css('display','block');
	}else if(check1==false){
		alert("�������� ���� �� �̿� ���Ǹ� üũ ���ּ���.");
	}else if(check2==false){
		alert("���� �̿� ��� ���Ǹ� üũ���ּ���.");
	}
});

function rgb2hex(rgb) {
    if (  rgb.search("rgb") == -1 ) {
         return rgb;
    } else {
         rgb = rgb.match(/^rgba?\((\d+),\s*(\d+),\s*(\d+)(?:,\s*(\d+))?\)$/);
         function hex(x) {
              return ("0" + parseInt(x).toString(16)).slice(-2);
         }
         return "#" + hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3]); 
    }
}

//#f56a6a
</script>
</html>