<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품보기</title>
<link href="../css/style.css" rel="style/sheet" type="text/css">
<script type="text/javascript" src="../js/script.js?ver=0.3"></script>
</head>
<body>

	<h2>** 상품 상세 보기 **</h2>
	<%-- <%@ include file="admin_top.jsp"%> --%>
	<table style="width: 80%">
		<tr>

			<td style="width: 20%"><img src="../images/product/product1"
				style="width: 100%"></td>
			<td style="width: 50%; vertical-align: top;">
				<table style="width: 100%">
					<tr>
						<td>도서 번호 :</td>
						<td></td>
					</tr>

					<tr>
						<th colspan="2">상품 필수정보</th>
					</tr>

					<tr>
						<td style="width: 20%">도서명</td>
					</tr>

					<tr>
						<td style="width: 20%">저자명</td>
					</tr>

					<tr>
						<td style="width: 20%">출판사</td>
						<td></td>
					</tr>
					<tr>
						<td style="width: 20%">출간일</td>
						<td></td>
					</tr>

					<tr>
						<td style="width: 20%">쪽수</td>
						<td></td>

					</tr>
					<tr>
						<td style="width: 20%">무게</td>
						<td></td>
					</tr>
					<tr>
						<td style="width: 20%">크기</td>
						<td></td>
					</tr>

					<tr>
						<td style="width: 20%">제품구성</td>
						<td></td>
					</tr>


					<tr>
						<td style="width: 20%">정가</td>
						<td></td>
					</tr>
					<tr>
						<td style="width: 20%">판매가</td>
						<td></td>
					</tr>
					<tr>
						<td>재고량</td>
						<td></td>
					</tr>

					<tr>
						<td>적립금</td>
						<td></td>
					</tr>

					<tr>
						<td>수량</td>
						<td></td>
					</tr>

					<tr>
						<th colspan="2">상품설명</th>
					</tr>

					<tr>
						<td style="width: 20%">책소개</td>
						<td></td>
					</tr>


					<tr>
						<td style="width: 20%">목차</td>
						<td></td>
					</tr>
					<tr>
						<td style="width: 20%">저자소개</td>
						<td></td>
					</tr>

					<tr>
						<td style="width: 20%">같은 저자의 다른 책</td>
						<td></td>
					</tr>

					<tr>
						<td style="width: 20%">책 상세페이지</td>
						<td></td>
					</tr>


					<tr>
				</table>

			</td>
		</tr>

		<tr>
			<td colspan="3" style="text-align: center;"><a href="">수정하기</a>&nbsp;&nbsp;
				<a href="">삭제하기</a></td>
		</tr>
	</table>

	<%-- <%@ include file="admin_bottom.jsp"%> --%>
	<input type="hidden" name="no">



</body>
</html>
