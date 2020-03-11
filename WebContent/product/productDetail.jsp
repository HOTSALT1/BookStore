<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 상세페이지</title>
</head>
<style>
     #star_grade a{
        text-decoration: none;
        color: gray;
    }
    #star_grade a.on{
        color: red;
    }
</style>

<body>
	<h2>** 책 상세페이지 **</h2>
	<form action="cartprocess.jsp">
		<table>
			<tr>
				<td>
					<img src="product.jpg" width="80%">
				</td>
				<td>
					<table>
							<input type="hidden" name="product_no" value="dto.getNo() %>">
						<tr>
							<td>책 제목 : </td>
							<td>dto.getName() %></td>
						</tr>
						<tr>
							<td>저자명 : </td>
							<td>dto.getAuthor() %> | </td>
						
							<td>출판사 : </td>
							<td>dto.getPublisher() %> | </td>
						
							<td>출판일 : </td>
							<td>dto.getPublicationDay() %> | </td>
						</tr>
						<tr id="star_grade">
							<td>
							<a href="#">★</a>
        					<a href="#">★</a>
        					<a href="#">★</a>
        					<a href="#">★</a>
        					<a href="#">★</a></td>
						</tr>
						<tr>
							<td>정가 : </td>
							<td>dto.getFixedPrice() %></td>
						</tr>
						<tr>
							<td>판매가 : </td>
							<td>dto.getSellingPrice() %></td>
						</tr>
						<tr>
							<td>주문 수 : </td>
							<td>
								<input type="text" name="quantity" value="1" size="5" style="text-align: center;">
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="text-align: center;">
					<input type="submit" value="장바구니에 담기">
					<input type="button" value="바로 구매">
					<input type="button" value="이전으로 이동" onclick="history.back()">
				</td>
			</tr>
			<tr>
			<td style="width: 30%; vertical-align: top;">
					<b>* 상품 설명 *</b><br/>
					dto.getDetail() %>
				</td>
			</tr>
			</table>
			<div>
				<b>* 책소개  *</b><br/>
			</div>
			<div>
				<b>*상세페이지*</b><br/>
			</div>
			<div>
				<b>*목차*</b><br/>
			</div>
			<div>
				<b>*저자소개*</b><br/>
			</div>
			<div>
				<b>*같은 저자의 다른 책</b><br/>
			</div>
			<div>
				<b>*해당 책 리뷰 목록*</b><br/>
				<p id="star_grade">
							<a href="#">★</a>
        					<a href="#">★</a>
        					<a href="#">★</a>
        					<a href="#">★</a>
        					<a href="#">★</a>
						</p>
			</div>
	</form>
</body>
<script>
        $('#star_grade a').click(function(){
            $(this).parent().children("a").removeClass("on");  
            $(this).addClass("on").prevAll("a").addClass("on"); 
            return false;
        });
</script>

</html>