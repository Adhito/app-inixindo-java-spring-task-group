package com.inixindo.library.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.inixindo.library.model.Books;
import com.inixindo.library.services.BookService;


@Controller
public class AppController {

	@Autowired
	BookService bookService;

	@RequestMapping("/")
	public String viewHomePage(Model model) {

		return "index";
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
		Books books = new Books();
		model.addAttribute("books", books);
		return "new_book";
	}
	
	@RequestMapping(value = "/save_book", method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute("books") Books books, Errors errors) {
		if (null != errors && errors.getErrorCount() > 0) {
            return "new_book";
        }else {
			bookService.save(books);
			System.out.println(books);
			return "redirect:/book";
		}	
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
		Books books = bookService.get(id);
		mav.addObject("books", books);
		return mav;
	}
}
