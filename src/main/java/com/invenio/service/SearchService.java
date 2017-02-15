package com.invenio.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.invenio.bean.Credit;
import com.invenio.bean.Person;
import com.invenio.dao.SearchDao;

@Service(value="sservice")
public class SearchService {

	@Autowired
	SearchDao sdao;

	public SearchDao getSdao() {
		return sdao;
	}

	public void setSdao(SearchDao sdao) {
		this.sdao = sdao;
	}
	
	public Person checkPerson(Person p){
		Person p2=sdao.findRecord(p);
		try
		{
			System.out.println(p2.getName()+"in service");
				
		}
		catch(NullPointerException e)
		{
			
		}
		
		return p2;
		
	}
	
	public List<Credit> checkCreditofPerson(int uniqueid){
		System.out.println("In Search Service");
		List<Credit> credits=sdao.findCreditRecord(uniqueid);
		
		
		return credits;
		
	}
	
}
