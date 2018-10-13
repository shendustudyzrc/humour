package com.domain;

import java.io.Serializable;

public class Big_Category implements Serializable{
	private static final long serialVersionUID = 1L; 
	
	private long id;          //大类id
     private  String classes;  //大类名称
     
    public  Big_Category(){}
    
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
    
    
	
}
