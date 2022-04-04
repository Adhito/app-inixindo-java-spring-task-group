package com.inixindo.library.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity(name = "copies")
public class Copies {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)	
	private int copiesID;
	@Column(nullable = false)
	private int BookID;
	@Column(nullable = false)
	private int no_of_copies;
}
