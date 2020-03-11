<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 - 전체 상품 목록</title>
<style>
th{color:white}
</style>
</head>
<body>

	<h2>관리자 - 전체 상품 목록</h2>
<%-- 	<%@ include file="admin_top.jsp"%>
 --%>
	<table style="width: 80%">
		<tr style="background-color: #f56a6a">
			<th>번호</th>
			<th>도서명</th>
			<th>저자명</th>
			<th>출판사</th>
			<th>재고량</th>
			<th>정가</th>
			<th>판매가</th>
			<th>등록일/수정일</th>
		</tr>

		<%-- <%
			ArrayList<ProductDto> list = productmanager.getProductAll();

			if (list.size() == 0) {
		%>

		<tr>
			<td colspan="6">등록된 상품이 없습니다.</td>
		</tr>

		<%
			} else {

				for (ProductDto dto : list) {
		%>

		<tr>

			<td><%=dto.getNo()%></td>

			<td><%=dto.getName()%></td>

			<td><%=dto.getPrice()%></td>

			<td><%=dto.getSdate()%></td>

			<td><%=dto.getStock()%></td>

			<td><a
				href="javascript:productDetail_admin('<%=dto.getNo()%>')">상세보기</a></td>

		</tr>

		<%
			}

			}
		%> --%>

		<tr>

			<td colspan="8"><a href="product_insert.jsp">[ 상품등록 ]</a></td>

		</tr>

	</table>

	<%-- <%@ include file="admin_bottom.jsp"%>

	<form action="productdetail_admin.jsp" name="detailFrm" method="post">

		<input type="hidden" name="no">
 --%>
	</form>

</body>

</html>


