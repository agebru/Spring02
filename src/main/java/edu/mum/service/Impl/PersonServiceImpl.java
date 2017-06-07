package edu.mum.service.Impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import edu.mum.domain.Person;
import edu.mum.service.PersonService;

@Service
public class PersonServiceImpl implements PersonService {
	private List<Person> people=new ArrayList<Person>();
	
	public PersonServiceImpl(){
		Person p1=new Person(112,"Amanuel","Kahsay",28);
		Person p2=new Person(113,"Belay","Kebede",34);
		Person p3=new Person(110,"Melat","Mikre",21);
		Person p4=new Person(115,"Berhane","Kahsay",35);
		Person p5=new Person(119,"Hagos","Berihu",20);
		Person p6=new Person(130,"Kidan","Mogess",30);
		
		people.add(p1);
		people.add(p2);
		people.add(p3);
		people.add(p4);
		people.add(p5);
		people.add(p6);
	}

	@Override
	public void save(Person person) {
		people.add(person);
	}

	@Override
	public List<Person> findAll() {
		return people;
	}

	@Override
	public List<Person> SearchPersonByssn(int ssn) {
		List<Person> persons=new ArrayList<Person>();
		for(Person p:people){
			if(p.getSsn()==ssn){
				persons.add(p);
			}
		}
		return persons;
	}

}
