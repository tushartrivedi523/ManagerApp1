package com.boot.controller;

import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.boot.model.Employee;
import com.boot.model.User;
import com.boot.service.UserService;

@Controller
public class SpringController {

	private static final String GET_EMPLOYEES_URL = "http://localhost:8081/employees";
	private static final String GET_EMPLOYEE_URL = "http://localhost:8081/employees/{id}";
	private static final String CREATE_EMPLOYEE_URL = "http://localhost:8081/employees";
	private static final String UPDATE_EMPLOYEE_URL = "http://localhost:8081/employees/{id}";
	private static final String DELETE_EMPLOYEE_URL = "http://localhost:8081/employees/{id}";
	private static RestTemplate restTemplate = new RestTemplate();

	@Autowired
	UserService userservice;

	@RequestMapping("/login")
	public String showForm(ModelMap model) {
		model.put("userData", new User());
		return "login";
	}

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView loginProcess(ModelMap model,HttpServletRequest request,HttpServletResponse response,
			@RequestParam("loginUsername")String username,@RequestParam("loginPassword")String password) {
		userservice.register();
		System.out.println("In loginprocess");
		if(userservice.validate(username, password)) {
			System.out.println("In loginprocess 2");

			Cookie ck=new Cookie("name",username);  
            response.addCookie(ck);  
			String msg="Welcome "+username+"!";
			return new ModelAndView("loginProcess","msg",msg);
		} else {
			System.out.println("In loginprocess 3");

			String msg="Login Failed ";
			return new ModelAndView("login","msg",msg);
		}
	}

	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response)
	{
		Cookie ck=new Cookie("name","");  
        ck.setMaxAge(0);  
        response.addCookie(ck);
        return "login";
	}
	
	
	@RequestMapping("/listEmployee")
	public ModelAndView listEmployee() {
		@SuppressWarnings({ "unchecked", "rawtypes" })
		List<LinkedHashMap> users = restTemplate.getForObject(GET_EMPLOYEES_URL, List.class);
		return new ModelAndView("loginProcess","users",users);
	}
	
	@RequestMapping("/showNewForm")
	public ModelAndView newEmployee() {
		return new ModelAndView("newEmployee");
	}
	
	@RequestMapping("/showUpdateForm")
	public ModelAndView updateEmployee() {
		return new ModelAndView("updateEmployee");
	}
	

	@RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
	public String addTodo(ModelMap model,  Employee employee, BindingResult result) {

		if (result.hasErrors()) {
			return "employee";
		}

		restTemplate.postForObject(CREATE_EMPLOYEE_URL, employee, Employee.class);
		return "loginProcess";
	}

	

	@RequestMapping(value = "/updateEmployee", method = RequestMethod.PUT)
	public String updateTodo(ModelMap model,  Employee employee, BindingResult result) {

		if (result.hasErrors()) {
			return "employee";
		}

		restTemplate.put(UPDATE_EMPLOYEE_URL, employee, Employee.class);
		return "loginProcess";
	}

}
