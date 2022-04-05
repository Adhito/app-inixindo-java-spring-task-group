package com.inixindo.library.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.inixindo.library.model.Borrower;

public interface BorrowerRepository extends JpaRepository<Borrower, Integer>{
	//List<Borrower> listAll();
	Borrower findByUsername(String username);
}
