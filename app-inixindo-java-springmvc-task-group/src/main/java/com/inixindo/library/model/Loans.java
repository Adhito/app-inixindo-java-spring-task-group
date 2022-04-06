package com.inixindo.library.model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import lombok.Data;

@Data
@Entity(name = "loans")
public class Loans {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(nullable = false)
	public int LoansID;
	
	@Column(nullable = false)
	public String DateOut;
	
	@Column(nullable = false)
	public String DueData;
	
//	@ManyToOne(optional = false)
//	@JoinColumn(name = "bookid", nullable = false, referencedColumnName = "bookid")
//	public Books books;
	
//	@ManyToOne(optional = false)
//	@JoinColumn(name = "cardNo", nullable = false, referencedColumnName = "cardNo")
//	public Borrower borrower;
	
	@OneToOne
	@JoinColumn(name="bookid")
	public Books books;
	
	@OneToOne
	@JoinColumn(name ="cardNo")
	public Borrower borrower;
	
//	public String bookid;
//	public String card_no;
	
}
