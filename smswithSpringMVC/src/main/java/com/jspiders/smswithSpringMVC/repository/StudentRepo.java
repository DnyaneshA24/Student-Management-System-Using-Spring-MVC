package com.jspiders.smswithSpringMVC.repository;

import java.util.List;

import javax.persistence.EntityManager;

import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com.jspiders.smswithSpringMVC.pojo.StudentPOJO;

@Component
public class StudentRepo {
	
	@Autowired
	private EntityManager entityManager;

	public void addStudent(StudentPOJO studentPOJO) {
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(studentPOJO);
		entityTransaction.commit();
		
	}

	@SuppressWarnings("unchecked")
	public List<StudentPOJO> getAllStudent() {
		Query query = entityManager.createQuery("SELECT student FROM StudentPOJO student");
		return query.getResultList();
		
	}

	public void deleteStudent(StudentPOJO studentPOJO) {
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.remove(studentPOJO);
		entityTransaction.commit();
		
	}

	public StudentPOJO getStudentById(long id) {
		return entityManager.find(StudentPOJO.class, id);
		
	}
	
	@SuppressWarnings("unchecked")
	public List<StudentPOJO> searchStudent(String pattern) {
		Query query = entityManager.createQuery("SELECT student FROM StudentPOJO student WHERE name LIKE'%"+pattern+"%'");
		return query.getResultList();
		
	}

	
	

	

}
