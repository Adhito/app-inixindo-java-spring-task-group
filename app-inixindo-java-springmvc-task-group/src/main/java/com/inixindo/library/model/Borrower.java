package com.inixindo.library.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

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
	
	@Column(nullable = false)
	private String username;
	
	@Column(nullable = false)
	private String role;
	
	@Column(nullable = false)
	private String password;
	
	@OneToMany(mappedBy = "borrower", cascade = CascadeType.ALL)
	private List<Loans> loans;
	
	
	public void setPassword(String password) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		this.password = passwordEncoder.encode(password).toString();
	}
}
