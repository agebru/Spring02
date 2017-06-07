package edu.mum.service.Impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import edu.mum.domain.Book;
import edu.mum.service.BookService;

@Service
public class BookServiceImpl implements BookService {
	
	
	private List<Book> books=new ArrayList<Book>();
	public BookServiceImpl(){
		
		
		
		Book book1=new Book("isbl-123","Java programing","Heglin",230);
		Book book2=new Book("isbl-124","Spring and Hibernate Basics","Joe",120);
		Book book21=new Book("isbl-125","Spring JPA","Joe",165);
		
		Book book33=new Book("isbl-101","REST Web Services","Amanuel",330);
		Book book34=new Book("isbl-102","Angular Js","Amanuel",240);
		Book book35=new Book("isbl-103","Spring MVC 4","Amanuel",310);
		
		Book book4=new Book("isbl-126","Object Oritented programming","Hagos",250);
		Book book5=new Book("isbl-128","C# Book","Hagos",420);
		Book book6=new Book("isbl-130","PHP basics","Hagos",122);
		
		books.add(book1);
		books.add(book2);
		
		books.add(book33);
		books.add(book34);
		books.add(book35);
		
		books.add(book4);
		books.add(book5);
		books.add(book6);
		books.add(book21);
	}
	
	public void save(Book book) {
		
     books.add(book);
	}

	public List<Book> findAll() {
		return books;
	}

	public List<Book> SearchBookByAuthor(String author) {
		List<Book> bk=new ArrayList<Book>();
		for(Book b:books){
			if(b.getAuthor().equals(author))
			{
				bk.add(b);
			}
		}
		return bk;
	}
}
