package com.invenio.controller;


import org.springframework.web.servlet.ModelAndView;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.invenio.bean.Admin;
import com.invenio.bean.Person;
import com.invenio.service.SignInService;

@Controller
public class AdminController {
	
	//ApplicationContext context = new ClassPathXmlApplicationContext("control-servlet.xml");
	//SignInService service = (SignInService) context.getBean("service");
	@Autowired
	private SignInService service;
	
	
	public SignInService getService() {
		return service;
	}

	public void setService(SignInService service) {
		this.service = service;
	}

	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String showHello(Model model){
		Admin p = new Admin();
		model.addAttribute("pes",p);
		
		
		return "login";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String s(Admin person){
		System.out.println(person);
		System.out.println("In Controller");
		boolean x=service.checkSignIn(person);
		//boolean x=true;
		System.out.println(x);
		if(x){
			System.out.println("verified");
	
		 
				 
			return "redirect:/search.do";
			
			
			
		}
		else{
			System.out.println("not verified");
		}
		return "redirect:/login";
	}

	


}
