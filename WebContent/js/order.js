/*전체 상품 체크박스 값 변경시*/
function chkAll() {
	var chkboxes = document.querySelectorAll("input[type='checkbox']")
	for(let i = 0; i < chkboxes.length; i++){
		chkboxes[i].checked = document.getElementById('chkAll').checked;
	}
	reCalc();
}

/*개별 상품 체크박스 값 변경시*/
function chkOne() {
	var chkboxes = document.querySelectorAll("input[type='checkbox']:not(#chkAll)")
	var result = true;
	for(let i = 0; i < chkboxes
	.length; i++){
		if(!chkboxes[i].checked){
			result = false;
			break;
		};
	}
	document.getElementById('chkAll').checked = result;
}

/*상품 변경 또는 상품 수량 변경시 금액 재계산*/
function reCalc(){
	let id;
	let total = 0;
	let chkBoxes = document.getElementsByName('chk');
	for(let i = 0; i < chkBoxes.length; i++){
		
		id = chkBoxes[i].getAttribute("id").split("chk")[1];
		
		let price = document.getElementById("p_price" + id).value;
		let qty = document.getElementById("p_qty" + id).value;
		let e_price = document.getElementById("td-total_price" + id);
		
		let calcedPrice = price * qty;
		
		//개별 상품 금액
		e_price.innerHTML = setComma(calcedPrice) + "원";
		
		if(chkBoxes[i].checked){
			total = total + calcedPrice;
		}
	}
	//총 주문 금액
	document.getElementById("totalAmount").innerHTML = setComma(total);
	document.getElementById("hidden-t_price").innerHTML = total;
	
	//전체 체크박스 수정 
	chkOne();
}

/*숫자에 천단위 구분기호(,) 표시*/
function setComma ( value ){
	
    if (value == null || value == ""){
        return value;
    }
    
    // 소수점 분리
    var valueArr = value.toString().split(".");
    
    var str = valueArr[0].toString();
        str = str.replace ( /,/g ,'' );
    var retValue = "";
 
    for( var i = 1; i <= str.length; i++ ) {
        if ( i > 1 && ( i % 3 ) == 1 )
            retValue = str.charAt ( str.length - i ) + "," + retValue;
        else
            retValue = str.charAt ( str.length - i ) + retValue;
    }
 
    return retValue + (valueArr.length > 1 ? "." + valueArr[1] : "");
}

/*원하는 위치로 스크롤*/
function fnMove(id){
    var offset = $('#'+id).offset();
    $('html, body').animate({scrollTop : offset.top}, 400);
}
