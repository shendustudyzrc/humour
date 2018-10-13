package com.domain;

import java.io.Serializable;

public class Picture implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final int Page_size=6;
    private int id;
    private String title;
    private String picturePath;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPicturePath() {
		return picturePath;
	}
	public void setPicturePath(String picturePath) {
		this.picturePath = picturePath;
	}
}
