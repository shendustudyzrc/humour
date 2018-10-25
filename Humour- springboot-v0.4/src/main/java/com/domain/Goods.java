package com.domain;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

/**
 *商品详情表的实体类
 *
 */
@Entity
@Table(name = "goods")
@Data  //lombok的注解
public class Goods implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private long id;//商品的id
	private Small_Category small_category; //商品小类别的id
	private String name; //商品的名字
	private long basic_price; //商品的基本价格
	private String describes; //商品的描述
	private long count;    //商品剩余数量
	private double discount;//商品的折扣
	private String gender;  //商品的男或女款式
	private String main_path; //商品封面图片路径
	private long sales;//商品销量
	private long point;//购买商品获得的积分
	private String begin;//商品促销开始时间
	private String end;//商品促销结束时间
	private long minus_point;//兑换该商品需要的积分
	
	public long getPoint() {
		return point;
	}

	public void setPoint(long point) {
		this.point = point;
	}

	public String getBegin() {
		return begin;
	}

	public void setBegin(String begin) {
		this.begin = begin;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

	public long getMinus_point() {
		return minus_point;
	}

	public void setMinus_point(long minus_point) {
		this.minus_point = minus_point;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getMain_path() {
		return main_path;
	}

	public void setMain_path(String main_path) {
		this.main_path = main_path;
	}

	public long getSales() {
		return sales;
	}

	public void setSales(long sales) {
		this.sales = sales;
	}

	public Goods() {
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Small_Category getSmall_category() {
		return small_category;
	}

	public void setSmall_category(Small_Category small_category) {
		this.small_category = small_category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getBasic_price() {
		return basic_price;
	}

	public void setBasic_price(long basic_price) {
		this.basic_price = basic_price;
	}

	public String getDescribes() {
		return describes;
	}

	public void setDescribes(String describes) {
		this.describes = describes;
	}

	public long getCount() {
		return count;
	}

	public void setCount(long count) {
		this.count = count;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	

}
