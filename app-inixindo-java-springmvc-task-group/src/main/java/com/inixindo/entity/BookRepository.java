package com.inixindo.entity;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface BookRepository extends JpaRepository<Books, Integer> {
	
	List<Books> findAll();
}
