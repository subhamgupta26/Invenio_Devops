package com.invenio.dao;

import java.util.List;

import com.invenio.bean.Credit;
import com.invenio.bean.Person;

public interface SearchDao {
	
	public Person findRecord(Person p);
	public List<Credit> findCreditRecord(int uniqueid);

}
