package edu.mum.service;

import java.util.List;

import edu.mum.domain.Book;

public interface BookService {
	public void save(Book book);
	public List<Book> findAll();
	public List<Book> SearchBookByAuthor(String author);

}
