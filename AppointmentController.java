package com.org.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.org.dao.AppointmentDao;
import com.org.dao.DoctorDao;
import com.org.dao.UserDao;
import com.org.dto.Appointment;
import com.org.dto.User;

@Controller
public class AppointmentController {

	@Autowired
	private AppointmentDao appointmentdao;
	
	@Autowired
	private UserDao userDao;
	
	@PostMapping("/add_appointment")
	public ModelAndView add_appointment(@ModelAttribute Appointment appointment) {
		ModelAndView mvc = new ModelAndView("appointment_registration.jsp");
		appointmentdao.insertAndUpdate(appointment);
        appointment.setStatus("Pending");
		mvc.addObject("success", "Appointment is successfull");
		
		
		
		return mvc;
	}
	@RequestMapping("/check_appointment")
	public ModelAndView check_appointment(@ModelAttribute Appointment appointment) {
		
		
		ModelAndView mvc = new ModelAndView("check_appointment.jsp");
		List<Appointment> fetchAll = appointmentdao.FetchAll();
		mvc.addObject("check_apmnt", fetchAll);
		mvc.addObject("success","Your appointment is successfull");
		
		return mvc;
	}
	
	@RequestMapping("/acceptAppointment")
	public String AcceptPage(@RequestParam("id")int id) {
		
		Appointment appointment = appointmentdao.fetcheAppointmentById(id);
		
		if(appointment != null) {
			appointment.setStatus("Accepted");
			appointmentdao.insertAndUpdate(appointment);
			System.out.println("accepted");
		}
		return "redirect:/check_appointment";
	}
	
	
	@RequestMapping("/rejectAppointment")
	public String rejectPage(@RequestParam("id")int id) {
		
		Appointment appointment = appointmentdao.fetcheAppointmentById(id);
		
		if(appointment != null) {
			appointment.setStatus("Rejected");
			boolean deleteAppointmentById = appointmentdao.deleteAppointmentById(id);
		}
		return "redirect:/check_appointment";
	}
	
	@RequestMapping("/view_status")
	public ModelAndView view_status(
	        @RequestParam(value = "id") int id,
	        @RequestParam(value = "appointmentId") int appointmentId) {
	    
	    // Validate parameters
	    if (id <= 0 || appointmentId <= 0) {
	        ModelAndView mvc = new ModelAndView("error.jsp");
	        mvc.addObject("message", "Invalid request parameters.");
	        return mvc;
	    }

	    // Fetch data
	    Appointment appointment = appointmentdao.fetcheAppointmentById(appointmentId);
	    User user = userDao.fetcheUserById(id);

	    // Prepare and return ModelAndView
	    ModelAndView mvc = new ModelAndView("view_status.jsp");
	    mvc.addObject("userAppointments", appointment);
	    
	    return mvc;
	}

	
}
