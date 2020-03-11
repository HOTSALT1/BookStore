<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../css/order.css" />

<table id="table-cart" class="order-mainTable">
	<thead>
		<tr>
			<td class="w20px"><input type="checkbox" name="" id="chkAll" checked onclick="chkAll()"/></td>
			<td class="w500px">상품명</td>
			<td class="w100px">정가</td>
			<td class="w100px">할인가</td>
			<td class="w50px">수량</td>
			<td class="w150px">합계</td>
			<td class="w100px">주문</td>
		</tr>
	</thead>
	<tbody>
	<!-- 카트에 담긴 상품 리스트 시작  -->
		<tr>
			<td class="w20px"><input type="checkbox" name="chk" id="chk1" checked onchange="reCalc()"/></td>
			<td class="w500px v-middle">
				<div class="v-middle" style="float:left;">
				<img src="https://secimage.yes24.com/Goods/84659792/70x0" alt="상품 이미지"  />
				</div>
				<div class="v-middle" style="float:left;line-height:80px;">
				<a class="" href="javascript:void(0)">
					상품명1
				</a>
				</div>
			</td>
			<td class="txt-center">10,000원</td>
			<td id="td-p_price2" class="txt-center"><input type="hidden" id="p_price1" value="9000" /> 9,000원</td>
			<td class="txt-center">
				<input class="w30px txt-center" type="text" name="" id="p_qty1" value="1"/>
				<br /><a href="#none" class="order-bw" onclick="reCalc()">변경</a>
			</td>
			<td id="td-total_price1" class="txt-center">9,000원</td>
			<td class="txt-center">
				<a class="order-bw cart-cartSelected" href="javascript:void(0)">주문하기</a>
				<a class="order-bw cart-removeSelected" href="javascript:void(0)">삭제</a>
			</td>
		</tr>
		
		<tr>
			<td class="w20px"><input type="checkbox" name="chk" id="chk2" checked onchange="reCalc()"/></td>
			<td class="w500px v-middle">
				<div class="v-middle" style="float:left;">
				<img src="https://secimage.yes24.com/Goods/84659792/70x0" alt="상품 이미지"  />
				</div>
				<div class="v-middle" style="float:left;line-height:80px;">
				<a class="" href="#none">
					상품명2
				</a>
				</div>
			</td>
			<td class="txt-center">10,000원</td>
			<td id="td-p_price2" class="txt-center"><input type="hidden" id="p_price2" value="7000" /> 7,000원</td>
			<td class="txt-center">
				<input class="w30px txt-center" type="text" name="" id="p_qty2" value="2"/>
				<br /><a href="#none" class="order-bw" onclick="reCalc()">변경</a>
			</td>
			<td id="td-total_price2" class="txt-center">9,000원</td>
			<td class="txt-center">
				<a class="order-bw cart-cartSelected" href="javascript:void(0)">주문하기</a>
				<a class="order-bw cart-removeSelected" href="javascript:void(0)">삭제</a>
			</td>
		</tr>
	<!-- 카트에 담긴 상품 리스트 끝  -->
	</tbody>
	<tfoot>
		<tr>
			<td class="txt-right" colspan="7"><input type="hidden" id="hidden-t_price" value="9000" />
			상품 총 금액: <span id="totalAmount">???</span>원 | 포인트 적립액 <span id="totalPoint">???</span>원</td>
		</tr>
	</tfoot>
</table>

<div id="cart-div-btn" class="txt-center">
<input type="button" value="회원 주문" />
<input type="button" value="비회원 주문" />
</div>
<script type="text/javascript" src="../js/order.js"></script>
<script type="text/javascript">
	window.ready = reCalc();
</script>