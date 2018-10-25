package com.dao;

import org.springframework.data.repository.CrudRepository;

import com.domain.Small_Category;

public interface UserDao extends CrudRepository<Small_Category, Long>{

}
