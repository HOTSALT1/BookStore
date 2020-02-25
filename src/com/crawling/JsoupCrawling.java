package com.crawling;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class JsoupCrawling {
	
	public static void main(String[] args) {
		// Jsoup를 이용해서 크롤링
		JsoupCrawling j = new JsoupCrawling();
		
		String mainUrl = "http://www.yes24.com";
		String url = "http://www.yes24.com/24/Category/BestSeller?CategoryNumber=001&sumgb=06"; //크롤링할 url지정
		Document doc = j.getDoc(url);        //Document에는 페이지의 전체 소스가 저장된다

		//select를 이용하여 원하는 태그를 선택한다. select는 원하는 값을 가져오기 위한 중요한 기능이다.
		Elements element = doc.select("td.goodsTxtInfo");    

		

		//Iterator을 사용하여 하나씩 값 가져오기
		Iterator<Element> ie1 = element.iterator();
		
		Pattern p = Pattern.compile("^[0-9]+원$");
		while(ie1.hasNext()) {
			Elements item = ie1.next().select("a");
//			System.out.println("============================================================");
			String p_url = item.first().attr("href");
			Document doc2 = j.getDoc(mainUrl + p_url);
			
			String name = doc2.selectFirst(".gd_name").text();
			String subName = doc2.selectFirst(".gd_nameE") != null ? doc2.selectFirst(".gd_nameE").text() : ""; 
			String author = doc2.selectFirst(".gd_auth").text();
			String pub = doc2.selectFirst(".gd_pub").text(); 
//			int price = Integer.parseInt(doc2.selectFirst(".gd_infoTbArea").attr("name", "Goods_Price").text());
			String price = doc2.selectFirst(".gd_infoTbArea").attr("name", "Goods_Price").text();
			
			System.out.println(doc2.selectFirst(".tb_nor").text());
			
			
			List<String> item_d = doc2.selectFirst(".tb_nor").select(".lastCol").eachText();
			String p_date = item_d.get(0);
			String detail = item_d.get(1);
			String isbn13 = item_d.get(2);
			String isbn10 = item_d.get(3);
			
			String info = doc2.selectFirst(".infoWrap_txtInner .txtContentText").html();
			String index = doc2.selectFirst(".infoWrap_txt .txtContentText").html();
			String contentImg = doc2.selectFirst(".infoSetCont_wrap .infoWrap_txt").html();
			
			String[] ar = doc2.selectFirst(".lnk_author").attr("href").split("/");
			String authorId = ar[ar.length-1];
			//int authorId = Integer.parseInt(ar[ar.length-1]);
			
			TempBookDTO dto = new TempBookDTO(name, subName, author, pub, price, p_date, detail, isbn13, isbn10, info, index, contentImg, authorId, "");
			System.out.println(dto);
			
			System.out.println("============================================================");
		}
		
		
//		System.out.println(element.select("p").html());
//		System.out.println(element.select("p").next().html());
		
		
	}
	
	public Document getDoc(String url) {
		Document doc = null;        //Document에는 페이지의 전체 소스가 저장된다
		try {
			doc = Jsoup.connect(url).get();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return doc;
	}
}
