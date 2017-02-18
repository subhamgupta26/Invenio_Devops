package com.invenio.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.invenio.bean.Credit;
import com.invenio.bean.Criminal;
import com.invenio.bean.Person;

@Repository(value="sdao")
public class SearchDAOImpl implements SearchDao {

	@Autowired
	JdbcTemplate template;
	

	public JdbcTemplate getTemplate() {
		return template;
	}


	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}


	@Override
	public Person findRecord(Person p) {
		Person p1=null;
	try{
		
		p1=template.queryForObject("select * from person where aadhar_id="+p.getUnique_id(),
	
				
				
				new RowMapper<Person>() {

					@Override
					public Person mapRow(ResultSet rs, int arg)
							throws SQLException {
						Person p2=new Person();
						p2.setName(rs.getString(2));
						p2.setDob(rs.getDate(3));
						p2.setMobile_no(rs.getLong(4));
						p2.setCity(rs.getString(5));
						p2.setState(rs.getString(6));
						return p2;
					}
		});
		
	}
	catch(org.springframework.dao.EmptyResultDataAccessException exception){
		System.out.println("username or password invalid");
		return null;
	}
	p1.setUnique_id(p.getUnique_id());
	System.out.println(p1.getName());
	return p1;
		
	}
	

	
	public List<Credit> findCreditRecord(long uniqueid) {
		
		System.out.println("Here In Search impl");
		List<Credit> credits=new ArrayList<Credit>();
	try{
		
		credits= template.query("select * from credit where aadhar_id="+uniqueid, new RowMapper<Credit>(){

			@Override
			public Credit mapRow(ResultSet rs, int rownum)
					throws SQLException {
				
				Credit c2=new Credit();
				c2.setCreditId(rs.getLong(1));
				c2.setAccountNo(rs.getLong(3));
				c2.setBankName(rs.getString(4));
				c2.setBalance(rs.getLong(5));
				
				return c2;
			}
			
		});
		
	}
	catch(org.springframework.dao.EmptyResultDataAccessException exception){
		System.out.println("username or password invalid");
		return null;
	}
	for(Credit cc:credits){
	cc.setUniqueId(uniqueid);
	System.out.println(cc.getAccountNo());
	}
	
	return credits;
		
	}
	
	public List<Criminal> findCrimeRecord(long uniqueid) {
		
		System.out.println("In Search impl");
		List<Criminal> crimes=new ArrayList<Criminal>();
	try{
		
		crimes= template.query("select * from criminal where aadhar_id="+uniqueid, new RowMapper<Criminal>(){

			@Override
			public Criminal mapRow(ResultSet rs, int rownum)
					throws SQLException {
				
				Criminal c2=new Criminal();
				c2.setCriminalId(rs.getLong(1));
				c2.setDate(rs.getDate(3));
				c2.setPlace(rs.getString(4));
				c2.setReport(rs.getString(5));
				
				return c2;
			}
			
		});
		
	}
	catch(org.springframework.dao.EmptyResultDataAccessException exception){
		System.out.println("username or password invalid");
		return null;
	}
	for(Criminal cc:crimes){
	cc.setUniqueId(uniqueid);;
	System.out.println(cc.getCriminalId());
	}
	
	return crimes;
		
	}
	
	 

}
