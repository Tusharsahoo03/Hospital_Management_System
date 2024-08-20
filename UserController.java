package com.org.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.org.dao.UserDao;
import com.org.dto.User;

@Controller
public class UserController {
@Autowired
	private UserDao userdao;

@PostMapping("/patientregistration")
public ModelAndView patientregistration(@Valid @ModelAttribute User user, BindingResult result) {
    ModelAndView mvc = new ModelAndView("PatientRegistration.jsp");

    if (result.hasErrors()) {
        // If there are validation errors, return to the registration page with error messages
        mvc.addObject("fail", "Invalid input. Please correct the errors and try again.");
        mvc.addObject("errors", result.getFieldErrors());
        mvc.addObject("user", user);  // Re-populate form with user input
        return mvc;
    }

    // Proceed with registration if no errors
    userdao.insertAndUpdate(user);
    mvc.addObject("success", "Registered successfully");
    return mvc;
}
@PostMapping("/user_login")
public ModelAndView user_login( @ModelAttribute User user,@RequestParam String email , @RequestParam  String password) {
	
	ModelAndView mvc ;
	List<User> logInforUser = userdao.LogInforUser(email, password);
	if(logInforUser.isEmpty()) {
		mvc = new ModelAndView("user_login.jsp");
		mvc.addObject("fail", "Invalid credentials");
	}
	else {
		mvc = new ModelAndView("user_login.jsp");
		mvc.addObject("success","login successful");
		
		List<User> fetchAll = userdao.FetchAll();
		mvc.addObject("user",fetchAll);
	}
	
	return mvc;
}


}
