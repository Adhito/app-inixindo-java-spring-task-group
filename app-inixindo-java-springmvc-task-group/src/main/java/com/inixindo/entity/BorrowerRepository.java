package com.inixindo.entity;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface BorrowerRepository extends JpaRepository<Borrower, Integer>{
	List<Borrower> listAll();
}
