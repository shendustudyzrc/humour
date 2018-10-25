package com.domain;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
@Entity
@Table(name = "big_category")
@Data  //lombok的注解
public class Big_Category implements Serializable{
	private static final long serialVersionUID = 1L; 
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private long id;          //大类id
     private  String classes;  //大类名称
     @JsonIgnore
// 	@ApiModelProperty(value = "模板类型包含的模板")
     @OneToMany(targetEntity = Small_Category.class,mappedBy="big_id")
 	private Set<Small_Category> small_category;
    
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

	public Set<Small_Category> getSmall_category() {
		return small_category;
	}

	public void setSmall_category(Set<Small_Category> small_category) {
		this.small_category = small_category;
	}  
    
}
