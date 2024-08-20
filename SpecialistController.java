package com.org.controller;

import java.util.List;
import com.google.gson.Gson;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.org.dao.SpecialistDao;
import com.org.dto.Doctor;
import com.org.dto.Specialist;

@Controller
public class SpecialistController {
@Autowired
private SpecialistDao specialistDao;
	
	@PostMapping("/add_specialist")
	
	public ModelAndView add_specialist(@ModelAttribute Specialist specialist) {
		ModelAndView mvc = new ModelAndView("add_specialist.jsp");
		specialistDao.insertAndUpdate(specialist);
		mvc.addObject("success","Specialist has been added");
		
		return mvc;
	}
	@RequestMapping("/appointment_registration")
	public ModelAndView appointment_registration() {
	    ModelAndView mvc = new ModelAndView("appointment_registration.jsp");
	    List<Specialist> fetchDoc = specialistDao.FetchAll();

	   

	    mvc.addObject("fetchSpecialists", fetchDoc);

	    return mvc;
	}
	
	
}
