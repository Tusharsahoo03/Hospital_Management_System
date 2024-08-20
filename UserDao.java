package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.org.dto.User;
@Repository
public class UserDao {
static EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("karthik");
	

	public void insertAndUpdate(User user) {
		
		
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();
		
		transaction.begin();
		entityManager.merge(user);
		transaction.commit();
		
	}
	
	public User fetcheUserById(int id) {
		
		
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();
		
		return entityManager.find(User.class, id);
		
	}
	
	public List<User> FetchAll(){
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		Query query = entityManager.createNamedQuery("select d from User d");
		List <User> resultList = query.getResultList();
		
		return resultList;
		
		
	}
	
	public List<User> LogInforUser(String email, String password){
		
		EntityManager entityManager = entityManagerFactory.createEntityManager();
	    Query query = entityManager.createQuery("SELECT d FROM User d WHERE d.email = :email AND d.password = :password");
		query.setParameter("email", email);
		query.setParameter("password", password);
		List <User> resultList = query.getResultList();
		
		return resultList;
		
	}
	
	public boolean deleteUserById(int id) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();
		
		User user = entityManager.find(User.class, id);
		if(user != null) {
			transaction.begin();
			entityManager.remove(user);
			transaction.commit();
			return true;
		}
		return false;
		
		
	}
	
	
	
}
