package com.inixindo.library.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.inixindo.library.model.Books;

public interface BookRepository extends JpaRepository<Books, Integer> {
	//List<Books> findAll();
}
