package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.org.dto.Admin;
import com.org.dto.Appointment;
import com.org.dto.Specialist;
import com.org.dto.User;

@Repository
public class AppointmentDao {

public void insertAndUpdate(Appointment appointment) {
		
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("karthik");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();
		
		transaction.begin();
		entityManager.merge(appointment);
		transaction.commit();
		
	}
public List<Appointment> FetchAll(){
	 EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("karthik");

	EntityManager entityManager = entityManagerFactory.createEntityManager();
	Query query = entityManager.createQuery("select d from Appointment d");
	List <Appointment> resultList = query.getResultList();
	
	return resultList;
	
	
}

public Appointment fetcheAppointmentById(int id) {
	 EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("karthik");

	
	
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	
	return entityManager.find(Appointment.class, id);
	
}
public boolean deleteAppointmentById(int id) {
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("karthik");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction transaction = entityManager.getTransaction();
	
	Appointment appointment = entityManager.find(Appointment.class, id);
	if(appointment != null) {
		transaction.begin();
		entityManager.remove(appointment);
		transaction.commit();
		return true;
	}
	return false;
	
	
}

}
