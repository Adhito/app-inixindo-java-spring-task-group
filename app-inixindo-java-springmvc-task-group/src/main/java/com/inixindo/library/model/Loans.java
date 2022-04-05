package com.inixindo.library.model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
@Entity(name = "loans")
public class Loans {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(nullable = false)
	private int LoansID;
	
	@Column(nullable = false)
	private LocalDate DateOut;
	
	@Column(nullable = false)
	private LocalDate DueData;
	
	@ManyToOne(optional = false)
	@JoinColumn(name = "bookid", nullable = false, referencedColumnName = "bookid")
	private Books books;
	
	@ManyToOne(optional = false)
	@JoinColumn(name = "cardNo", nullable = false, referencedColumnName = "cardNo")
	private Borrower borrower;
	
}
