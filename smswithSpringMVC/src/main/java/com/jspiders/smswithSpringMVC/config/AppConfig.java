package com.jspiders.smswithSpringMVC.config;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {
	
	@Bean
	public EntityManager entityManager() {
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("sms_with_spring_mvc");
		return entityManagerFactory.createEntityManager();
 	}

}
