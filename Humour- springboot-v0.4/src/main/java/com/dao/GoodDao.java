package com.dao;

import org.springframework.data.repository.CrudRepository;

import com.domain.Goods;
public interface GoodDao extends CrudRepository<Goods, Long>{

}
