package com.inixindo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity(name = "borrower")
public class Borrower {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)	
	private int cardNo;
	@Column(nullable = false)
	private String Name;
	@Column(nullable = false)
	private String Address;
	@Column(nullable = false)
	private String Phone;
}
