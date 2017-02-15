package com.invenio.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	public boolean checkPerson(Person p){
		return sdao.findRecord(p);
	}
	
}
