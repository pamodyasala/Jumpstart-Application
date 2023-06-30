package com.jumpstart.Jumpstart.Application.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;


import com.jumpstart.Jumpstart.Application.bean.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

	
}
