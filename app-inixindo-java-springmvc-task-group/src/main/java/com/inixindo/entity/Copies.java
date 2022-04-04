package com.inixindo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;


import lombok.Data;

@Data
@Entity(name = "copies")
public class Copies {
	@Column(nullable = false)
	private int BookID;
	@Column(nullable = false)
	private int no_of_copies;
}
