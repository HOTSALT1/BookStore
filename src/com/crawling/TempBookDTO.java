package com.crawling;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Setter
@Getter
public class TempBookDTO {

	private String name;
	private String subName;
	private String author;
	private String pub;
	private int price;
	private String p_date; 
	private String detail; 
	private String isbn13;
	private String isbn10;
	private String info;
	private String index;
	private String contentImg;
	private String authorId;
	private String mainImg;
	
	public TempBookDTO() {
	}
	
	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("책 제목: " + this.name + "\n");
		sb.append("부제목: " + this.subName + "\n");
		sb.append("저자: " + this.author + "\n");
		sb.append("출판사: " + this.pub + "\n");
		sb.append("가격: " + this.price + "\n");
		sb.append("출판일: " + this.p_date + "\n");
		sb.append("상세: " + this.detail + "\n");
		sb.append("isbn13: " + this.isbn13 + "\n");
		sb.append("isbn10: " + this.isbn10 + "\n");
		sb.append("책 소개: " + this.info + "\n");
		sb.append("목차: " + this.index + "\n");
		sb.append("상세이미지: " + this.contentImg + "\n");
		sb.append("저자idx: " + this.authorId + "\n");
		sb.append("메인이미지: " + this.mainImg + "\n");
		
		return sb.toString();
	}

}
