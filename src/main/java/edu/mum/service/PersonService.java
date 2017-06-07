package edu.mum.service;

import java.util.List;

import edu.mum.domain.Person;


public interface PersonService {
	public void save(Person person);
	public List<Person> findAll();
	public List<Person> SearchPersonByssn(int ssn);

}
