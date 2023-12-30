package com.jspiders.smswithSpringMVC.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jspiders.smswithSpringMVC.pojo.AdminPOJO;

@Component
public class AdminRepo {

	@Autowired
	private EntityManager entityManager;

	public void addAdmin(AdminPOJO adminPOJO) {
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(adminPOJO);
		entityTransaction.commit();
	}

	@SuppressWarnings("unchecked")
	public List<AdminPOJO> getAllAdmins() {
		Query query = entityManager.createQuery("SELECT admin FROM AdminPOJO admin");
		List<AdminPOJO> admins = query.getResultList();
		return admins;
	}

	public void deleteAdmin(AdminPOJO adminToBeDeleted) {
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.remove(adminToBeDeleted);
		entityTransaction.commit();
		
	}

}