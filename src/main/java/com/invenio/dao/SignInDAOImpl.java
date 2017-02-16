package com.invenio.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.invenio.bean.Admin;


@Repository(value="dao")
public class SignInDAOImpl implements SignInDAO{

	@Autowired
	private JdbcTemplate template;
	
	
	@Override
	public boolean signIn(Admin p) {
		System.out.println("In sign in DAO");
	
		try{
			Admin p2 = (Admin) template.queryForObject("select * from admin where username='"+p.getUsername()+"'AND password='"+p.getPassword()+"'",
			//Admin p2 = (Admin) template.queryForObject("select * from admin where username='subham@gmail.com' AND password='qwerty'",

			new RowMapper<Admin>() {

				@Override
				public Admin mapRow(ResultSet rs, int rn)
						throws SQLException {
					Admin p1 = new Admin();
					p1.setUsername(rs.getString(1));
					p1.setPassword(rs.getString(2));
					return p1;
				}
	});
		System.out.println("In signin DAO "+p2);
	/*	if(p2 == null){
			System.out.println("No records found of this username.");
			return false;
			//Redirect code to be written
		}*/
		}catch(org.springframework.dao.EmptyResultDataAccessException exception){
			System.out.println("username or password invalid");
			return false;
		}
		
		return true;
	}

	
	

	@Override
	public void register(Admin p){
		System.out.println("In sign in DAO register");
		String s="insert into admin (username,password) values (?,?)";
		
		template.update(s, new Object[]{p.getUsername(),p.getPassword()});
	}

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}


}
