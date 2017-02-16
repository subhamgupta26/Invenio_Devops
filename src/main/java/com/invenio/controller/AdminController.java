package com.invenio.controller;



import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.invenio.bean.Admin;
import com.invenio.service.SignInService;

@Controller
public class AdminController {
	 @Value("${env.background_image}") private String attr;

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
	public String s(Admin person,RedirectAttributes redirectAttributes){
		
		System.out.println(person);
		System.out.println("In Controller");
		boolean x=service.checkSignIn(person);
		//boolean x=true;
		System.out.println(x);
		if(x){
			System.out.println("verified");
	
		 String pid=person.getUsername();
		
		 redirectAttributes.addFlashAttribute("dataForNextPage", pid);
				 
			return "redirect:/search.do";
			
			
			
		}
		else{
			System.out.println("not verified");
		}
		return "redirect:/login";
	}
	

	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String getregister(Model model){
		Admin p = new Admin();
		model.addAttribute("pes22",p);
		
		return "register";
	}
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String Register(Admin a){
		System.out.println(a);
		System.out.println("In register Controller");
		
		service.registerPerson(a);
		return "redirect:/login";

	}

	


}
