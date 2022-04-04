package com.inixindo.entity;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CopiesRepository extends JpaRepository<Copies, Integer>{
	List<Copies> findAll();
}
