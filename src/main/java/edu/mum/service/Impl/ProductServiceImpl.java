package edu.mum.service.Impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;


import edu.mum.domain.Product;
import edu.mum.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	
	private List<Product> products=new ArrayList<Product>();
	
	ProductServiceImpl(){
		Product p1=new Product(11,"TV",230);
		Product p2=new Product(12,"SmartPhone",200);
		Product p3=new Product(13,"Laptop",300);
		Product p4=new Product(14,"Watch",50);
		
		
		products.add(p1);
		products.add(p2);
		products.add(p3);
		products.add(p4);
		
	}
	

	public List<Product> findAll() {
		return products;
	}

	public Product findOne(int productId) {
		Product p=new Product();
		for(Product pr:products){
			if(pr.getId()==productId){
				p=pr;
			}
		}
		return p;
	}

	public void save(Product p) {
		
      products.add(p);
	}


	
}
