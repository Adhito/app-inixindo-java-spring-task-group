package com.inixindo.library.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity(name = "books")
public class Books {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private int BookID;
	@Column( nullable = false)
	private String title;
	@Column( nullable = false)
	private String PublisherName;
}
