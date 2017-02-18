package com.invenio.dao;

import java.util.List;

import com.invenio.bean.Credit;
import com.invenio.bean.Criminal;
import com.invenio.bean.Person;

public interface SearchDao {
	
	public Person findRecord(Person p);
	public List<Credit> findCreditRecord(long uniqueid);
	public List<Criminal> findCrimeRecord(long uniqueid);

}
