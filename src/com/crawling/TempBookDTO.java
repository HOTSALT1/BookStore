package com.crawling;

public class TempBookDTO {

	private String name;
	private String subName;
	private String author;
	private String pub;
	private String price;
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
	
	public TempBookDTO(String name, String subName, String author, String pub, String price, String p_date,
			String detail, String isbn13, String isbn10, String info, String index, String contentImg, String authorId,
			String mainImg) {
		super();
		this.name = name;
		this.subName = subName;
		this.author = author;
		this.pub = pub;
		this.price = price;
		this.p_date = p_date;
		this.detail = detail;
		this.isbn13 = isbn13;
		this.isbn10 = isbn10;
		this.info = info;
		this.index = index;
		this.contentImg = contentImg;
		this.authorId = authorId;
		this.mainImg = mainImg;
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

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubName() {
		return subName;
	}
	public void setSubName(String subName) {
		this.subName = subName;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPub() {
		return pub;
	}
	public void setPub(String pub) {
		this.pub = pub;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getP_date() {
		return p_date;
	}
	public void setP_date(String p_date) {
		this.p_date = p_date;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getIsbn13() {
		return isbn13;
	}
	public void setIsbn13(String isbn13) {
		this.isbn13 = isbn13;
	}
	public String getIsbn10() {
		return isbn10;
	}
	public void setIsbn10(String isbn10) {
		this.isbn10 = isbn10;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getIndex() {
		return index;
	}
	public void setIndex(String index) {
		this.index = index;
	}
	public String getContentImg() {
		return contentImg;
	}
	public void setContentImg(String contentImg) {
		this.contentImg = contentImg;
	}
	public String getAuthorId() {
		return authorId;
	}
	public void setAuthorId(String authorId) {
		this.authorId = authorId;
	}
	public String getMainImg() {
		return mainImg;
	}
	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}
}
