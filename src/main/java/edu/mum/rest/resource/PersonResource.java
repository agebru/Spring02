package edu.mum.rest.resource;


import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;

import edu.mum.domain.Person;
import edu.mum.service.PersonService;
import edu.mum.service.Impl.PersonServiceImpl;





@Path("/persons")
public class PersonResource {
	//  @Autowired
	//private PersonService personService;
	PersonServiceImpl ii=new PersonServiceImpl();
	/*
	@GET	
	@Produces(MediaType.TEXT_PLAIN)
	public String Hello(){
		return "hi there";
	}*/
	
	
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Person> showAll(){
		return ii.findAll();
	}
	
	@Path("/{ssn}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Person> findPersonByName(@PathParam("ssn") int ssn){
		return ii.SearchPersonByssn(ssn);
	}
	
	
	

}
