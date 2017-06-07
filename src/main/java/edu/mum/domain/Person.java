package edu.mum.domain;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Person {
	private int ssn;
	private String firstName;
	private String lastName;
	private int age;
	
	public Person(){
		
	}
	
	

	public Person(int ssn, String firstName, String lastName, int age) {	
		this.ssn = ssn;
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
	}



	public int getSsn() {
		return ssn;
	}

	public void setSsn(int ssn) {
		this.ssn = ssn;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	

}
