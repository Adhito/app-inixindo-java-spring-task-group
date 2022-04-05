package com.inixindo.library.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.inixindo.library.model.Authors;
import com.inixindo.library.model.Books;
import com.inixindo.library.model.Borrower;
import com.inixindo.library.model.Publisher;
import com.inixindo.library.services.AuthorService;
import com.inixindo.library.services.BookService;
import com.inixindo.library.services.BorrowerService;
import com.inixindo.library.services.PublisherService;


@Controller
public class AppController {

	@Autowired
	BookService bookService;
	@Autowired
	PublisherService publisherService;
	@Autowired
	AuthorService authorService;
	@Autowired
	BorrowerService borrowerService;

	@GetMapping("/login")
	public String login(Model model) {
		model.addAttribute("borrower", new Borrower());
		return "login";
	}
	
	@PostMapping("/login")
	public String masuk() {
		return "login";
	}
	

	@RequestMapping("/book")
	public String getBookPage(Model model) {
		List<Books> listBooks = bookService.listAll();
		model.addAttribute("listBooks", listBooks);
		System.out.println(listBooks);
		return "all_book";

	}
	
	@RequestMapping("/book/new")
	public String newBookPage(Model model) {
		List<Publisher> listPublishers = publisherService.listAll();
		List<Authors> listAuthors = authorService.listAll();
		System.out.println(listPublishers);
		Books books = new Books();
		model.addAttribute("books", books);
		model.addAttribute("publishers", listPublishers);
		model.addAttribute("authors", listAuthors);
		return "new_book";
	}
	
	@RequestMapping(value = "/save_book", method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute("books") Books books, Errors errors) {
			bookService.save(books);
			System.out.println(books);
			return "redirect:/book";	
	}
	
	@RequestMapping("/book/newPublisher")
	public String newPublisherPage(Model model) {
		Publisher publisher = new Publisher();
		model.addAttribute("publisher", publisher);
		return "new_publisher";
	}
	
	@RequestMapping(value = "/save_publisher", method = RequestMethod.POST)
	public String savePublisher(@ModelAttribute("publisher") Publisher publisher) {
			publisherService.save(publisher);
			System.out.println(publisher);
			return "redirect:/book";	
	}
	
	@RequestMapping("/book/newAuthor")
	public String newAuthorPage(Model model) {
		Authors authors = new Authors();
		model.addAttribute("authors", authors);
		return "new_author";
	}
	
	@RequestMapping(value = "/save_author", method = RequestMethod.POST)
	public String saveAuthor(@ModelAttribute("publisher") Authors authors) {
			authorService.save(authors);
			System.out.println(authors);
			return "redirect:/book";	
	}
	
	@RequestMapping("/delete_book/{id}")
	public String deleteProduct(@PathVariable(name = "id") int id) {
		System.out.println(id);
		bookService.delete(id);
		return "redirect:/book";
	}
	
	@RequestMapping("/edit_book/{id}")
	public ModelAndView showEditProductForm(@PathVariable(name = "id") int id) {
		ModelAndView mav = new ModelAndView("edit_book");
		List<Publisher> listPublishers = publisherService.listAll();
		List<Authors> listAuthors = authorService.listAll();
		Books books = bookService.get(id);
		mav.addObject("books", books);
		mav.addObject("publishers", listPublishers);
		mav.addObject("authors", listAuthors);
		return mav;
	}
	
	@RequestMapping("/register")
	public String newBorrowerPage(Model model) {
		Borrower borrower = new Borrower();
		model.addAttribute("borrower", borrower);
		return "new_borrower";
	}
	
	@RequestMapping(value = "/save_borrower", method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute("borrower") Borrower borrower, Errors errors) {
		if (null != errors && errors.getErrorCount() > 0) {
            return "new_borrower";
        }else {
			borrowerService.save(borrower);
			System.out.println(borrower);
			return "redirect:/login";
		}	
	}
	
	@RequestMapping("/book_borrower")
	public String getBookPageBorrower(Model model) {
		return "all_book_borrower";

	}
	
	@RequestMapping("/book_admin")
	public String getBookPageAdmin(Model model) {
		return "all_book_admin";

	}
	
//	@Controller
//	public class DefaultController {
//	    @RequestMapping("/default")
//	    public String defaultAfterLogin(HttpServletRequest request) {
//	    	System.out.println(request.isUserInRole("LIBRARIAN"));
//	        if (request.isUserInRole("LIBRARIAN")) {
//	            return "redirect:/book/";
//	        }
//	        return "redirect:/book_borrower/";
//	    }
//	}
}
