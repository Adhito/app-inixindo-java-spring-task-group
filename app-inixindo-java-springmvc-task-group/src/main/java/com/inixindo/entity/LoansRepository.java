package com.inixindo.entity;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface LoansRepository extends JpaRepository<Loans, Integer> {
	List<Loans> findAll();
}
