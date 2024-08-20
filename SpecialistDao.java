package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.org.dto.Specialist;
@Repository
public class SpecialistDao {
static EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("karthik");
	

	public void insertAndUpdate(Specialist specialist) {
		
		
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();
		
		transaction.begin();
		entityManager.merge(specialist);
		transaction.commit();
		
	}
	
	public Specialist fetcheSpecialistById(int id) {
		
		
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();
		
		return entityManager.find(Specialist.class, id);
		
	}
	
	public List<Specialist> FetchAll(){
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		Query query = entityManager.createQuery("select d from Specialist d");
		List <Specialist> resultList = query.getResultList();
		
		return resultList;
		
		
	}
	
	public List<Specialist> LogInforSpecialist(String email, String password){
		
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		Query query = entityManager.createNamedQuery("select d from Specialist where d.email=? and d.password=?");
		query.setParameter(1, email);
		query.setParameter(2, password);
		List <Specialist> resultList = query.getResultList();
		
		return resultList;
		
	}
	
	public boolean deleteSpecialistById(int id) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();
		
		Specialist specialist = entityManager.find(Specialist.class, id);
		if(specialist != null) {
			transaction.begin();
			entityManager.remove(specialist);
			transaction.commit();
			return true;
		}
		return false;
		
		
	}
	
	
	
}
