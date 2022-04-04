package com.inixindo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import lombok.Data;

@Data
@Entity(name = "authors")
public class Authors {
	@Column(nullable = false)
	private int BookID;
	@Column( nullable = false)
	private String AuthorName;
}
