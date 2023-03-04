package com.kitchenstory.service;

import java.util.List;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.kitchenstory.dao.ProductDAO;
import com.kitchenstory.entity.Product;

@Component
public class ProductService {

	 @Autowired
	 private ProductDAO productDAO;


		@Transactional
		public Product getProductById(long id) {
			return productDAO.getProductById(id);
		}
		
		
		@Transactional
		public void updateProduct(Product product) {
			productDAO.updateProduct(product);
		}
		

		@Transactional
		public void deleteProduct(long id) {
			productDAO.deleteProduct(id);
		}

		@Transactional
		public List<Product> getAllProducts() {
			System.out.println("Entered productService");
			return productDAO.getAllProducts();
		}
		@Transactional
		public List<Product> getProductByItemName(String iName)
		{
			return productDAO.getProductByItemName(iName);
		}
	 
		@Transactional
		public List<Object> getAllProductsWithJoin() {
			return productDAO.getAllProductsWithJoin();
		}
	 		
}


