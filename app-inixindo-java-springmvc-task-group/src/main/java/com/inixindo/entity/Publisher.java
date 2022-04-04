package com.inixindo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;

import lombok.Data;

@Data
@Entity(name = "publisher")
public class Publisher {
	@Column(nullable = false)
	private String Name;
	@Column(nullable = false)
	private String Address;
	@Column(nullable = false)
	private String Phone;
}
