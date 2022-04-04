package com.inixindo.library.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.inixindo.library.model.Loans;

public interface LoansRepository extends JpaRepository<Loans, Integer> {
	//List<Loans> findAll();
}
