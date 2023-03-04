package com.kitchenstory.controller;


import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kitchenstory.entity.*;
import com.kitchenstory.service.*;
 
@Controller
public class HomeController {

	@Autowired
	private ProductService prodService; 
	
	@Autowired
	private CategoryService categoryService; 

	
	  @RequestMapping(value = "/productsearch", method = RequestMethod.POST)
	    public String productsearch(ModelMap map, javax.servlet.http.HttpServletRequest request,
	    		@RequestParam(value="sitem", required=true) String sitem) 
	    {
		  // check if session is still alive
		  HttpSession session = request.getSession();
		  if (session.getAttribute("user_id") == null) {
			  return "login";
		  }
		  
		  List<Product> list;
		  
		  if(sitem!=null)
		  {
			  list = prodService.getProductByItemName(sitem);
			  map.addAttribute("list", list);
		  }
		  else
		  {
			  list = prodService.getAllProducts();
			  map.addAttribute("list", list);
		  }
		  
		  // use MAP to map the category names to product rows
		  HashMap<Long, String> mapCats = new HashMap<Long, String>();
		  if(list!= null)
		  {
			  for(Product product: list) {
					  Category category = categoryService.getCategoryById(product.getCategoryId());
					  if (category != null)
						  mapCats.put(product.getID(), category.getName());
			  }
		  }
		
		  map.addAttribute("mapCats", mapCats);
		  map.addAttribute("pageTitle", "USER SEARCH PRODUCTS");
		  
	      return "index"; 
	    }
	  

	
	  @RequestMapping(value = {"/home"}, method = RequestMethod.GET)
	    public String home(ModelMap map,  javax.servlet.http.HttpServletRequest request) 
	    {
		    HttpSession session = request.getSession();
		    System.out.println("sesssion valid?"+session.getId());
		    
			  if (session.getAttribute("user_id") == null) {
				  return "login";
			  }
			List<Product> list = prodService.getAllProducts();
			
			// use MAP to map the category names to product rows
			 HashMap<Long, String> mapCats = new HashMap<Long, String>();
		     for(Product product: list) {
				  Category category = categoryService.getCategoryById(product.getCategoryId());
				  if (category != null)
					  mapCats.put(product.getID(), category.getName());
			  }
			  
			map.addAttribute("list", list);
			map.addAttribute("mapCats", mapCats);
		    map.addAttribute("pageTitle", "Kitchen Story - HOMEPAGE"); 
	        return "index"; 
	    }	
	  
	  
}
