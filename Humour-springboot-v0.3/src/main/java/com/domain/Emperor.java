package com.domain;

import java.io.Serializable;

//皇帝的幽默
public class Emperor implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final int Page_size=6;
	private int id;
    private String name;
    private String story;
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
	public String getStory() {
		return story;
	}
	public void setStory(String story) {
		this.story = story;
	}
    
}
