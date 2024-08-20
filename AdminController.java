package com.org.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.ModelAndView;

import com.org.dao.AdminDao;
import com.org.dto.Admin;

@Controller
public class AdminController {
	@Autowired
	private AdminDao admindao;

	@PostMapping("/adminregistration")
	public ModelAndView admin_registration(@ModelAttribute Admin admin) {

		ModelAndView mvc = new ModelAndView("admin_registration.jsp");
		admindao.insertAndUpdate(admin);
		mvc.addObject("Success", "Suceessfully Registered");

		return mvc;
	}
	@PostMapping("/admin_login")
	public ModelAndView admin_login(@ModelAttribute Admin admin, @RequestParam String email, @RequestParam String password) {
		
		ModelAndView mvc ;
		
	List<Admin> adminLogin= admindao.LogInforAdmin(email, password);
	if(adminLogin.isEmpty()) {
	mvc = new ModelAndView("index.jsp");
	mvc.addObject("fail","invalid credentials");
	}
	else {
		mvc = new ModelAndView("admin_homepage.jsp");
		mvc.addObject("success","successfully logged in");
		
	}
		return mvc;
		
		
	}
}
