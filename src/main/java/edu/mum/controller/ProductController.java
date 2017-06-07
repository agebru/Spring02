package edu.mum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.mum.domain.Product;
import edu.mum.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="/products",method=RequestMethod.GET)
	public String findProductForm(@ModelAttribute("newProduct") Product product,Model model){
		
		
		return "ProductsForm";
	}
	
	@RequestMapping(value="/products",method=RequestMethod.POST)
	public String ProcessProductsForm(@ModelAttribute("newProduct") Product p,Model model,RedirectAttributes attr){
		 productService.save(p);
		 attr.addFlashAttribute(p);
		
		return "redirect:/showProducts";
	}
	
	@RequestMapping(value="/showProducts")
	public String ShowProducts(Model model){
		
		model.addAttribute("productList", productService.findAll());
		return "ProductsList";
	}

}
