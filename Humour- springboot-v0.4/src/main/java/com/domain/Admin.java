package com.domain;

import java.io.Serializable;

//管理员
public class Admin implements Serializable {
  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
  private int id;
  private String username;
  private String password;
  private String rule;
  public int getId() {
	return id;
  }
  public void setId(int id) {
	this.id = id;
  }
public String getUSerName() {
	return username;
}
public void setUserName(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
  }
  public void setPassword(String password) {
	this.password = password;
  }
public String getRule() {
	return rule;
}
public void setRule(String rule) {
	this.rule = rule;
} 
  
}
