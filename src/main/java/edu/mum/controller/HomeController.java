package edu.mum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping(value={"/","/welcome"})
	public String welcome(){
		message();
		return "welcome";
	}
	
	
	public void message() {
		System.out.println("Welcome to this Awesome page!  ");
	}

}
