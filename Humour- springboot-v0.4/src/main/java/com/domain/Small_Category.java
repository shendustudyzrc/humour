package com.domain;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "small_category")
@Data  //lombok的注解
public class Small_Category implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private long id;//小商品类别id
	private String classes;//小商品类别名称
    private long big_id;
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

	public long getBig_id() {
		return big_id;
	}

	public void setBig_id(long big_id) {
		this.big_id = big_id;
	}

	public Big_Category getBig_category() {
		return big_category;
	}

	public void setBig_category(Big_Category big_category) {
		this.big_category = big_category;
	}
}
