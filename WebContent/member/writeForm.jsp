<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<style type="text/css">
       .headTop{
           display: inline-block;
           font-weight: bold;
           font-size: 16px;
           color: #f56a6a; 
           margin: 12px 0 12px 5px;
       }
       .div1{
           position: absolute;
           left: 50%;
           margin-left: -340px;
           width: 680px;
           border-radius: 7px;
       }
       .div3,.divName,.divBirth{
           border : 1px solid #c5c5c5;
           padding: 18px 18px 18px 0;
       }
       .divName{border-radius: 7px 7px 0 0;}
       
       label{
           display: inline-block;
           float: left;
           width: 145px;
           font-size: 14px;
           color: gray;
           padding-left: 15px;
       }
       label>span{
           float: right; margin-right: 15px;
           color:#c5c5c5;
           display: 
       }
       #birthYear{width: 40px;}
       #birthMonth{width:26px;}
       #birthDay{width:25px;}
       input{
			border: none; 
			font-size: 13px;
			
		}
       input:focus{outline: none;}
       .div3>span{color: gray;}
       .write-button,.cancel-button{
            width: 140px; height: 40px; 
            text-align: center;
            margin: 0 auto;
            background-color: #f56a6a;
            margin-top: 25px;
            border-radius: 7px;
            color: white;
            font-size: 15px;
            font-weight: bold;
            border: none;
            padding: 10px;
            cursor: pointer;
        }
        
        /* $(this).css("border","1px solid #5D5D5D").css("border-radius", "7px 7px 0 0");
    }); */
        .border-line{border:1px solid #5D5D5D;}
        .border-Tnone{border-top: none;}
        .border-Bnone{border-bottom: none;}
        #check-name{ border:none; margin-top:5px; margin-left:160px;
        }
       
    </style>
    <meta charset="UTF-8">
    <title>ȸ������</title>
</head>
<body style="margin: auto 0;">
    <form>
    <div class="div1">
       <span class="headTop">ȸ������ �Է�</span>
        <div id="con">
            <div class="divName idx1">
                <label>�̸�(*)<span>|</span></label>
                <input type="text" id="name" placeholder="�̸��� �Է��� �ּ���">
                <span id="check-name"></span>
            </div>
            <div class="divBirth border-Tnone idx2">
                <label>�������<span>|</span></label>
                <input type="text" id="birthYear" placeholder="YYYY" maxlength="4"><span style="font-size: 14px; margin: 0 3px 0 1px;">��</span>
                <input type="text" id="birthMonth" placeholder="MM" maxlength="2"><span style="font-size: 14px; margin: 0 3px 0 1px;">��</span>
                <input type="text" id="birthDay" placeholder="DD" maxlength="2"><span style="font-size: 14px; margin: 0 3px 0 1px;">��</span>
                <span id="check-birth"></span>
            </div>
            <div id="gender" class="div3 idx3" style="border-top: none;">
                <label>����(*)<span>|</span></label>
                <input type="radio" name="gender" value="0" checked><span>��</span>
				<input type="radio" name="gender" value="1"><span>��</span>
            </div>
            <div class="div3 border-Tnone idx4">
                <label>���̵�(*)<span>|</span></label>
                <input type="text" id="id">
                <span id="check-id"></span>
            </div>
            <div class="div3 border-Tnone idx5">
                <label>��й�ȣ(*)<span>|</span></label>
                <input type="password" id="pwd">
                <span id="check-pwd"></span>
            </div>
            <div class="div3 border-Tnone idx6" >
                <label>��й�ȣ Ȯ��(*)<span>|</span></label>
                <input type="password" id="repwd">
                <span id="check-repwd"></span>
            </div>
            <div class="div3 border-Tnone idx7" >
                <label>�̸���(*)<span>|</span></label>
                <input type="text" id="mail1">
                <span style="font-size: 14px; margin: 0 3px 0 3px;">@</span>
                <input type="text" id="mail2">
                <span id="check-mail"></span>           
            </div>
            <div class="div3 border-Tnone idx8" style="border-radius: 0 0 7px 7px;">
                <label>�ڵ�����ȣ<span>|</span></label>
                <input type="text" size="5" name="tel1" id="tel1">-
                <input type="text" size="5" name="tel2" id="tel2">-
                <input type="text" size="5" name="tel3" id="tel3">
                <span id="check-tel"></span>
            </div>
            <div class="btn"style="text-align: center;">
                <input type="button" class="write-button" id="write-button" value="ȸ������">&nbsp;
                <input type="button" class="cancel-button" value="���">
            </div>
        </div> 
    </div>
    </form>
</body>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	/* ��Ŀ��, �׵θ����� */
    $('.divName').click(function(){
        $('.divName input').focus();
        /* �ʱ�ȭ  */
        $('#con div:gt(0):not(.check-name):not(.btn), .divName').css("border","1px solid #c5c5c5");
        $('#con div:gt(0)').css('border-top','none');
        /* ���󺯰� */
        $(this).css("border","1px solid #f56a6a").css("border-radius", "7px 7px 0 0");
    });
    
    var activeElement;    
    $('#con div:gt(0):not(:last)').click(function(){
    	/* :not(:last)������ ������ */
        $('.divName').css("border-radius", "7px 7px 0 0");
        $('#con div:gt(0):not(.check-name):not(.btn), .divName').css("border","1px solid #c5c5c5");
        $('#con div:gt(0)').css('border-top','none');
        $(this).prev().css('border-bottom','none');
        $(this).css("border","1px solid #f56a6a");
        
        if($(this).attr('id')!='gender' && activeElement != $(this).attr('class')){
        	/* ������� Ŭ�������� Ŭ���� div�ȿ� ù��° input����  focus�� ����/��find */
        	$(this).find('input:eq(0)').focus();
        }
        activeElement = $(this).attr('class');
    });
    
	/* ��ȿ�� �˻� */
    $('#write-button').click(function(){
    	$('span[id^="check-"]').empty().css('display','none');
     	
    	
    	//if($('#name').val()==''){
    	//if($('input[id=name]').val()==''){
    	if($('#name').val()==''){
    		$('#check-name').text('�̸��� �Է��ϼ���');
    		$('#check-name').css('display','block')
    		$('#check-name').css('color','red')
    		$('#check-name').css('font-size','9pt')
    	
    	//}else if($('input[name=id]').val()==''){
    	}else if($('#id').val()==''){
    		$('#idDiv').text('���̵� �Է��ϼ���')
    		$('#idDiv').css('color','red')
    		$('#idDiv').css('font-size','8pt')
    		$('#idDiv').css('font-weight','bold')
    		
    	}else if($('#pwd').val()==''){
    		$('#pwdDiv').text('��й�ȣ�� �Է��ϼ���')
    		$('#pwdDiv').css('color','red')
    		$('#pwdDiv').css('font-size','8pt')
    		$('#pwdDiv').css('font-weight','bold')
    		
    	}else if($('#pwd').val() != $('#repwd').val()){
    		$('#repwdDiv').text('��й�ȣ�� ��ġ���� �ʽ��ϴ�')
    		$('#repwdDiv').css('color','red')
    		$('#repwdDiv').css('font-size','8pt')
    		$('#repwdDiv').css('font-weight','bold')
    	
    	}else if($('#id').val() != $('#check').val()){
    		$('#idDiv').text('�ߺ�üũ �ϼ���')
    		$('#idDiv').css('color','red')
    		$('#idDiv').css('font-size','8pt')
    		$('#idDiv').css('font-weight','bold')
    	
    	}else
    		$('form[name=writeForm]').submit();
    		
    });
</script>
</html>