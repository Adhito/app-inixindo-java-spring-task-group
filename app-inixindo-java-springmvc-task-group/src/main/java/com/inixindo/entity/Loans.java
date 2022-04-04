package com.inixindo.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;

import lombok.Data;

@Data
@Entity(name = "loans")
public class Loans {
	@Column(nullable = false)
	private int BookID;
	@Column(nullable = false)
	private int CardNo;
	@Column(nullable = false)
	private LocalDate DateOut;
	@Column(nullable = false)
	private LocalDate DueData;
	
}
