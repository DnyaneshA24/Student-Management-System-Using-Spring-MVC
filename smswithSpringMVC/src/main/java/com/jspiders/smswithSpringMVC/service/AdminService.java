package com.jspiders.smswithSpringMVC.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;

import com.jspiders.smswithSpringMVC.pojo.AdminPOJO;
import com.jspiders.smswithSpringMVC.repository.AdminRepo;

@Component
public class AdminService {

	@Autowired
	private AdminRepo adminRepo;

	public void addAdmin(String userName, String email, String password, ModelMap modelMap) {
		AdminPOJO adminPOJO = new AdminPOJO();
		List<AdminPOJO> allAdmins = adminRepo.getAllAdmins();

		if (allAdmins.size() < 3) {
			adminPOJO.setUserName(userName);
			adminPOJO.setEmail(email);
			adminPOJO.setPassword(password);
			adminRepo.addAdmin(adminPOJO);
			modelMap.addAttribute("message", "Signed up.");;
		} else {
			modelMap.addAttribute("message", "Admin already exists.");
		}

	}

	public List<AdminPOJO> getAllAdmins() {
		List<AdminPOJO> admins = adminRepo.getAllAdmins();
		return admins;
	}

	public void deleteAdmin(String email) {

		AdminPOJO adminToBeDeleted = null;
		List<AdminPOJO> admins = adminRepo.getAllAdmins();
		for (AdminPOJO admin : admins) {
			if (admin.getEmail().equals(email)) {
				adminToBeDeleted = admin;
			}
		}

		adminRepo.deleteAdmin(adminToBeDeleted);

	}

	public AdminPOJO logIn(String email, String password) {
		AdminPOJO adminToBeLogin = null;
		List<AdminPOJO> admins = adminRepo.getAllAdmins();
		for (AdminPOJO admin : admins) {
			if (admin.getEmail().equals(email) && admin.getPassword().equals(password)) {
				adminToBeLogin = admin;
				break;
			}
		}
		return adminToBeLogin;
	}

}
