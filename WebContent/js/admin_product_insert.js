$('#productInsertBtn').click(function(){
	/*$('#nameDiv').empty();
	$('#authorDiv').empty();
	$('#publisherDiv').empty();
	$('#publicationDateDiv').empty();
	$('#ISBN10Div').empty();
	$('#ISBN13Div').empty();
	$('#pagesDiv').empty();
	$('#weightDiv').empty();
	$('#sizeDiv').empty();
	$('#seriesDiv').empty();
	$('#fixedPriceDiv').empty();
	$('#sellingPriceDiv').empty();
	$('#stockDiv').empty();
	$('#mileageDiv').empty();
	$('#bookInfoDiv').empty();
	$('#bookIndexDiv').empty();
	$('#authorInfoDiv').empty();
	$('#authorbooksDiv').empty();
	$('#imageDiv').empty();
	$('#bookDetailImage').empty();
	
	if($('#name').val()==''){
		$('#nameDiv').text('도서명을 입력하세요')
		$('#nameDiv').css('color','red')
		$('#nameDiv').css('font-size','8pt')
		$('#nameDiv').css('font-weight','bold')
	
	}else if($('#author').val()==''){
		$('#authorDiv').text('저자명을 입력하세요')
		$('#authorDiv').css('color','red')
		$('#authorDiv').css('font-size','8pt')
		$('#authorDiv').css('font-weight','bold')
		
	}else if($('#publisher').val()==''){
		$('#publisherDiv').text('출판사를 입력하세요')
		$('#publisherDiv').css('color','red')
		$('#publisherDiv').css('font-size','8pt')
		$('#publisherDiv').css('font-weight','bold')
		
	}else if($('#publicationDate').val()){
		$('#publicationDateDiv').text('비밀번호가 일치하지 않습니다')
		$('#publicationDateDiv').css('color','red')
		$('#publicationDateDiv').css('font-size','8pt')
		$('#publicationDateDiv').css('font-weight','bold')*/
	
	let chk = true;
	$('#table1 td div').empty();
	$('#table1 .required').each(function() {
		if($(this).val()==''){
							
				$(this).next().text('필수 입력항목이 누락되었습니다(' + $(this).parent().prev().text() + ').').css('color', 'red').css('font-size','8pt').css('font-weight','bold')
				chk = false;
				return false;
			
		}
	})
	
	if(chk) 
		$('form[name=productForm]').submit();
	
	/*}else if($('#id').val() != $('#check').val()){
		$('#idDiv').text('중복체크 하세요')
		$('#idDiv').css('color','red')
		$('#idDiv').css('font-size','8pt')
		$('#idDiv').css('font-weight','bold')
	}else if($('#id').val() != $('#check').val()){
		$('#idDiv').text('중복체크 하세요')
		$('#idDiv').css('color','red')
		$('#idDiv').css('font-size','8pt')
		$('#idDiv').css('font-weight','bold')
	}else if($('#id').val() != $('#check').val()){
		$('#idDiv').text('중복체크 하세요')
		$('#idDiv').css('color','red')
		$('#idDiv').css('font-size','8pt')
		$('#idDiv').css('font-weight','bold')
	}else if($('#id').val() != $('#check').val()){
		$('#idDiv').text('중복체크 하세요')
		$('#idDiv').css('color','red')
		$('#idDiv').css('font-size','8pt')
		$('#idDiv').css('font-weight','bold')
	}else if($('#id').val() != $('#check').val()){
		$('#idDiv').text('중복체크 하세요')
		$('#idDiv').css('color','red')
		$('#idDiv').css('font-size','8pt')
		$('#idDiv').css('font-weight','bold')*/

	/*}else
		$('form[name=productForm]').submit();*/
		
});
