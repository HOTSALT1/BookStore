<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script|Open+Sans&display=swap" rel="stylesheet">
    <style type="text/css">
        /* *{margin: 0; font-family: 'Open Sans', sans-serif;
font-family: 'Nanum Pen Script', cursive;} */
        
        /* body{background: url("../img/loginback.jpg");} */
        /*로그인DIV 전체*/
        .login{
            width: 300px; 
            height: 141px; 
            position:absolute; 
            top:44%; left:50%; 
            margin: -90px 0 0 -148px;
            border-radius: 7px;
            background-color: white;
            border: 1px solid #c5c5c5;
        }
        .login-idDiv{
            width: 100%;
            height: 70px;
            border-bottom: 1px solid #c5c5c5;
            line-height: 0;
        }
        .login-id{
            width: 262px;
            height: 30px;
            border: none;
            font-size: 15px;
            padding: 20px 20px 20px 18px;
            background: none;
            
        }
        #loginIdSpan{
        	
        }        
        .login-pwdDiv{
            width: 100%;
            height: 70px;  
            line-height: 0;          
        }
        .login-pwd{
            width: 262px;
            height: 30px;
            border: none;
            font-size: 15px;
            padding: 20px 20px 20px 18px;
            background: none;
        }
        
        .login-button{
            width: 300px; height: 45px; 
            text-align: center;
            margin: 0 auto;
            background-color: #f56a6a;
            margin-top: 25px;
            border-radius: 7px;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border: none;
            padding: 10px;
            cursor: pointer;
        }
        
        .login-span>a{
        color:gray;
        font-size: 12px;
        text-decoration: none;
        }
		.login-text{
			color: #f56a6a;
			font-weight:bold;
			text-align: center;
			margin-top: -91%;
		}
		#loginIdDiv,#loginPwdDiv{
			position:absolute;
			padding-left: 18px;
		}
		#loginIdDiv{top:31%;}
		#loginPwdDiv{display: inline-block;top:82%;}
    </style>
    <title>login</title>
</head>
<body style="margin: 0 auto;">
   <form>
    <div class="login">
        <div style="width:100%;">
            <div class="login-idDiv">
                <input type="text" placeholder="ID" class="login-id" maxlength="20" id="loginId">
                
            </div>
        </div>
        <div style="width:100%;">
            <div class="login-pwdDiv">
                <input type="password" placeholder="PWD"  class="login-pwd" maxlength="20" id="loginPwd">
                
            </div>
        </div>
        <input type="button" class="login-button" id="loginFormBtn" value="로그인">
        <div style="margin-top: 3px;">
        	<span class="login-span" style="display:inline-block; margin-left: 3px;"><a href="../member/memberWriteForm.jsp">회원가입</a></span>
        	<span class="login-span" style="display:inline-block; float: right; margin-right: 3px;">
        		<a href="#">아이디</a>
        			<span style="color :gray;">/</span>
				<a href="#">비밀번호 찾기</a>
			</span>
        </div>
        <div class="login-text">
    		<span>뜨거운 책방에 오신걸 환영합니다</span>
    	</div>
    	<!--아이디 비밀번호 유효성  -->
    	<div id="loginIdDiv"></div>
    	<div id="loginPwdDiv"></div>
    </div>   

    </form>
</body>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$('#loginFormBtn').click(function(){
	$('#loginIdDiv').empty();
	$('#loginPwdDiv').empty();
	
	if($('#loginId').val()==''){
		$('#loginIdDiv').text('아이디를 입력')
						.css('color','#f56a6a')
						.css('font-size','8pt')
						.css('font-weight','bold');
		
	}else if($('#loginPwd').val()==''){
		$('#loginPwdDiv').text('비밀번호를 입력')
						.css('color','#f56a6a')
						.css('font-size','8pt')
						.css('font-weight','bold');
	
	}
});
</script>
</html>