package edu.mum.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.mum.domain.Book;
import edu.mum.service.BookService;

@Controller
// @Path("/rest")
public class BookController {

	@Autowired
	private BookService bookService;

	@RequestMapping(value = "/addBook", method = RequestMethod.GET)
	public String showAddBookForm(@ModelAttribute("NewBook") Book book, Model model) {
		return "AddBookForm";
	}

	@RequestMapping(value = "/addBook", method = RequestMethod.POST)
	public String ProcessAddBookForm(@ModelAttribute("NewBook") Book book, RedirectAttributes redirectAttribute) {
		bookService.save(book);
		redirectAttribute.addFlashAttribute(book);
		return "redirect:/showAll";
	}

	@RequestMapping(value = "/showAll", method = RequestMethod.GET)
	public String showBookList(Model model) {
		model.addAttribute("bookList", bookService.findAll());

		return "BookListForm";
	}

	@RequestMapping("/searchBook")
	public String BookSearch() {

		return "BookSearchAjax";
	}

	@RequestMapping(value = "/searchByAuthor/{Byauthor}", method = RequestMethod.GET, headers = "Accept=application/json")
	public @ResponseBody List<Book> ShowBooks(@PathVariable("Byauthor") String author) {
		return bookService.SearchBookByAuthor(author);
	}

	// this also works
	@RequestMapping(value = "/allBooks")
	public @ResponseBody List<Book> AllBooks_JSON() {
		return bookService.findAll();
	}

	@RequestMapping("/hello/{name}")
	public @ResponseBody String hello(@PathVariable("name") String name) {
		return "Hello " + name;
	}

	@RequestMapping(value = "/book1", method = RequestMethod.GET)
	public @ResponseBody Book OneBook() {
		Book book22 = new Book("000-111", "Programming", "Amanuel", 200);
		return book22;
	}
	
	
	

}
