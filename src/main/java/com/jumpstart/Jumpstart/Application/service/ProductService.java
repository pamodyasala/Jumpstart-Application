package com.jumpstart.Jumpstart.Application.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jumpstart.Jumpstart.Application.bean.Product;
import com.jumpstart.Jumpstart.Application.dao.ProductRepository;

@Service
@Transactional
public class ProductService {

	@Autowired
	ProductRepository productrepo;
	
	public List<Product> getAllCars() {
        return productrepo.findAll();
    }
    
    //used for both update and Save Car
    public void saveProduct(Product product) {
       productrepo.save(product);
    }
    
	public Product get(Long id) {
		return productrepo.findById(id).get();
	}

	
	public void delete(Long id) {
		productrepo.deleteById(id);
	}
}
