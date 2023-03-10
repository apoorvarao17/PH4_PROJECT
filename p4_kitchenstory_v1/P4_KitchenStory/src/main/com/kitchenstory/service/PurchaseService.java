package com.kitchenstory.service;


import java.sql.Date;
import java.util.List;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.kitchenstory.dao.PurchaseDAO;
import com.kitchenstory.entity.Purchase;

@Component
public class PurchaseService {

	 @Autowired
	 private PurchaseDAO purchaseDAO;

		@Transactional
		public Purchase getPurchaseById(long id) {
			return purchaseDAO.getPurchaseById(id);
		}
		
		@Transactional
		public List<Purchase> getAllItems() {
			return purchaseDAO.getAllItems();
		}			
		
		@Transactional
		public List<Purchase> getAllItemsByUserId(long userId) {
			return purchaseDAO.getAllItemsByUserId(userId);
		}	
		
		@Transactional
		public List<Purchase> getAllItemsByDate(Date date) {
			return purchaseDAO.getAllItemsByDate(date);
		}	
		@Transactional
		public long  updatePurchase(Purchase purchase) {
			return purchaseDAO.updatePurchase(purchase);
		}
		

		@Transactional
		public void deletePurchase(long id) {
			purchaseDAO.deletePurchase(id);
		}

		public List<Purchase> getAllItemsByCategory(String category) {
			return purchaseDAO.getAllItemsByCategory(category);
		}

	 
}

