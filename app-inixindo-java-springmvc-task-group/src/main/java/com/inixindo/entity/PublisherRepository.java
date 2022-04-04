package com.inixindo.entity;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface PublisherRepository extends JpaRepository<Publisher, Integer>{
	List<Publisher> findAll();
}
