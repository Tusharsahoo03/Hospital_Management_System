package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.org.dto.Doctor;
@Repository
public class DoctorDao {
static EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("karthik");
	

	public void insertAndUpdate(Doctor doctor) {
		
		
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();
		
		transaction.begin();
		entityManager.merge(doctor);
		transaction.commit();
		
	}
	
	public Doctor fetcheDoctorById(int id) {
		
		
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();
		
		return entityManager.find(Doctor.class, id);
		
	}
	
	public List<Doctor> FetchAll(){
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		Query query = entityManager.createQuery("select d from Doctor d");
		List <Doctor> resultList = query.getResultList();
		
		return resultList;
		
		
	}
	
	public List<Doctor> LogInforDoctor(long mobile, String password){
		
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		Query query = entityManager.createQuery("select d from Doctor d where d.mobile = :mobile and d.password = :password");
		query.setParameter("mobile", mobile);
		query.setParameter("password", password);
		List <Doctor> resultList = query.getResultList();
		
		return resultList;
		
	}
	
	public boolean deleteDoctorById(int id) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();
		
		Doctor doctor = entityManager.find(Doctor.class, id);
		if(doctor != null) {
			transaction.begin();
			entityManager.remove(doctor);
			transaction.commit();
			return true;
		}
		return false;
		
		
	}
	
	
	
}
