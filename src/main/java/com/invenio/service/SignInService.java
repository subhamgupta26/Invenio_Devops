package com.invenio.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import com.invenio.bean.Admin;
import com.invenio.dao.SignInDAO;
import com.invenio.dao.SignInDAOImpl;

@Service(value="service")
public class SignInService {
	
	//ApplicationContext context = new ClassPathXmlApplicationContext("control-servlet.xml");
	//SignInService service = (SignInService) context.getBean("service");
	@Autowired
	private SignInDAO dao;//=(SignInDAO) context.getBean("impl");

	public SignInDAO getDao() {
		return dao;
	}

	public void setDao(SignInDAO dao) {
		this.dao = dao;
	}
	
	public boolean checkSignIn(Admin p){
		System.out.println("Inside signIn Service");
		return dao.signIn(p);
	}
	

	public void registerPerson(Admin p){
		System.out.println("Inside signIn Service");
		dao.register(p);
	}
	
}
