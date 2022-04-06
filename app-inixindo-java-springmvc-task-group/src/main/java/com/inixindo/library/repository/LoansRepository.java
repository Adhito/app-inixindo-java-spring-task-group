package com.inixindo.library.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.inixindo.library.model.Loans;

public interface LoansRepository extends JpaRepository<Loans, Integer> {
	//List<Loans> findAll();
	@Modifying
	@Query
		(value = "select * from loans where card_no = ?1", nativeQuery = true)
	List<Loans> findLoansByCardNumber(int card_no);
}
