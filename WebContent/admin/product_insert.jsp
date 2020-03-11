<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

<body>
	<%-- <%@ include file="admin_top.jsp"%> --%>
	<!-- 파일을 전송하기 위한 enctype -->
	<!-- <form name="productForm" action="product_process.jsp?flag=insert"
		enctype="multipart/form-data" method="post"> -->

	<table id="table1" style="width: 80%">
		<tr>
			<th colspan="2">** 상품 등록 **</th>
		</tr>

		<tr>
			<th colspan="2">상품 필수정보</th>
		</tr>

		<tr>
			<td style="width: 20%">도서명</td>
			<td><input type="text" name="name" id="name" class="required" placeholder="도서명을 입력하세요">
				<div id="nameDiv"></div>
			</td>
		</tr>

		<tr>
			<td style="width: 20%">저자명</td>
			<td><input type="text" name="author" id="author" class="required" placeholder="저자명을 입력하세요">
					<div id="authorDiv"></div>
			</td>
		</tr>

		<tr>
			<td style="width: 20%">출판사</td>
			<td><input type="text" name="publisher" id="publisher" placeholder="출판사를 입력하세요">
					<div id="publisherDiv"></div>
			</td>
		</tr>
		<tr>
			<td style="width: 20%">출간일</td>
			<td><input type="text" name="publicationDate" placeholder="출간일을 입력하세요">		
			<div id="publicationDateDiv"></div>
			</td>
		</tr>
		<tr>
			<td style="width: 20%">ISBN10</td>
			<td><input type="text" name="ISBN10" placeholder="ISBN10">
			<div id="ISBN10Div"></div>
			</td>
		</tr>
		<tr>
			<td style="width: 20%">ISBN13</td>
			<td><input type="text" name="ISBN13" placeholder="ISBN13">
			<div id="ISBN13Div"></div>
			</td>
		</tr>
		<tr>
			<td style="width: 20%">쪽수</td>
			<td><input type="text" name="pages" placeholder="책크기를 입력하세요">
			<div id="pagesDiv"></div>
			</td>

		</tr>
		<tr>
			<td style="width: 20%">무게</td>
			<td><input type="text" name="weight" placeholder="책무게를 입력하세요">
			<div id="weightDiv"></div>
			</td>
		</tr>
		<tr>
			<td style="width: 20%">크기</td>
			<td><input type="text" name="size" placeholder="책크기를 입력하세요">
			<div id="sizeDiv"></div></td>
		</tr>

		<tr>
			<td style="width: 20%">제품구성</td>
			<td><input type="text" name="series"
				placeholder="전집 또는 세트일 경우 낱권 구성, CD등">
				<div id="seriesDiv"></div></td>
		</tr>


		<tr>
			<td style="width: 20%">정가</td>
			<td><input type="text" name="fixedPrice" placeholder="정가를 입력하세요">
			<div id="fixedPriceDiv"></div>
			</td>
		</tr>
		<tr>
			<td style="width: 20%">판매가</td>
			<td><input type="text" name="sellingPrice"
				placeholder="판매가를 입력하세요">
				<div id="sellingPriceDiv"></div>
				</td>
		</tr>
		<tr>
			<td>재고량</td>
			<td><input type="text" name="stock">
			<div id="stockDiv"></div></td>
		</tr>

		<tr>
			<td>적립금</td>
			<td><input type="text" name="mileage" placeholder="적립금 입력하세요">
			
			<div id="mileageDiv"></div></td>
		</tr>

		<tr>
			<th colspan="2">상품설명</th>
		</tr>

		<tr>
			<td style="width: 20%">책소개</td>
			<td><input type="text" name="bookInfo" placeholder="책소개를 입력하세요">
			<div id="bookInfoDiv"></div></td>
		</tr>


		<tr>
			<td style="width: 20%">목차</td>
			<td><input type="text" name="bookIndex" placeholder="목차를 입력하세요">
			<div id="bookIndexDiv"></div></td>
		</tr>
		<tr>
			<td style="width: 20%">저자소개</td>
			<td><input type="text" name="authorInfo" placeholder="저자소개">
			<div id="authorInfoDiv"></div></td>
		</tr>

		<tr>
			<td style="width: 20%">같은 저자의 다른 책</td>
			<td><input type="text" name="authorbooks" placeholder="같은 저자의 다른 책">
			<div id="authorbooksDiv"></div>
			</td>
		</tr>

		<tr>
			<td colspan="2">도서 이미지 설정</td>
		</tr>


		<tr>
			<td>이미지</td>
			<td><img name="preview" src="../images/product/noimage.jpg" style="width: 100%"><br/> 
				<input type="file" name="image" size="30" onchange="filePreview()">
				<div id="imageDiv"></div>
				</td>
		</tr>
		<tr>
			<td style="width: 20%">책 상세페이지</td>
			<td><input type="text" name="bookDetailImage" placeholder="상세페이지">
			<div id="bookDetailImage"></div>
			</td>
		</tr>

		<tr>
			<td colspan="2"><br /> 
			<input type="button" value="상품 등록" id="productInsertBtn" >
			<input type="reset" value="새로 입력" onclick="resetInsertData()">
			</td>

		</tr>
	</table>
	<!-- </form> -->
	<%-- 	<%@ include file="admin_bottom.jsp"%>
 --%>
</body>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/admin_product_insert.js"></script>
</html>
