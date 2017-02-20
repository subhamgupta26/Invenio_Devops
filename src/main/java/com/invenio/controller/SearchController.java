package com.invenio.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.invenio.bean.Credit;
import com.invenio.bean.Criminal;
import com.invenio.bean.Person;
import com.invenio.service.SearchService;

@Controller
public class SearchController {
	
	@Autowired
	private SearchService sservice;
	
	
	public SearchService getService() {
		return sservice;
	}

	public void setService(SearchService service) {
		this.sservice = service;
	}

	
	@RequestMapping(value="/search",method=RequestMethod.GET)
	public String showSearch(@ModelAttribute("dataForNextPage") String pid, Model model){
		Person p=new Person();
		model.addAttribute("pers",p);
		model.addAttribute("uid",pid);
		System.out.println(pid);
		
		return "search";
	}
	
	@RequestMapping(value="/search",method=RequestMethod.POST)
	public String findPerson(Person p,Model m){
		
	
		System.out.println("In FIND Person");
		Person x=sservice.checkPerson(p);
		System.out.println(p.getName());
		if(x!=null){
			System.out.println("Person details verified");
			m.addAttribute("pers2",x);
			return "person";
			
		}
		
		System.out.println("It is not here");
		
		return "notfound";
	}
	
	@RequestMapping(value="/credit",method=RequestMethod.GET)
	public String showCreditSearch(@RequestParam String unique_id,Model model){
		
		System.out.println("In Search Controller");
		Person pp1=new Person();
		Person pp=new Person();
		long uniqueid=0L;
		try{
		uniqueid=Long.parseLong(unique_id);
		
		pp1.setUnique_id(uniqueid);
		pp=sservice.checkPerson(pp1);
		}
		catch(NumberFormatException nfe){
			return "notfound";
			
		}
		
		if(pp == null)
			return "notfound";
		List<Credit> credits=sservice.checkCreditofPerson(uniqueid);
		model.addAttribute("cred",credits);
		model.addAttribute("pers2",pp);
		return "credit";
	} 
	
	@RequestMapping(value="/crime",method=RequestMethod.GET)
	public String showSearchCriminal(@RequestParam String unique_id,Model model){
		
		System.out.println("In Search Controller");
		Person pp1=new Person();
		Person pp=new Person();
		long uniqueid=0L;
		try{
		uniqueid=Long.parseLong(unique_id);
		
		pp1.setUnique_id(uniqueid);
		pp=sservice.checkPerson(pp1);
		}
		catch(NumberFormatException nfe){
			return "notfound";
			
		}
		
		
		if(pp == null){
			return "notfound";
		}
		List<Criminal> crimes=sservice.checkCrimeofPerson(uniqueid);
		model.addAttribute("crim",crimes);
		model.addAttribute("pers2",pp);
		
		
		return "criminal";
	} 
	

}
