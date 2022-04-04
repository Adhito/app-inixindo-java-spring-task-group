package com.inixindo.library.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.inixindo.library.model.Books;
import com.inixindo.library.services.BookService;

@Controller
public class AppController {

	@Autowired
	BookService bookService;

	@RequestMapping(value = "/index")
	public String viewHomePage(Model model) {
//		model.addAttribute("listBooks", bookService.listAll());
//		return "index";

//		List<Books> listBooks = bookService.listAll();
//		model.addAttribute("listBooks", listBooks);
		return "index";
	}

	@RequestMapping("/new")
	public String showNewBookPage(Model model) {
		Books books = new Books();
		model.addAttribute("books", books);
		return "add_book";

	}
}
