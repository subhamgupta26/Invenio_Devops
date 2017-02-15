package com.invenio.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String showSearch(Model model){
		Person p=new Person();
		model.addAttribute("pers",p);
		
		return "search";
	}
	
	@RequestMapping(value="/search",method=RequestMethod.POST)
	public String findPerson(Person p,Model m){
		System.out.println("In FIND Person");
		boolean x=sservice.checkPerson(p);
		if(x){
			System.out.println("Person details verified");
			m.addAttribute("pesr2",p);
			return "detailsDisplay";
			
		}
		
		System.out.println("not here");
		
		return "redirect:/search";
	}

}
