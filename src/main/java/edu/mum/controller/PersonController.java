package edu.mum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PersonController {
	
	@RequestMapping(value="/searchPerson",method=RequestMethod.GET)
	public String searchPerson(){
		
		return "PersonAjaxSearch";
	}

}
