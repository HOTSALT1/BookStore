package com.hotSalt.dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;

public class OrderDAO {
	
	private static OrderDAO instance;
	
	public OrderDAO() {
		try {
			Reader reader = Resources.getResourceAsReader("mybatis-config-order.xml");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static OrderDAO getInstance() {
		synchronized (OrderDAO.class) {
			if(instance!=null) return instance;
			return new OrderDAO();
		}
	}
	
	
}
