package edu.mum.service;

import java.util.List;


import edu.mum.domain.Product;

public interface ProductService {
	
public List<Product>findAll();
public Product findOne(int productId);
public void save(Product p);


}
