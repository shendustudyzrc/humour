package com.domain;

import java.io.Serializable;

//总统的幽默
public class Quote implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final int Page_size=6;
	private int id;
    private String name;
    private String content;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
