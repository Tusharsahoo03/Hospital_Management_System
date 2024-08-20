package com.org.controller;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


import com.org.dao.DoctorDao;
import com.org.dto.Doctor;

@Controller
public class DoctorController {
	@Autowired
	private DoctorDao doctordao;

	@PostMapping("/add_doctor")
	public ModelAndView add_doctor(@ModelAttribute Doctor doctor) {

		ModelAndView mvc = new ModelAndView("doctor_registration.jsp");
		doctordao.insertAndUpdate(doctor);
		mvc.addObject("success", "Added Successfully");
		return mvc;

	}
	@RequestMapping("/view_doctor")
	
	public ModelAndView fetch (@ModelAttribute Doctor doctor) {
		
		ModelAndView mvc = new ModelAndView("view_doctor.jsp");
		List<Doctor> fetchAll = doctordao.FetchAll();
		mvc.addObject("fetch_doctor",fetchAll);
		
		return mvc;
		
		
	}
	
	@RequestMapping("/updatePage")
	public ModelAndView updateById(@ModelAttribute Doctor doctor, HttpServletRequest req) {
		int id =  Integer.parseInt(req.getParameter("id")) ;
		ModelAndView mvc = new ModelAndView("update_doctor.jsp");
		Doctor fetcheDoctorById = doctordao.fetcheDoctorById(id);
		mvc.addObject("fetchDocDetailsById",fetcheDoctorById);
		
		List<Doctor> allSpecialists = doctordao.FetchAll();
		
		// Use a Set to automatically remove duplicates
	    Set<String> uniqueSpecialists = allSpecialists.stream()
	        .map(Doctor::getSpecialist)
	        .collect(Collectors.toSet());
	    mvc.addObject("spacialists", uniqueSpecialists);
		
		return mvc;
			
	}
	@PostMapping("/update_doctor")
	public String update_doctor(@ModelAttribute Doctor doctor,Model model) {
		
		doctordao.insertAndUpdate(doctor);
		List<Doctor> fetchAll = doctordao.FetchAll();
		model.addAttribute("fetchDocDetailsById",fetchAll);
		
	    return "redirect:/view_doctordetails"; 
		
		
		
	}
	@RequestMapping("/view_doctordetails")
	public ModelAndView m1() {
		ModelAndView mav = new ModelAndView("view_doctor.jsp");
		List<Doctor> fetchAll = doctordao.FetchAll();
		
		mav.addObject("fetch_doctor", fetchAll);
return mav;		
	}

	@RequestMapping("/delete")
	public String deleteById(@ModelAttribute Doctor doctor,HttpServletRequest req) {
		int id = Integer.parseInt(req.getParameter("id"));
		boolean deleteDoctorById = doctordao.deleteDoctorById(id);
		
	    return "redirect:/view_doctordetails"; 

		
	}
	
	@PostMapping("/doctor_login")
	public ModelAndView doctor_login(@ModelAttribute Doctor doctor,@RequestParam long mobile, @RequestParam String password) {
		
		ModelAndView mvc;
		
		List<Doctor> logInforDoctor = doctordao.LogInforDoctor(mobile, password);
		if(logInforDoctor.isEmpty()) {
			mvc = new ModelAndView("doctor_login.jsp");
			mvc.addObject("fail", "invalid credentials");
		}
		else {
			mvc = new ModelAndView("doctor_login.jsp");
			mvc.addObject("success","login successful");
		}
		return mvc;
	}
	
	@RequestMapping("/add_specialistfordoctor")
	public ModelAndView add_specialistfordoctor(@ModelAttribute Doctor doctor) {
		ModelAndView mvc = new ModelAndView("add_specialist.jsp");
		List<Doctor> fetchAll = doctordao.FetchAll();
		mvc.addObject("fetchDoc",fetchAll);
		
		return mvc;
	}
	
	
}
