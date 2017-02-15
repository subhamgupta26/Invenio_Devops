package com.invenio.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

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
	public boolean findRecord(Person p) {
		
	try{
		Person p1=template.queryForObject("select * from person where aadhar_id="+p.getUnique_id(),
	
				
				
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
		return false;
	}
	
	return true;
		
	}

}
