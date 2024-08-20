package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.org.dto.Admin;
@Repository
public class AdminDao {

	

	public void insertAndUpdate(Admin admin) {
		 EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("karthik");

		
		
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();
		
		transaction.begin();
		entityManager.merge(admin);
		transaction.commit();
		
	}
	
	public Admin fetcheAdminById(int id) {
		 EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("karthik");

		
		
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();
		
		return entityManager.find(Admin.class, id);
		
	}
	
	public List<Admin> FetchAll(){
		 EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("karthik");

		EntityManager entityManager = entityManagerFactory.createEntityManager();
		Query query = entityManager.createNamedQuery("select d from Admin d");
		List <Admin> resultList = query.getResultList();
		
		return resultList;
		
		
	}
	
	public List<Admin> LogInforAdmin(String email, String password){
		 EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("karthik");

		
		EntityManager entityManager = entityManagerFactory.createEntityManager();
	    Query query = entityManager.createQuery("SELECT d FROM Admin d WHERE d.email = :email AND d.password = :password");
		query.setParameter("email", email);
		query.setParameter("password", password);
		List <Admin> resultList = query.getResultList();
		
		return resultList;
		
	}
	
	public boolean deleteAdminById(int id) {
		 EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("karthik");

		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();
		
		Admin admin = entityManager.find(Admin.class, id);
		if(admin != null) {
			transaction.begin();
			entityManager.remove(admin);
			transaction.commit();
			return true;
		}
		return false;
		
		
	}
	
	
	
	
}
