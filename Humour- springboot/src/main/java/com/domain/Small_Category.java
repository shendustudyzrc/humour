package com.domain;

import java.io.Serializable;


public class Small_Category implements Serializable{
	private static final long serialVersionUID = 1L;
	private long id;//小商品类别id
	private String classes;//小商品类别名称
	private Big_Category big_category;//小商品对应大商品的id
	
	public Small_Category() {
		// TODO Auto-generated constructor stub
	}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	public Big_Category getBig_category() {
		return big_category;
	}
	public void setBig_category(Big_Category big_category) {
		this.big_category = big_category;
	}
	

}
