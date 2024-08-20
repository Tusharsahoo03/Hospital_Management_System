package com.org.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity

public class Appointment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private int id;
	private String name;
	private int age;
	private String gender;
	private String email;
	private long mobile;
	private String disease;
	private String status;
	private String appointmentDate;
	private long aadhar;
	
	private String specialist;
	
    @OneToOne(mappedBy = "appointment")
	private User user;
	@OneToOne
	private Doctor doctor1;
	

}
