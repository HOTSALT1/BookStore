package com.hotSalt.bean;

import java.util.Date;
import java.util.List;
import java.util.Map;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderDTO {
	private int seq;			//주문번호
	private String memId;		//회원ID
	private String name;		//회원 이름 또는 주문자 이름
	
	private List<Map<String, Integer>> list;
	
	private int price;			//상품 총 금액
	private int delivery;		//배송비
	private int totalPrice;		//총 결제금액
	
	private 
	private Date orderDate;
}
