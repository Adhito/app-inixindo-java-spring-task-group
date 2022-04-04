package com.inixindo.library.model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity(name = "loans")
public class Loans {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Long LoansID;
	@Column(nullable = false)
	private int BookID;
	@Column(nullable = false)
	private int CardNo;
	@Column(nullable = false)
	private LocalDate DateOut;
	@Column(nullable = false)
	private LocalDate DueData;
	
}
