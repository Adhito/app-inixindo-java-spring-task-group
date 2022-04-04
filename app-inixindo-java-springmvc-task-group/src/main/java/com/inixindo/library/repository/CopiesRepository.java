package com.inixindo.library.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.inixindo.library.model.Copies;

public interface CopiesRepository extends JpaRepository<Copies, Integer>{
	//List<Copies> findAll();
}
