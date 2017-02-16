package com.invenio.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String showSearch(Model model){
		Person p=new Person();
		model.addAttribute("pers",p);
		
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
			return "detailsDisplay";
			
		}
		
		System.out.println("not here");
		
		return "redirect:/search";
	}
	
	@RequestMapping(value="/credit",method=RequestMethod.GET)
	public String showSearch(@RequestParam String id,Model model){
		
		System.out.println("In Search Controller");
		long uniqueid=Long.parseLong(id);
		List<Credit> credits=sservice.checkCreditofPerson(uniqueid);
		model.addAttribute("cred",credits);
		
		
		return "detailsDisplay";
	} 
	
	@RequestMapping(value="/crime",method=RequestMethod.GET)
	public String showSearchCriminal(@RequestParam String id,Model model){
		
		System.out.println("In Search Controller");
		long uniqueid=Long.parseLong(id);
		List<Criminal> crimes=sservice.checkCrimeofPerson(uniqueid);
		model.addAttribute("crim",crimes);
		
		
		return "detailsDisplay";
	} 
	

}
