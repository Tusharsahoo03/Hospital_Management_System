package com.org.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class Specialist {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)

	private int id;
	private String name;
	private String specialistin;
	
	@OneToOne
	private Doctor doctor;
	
}
