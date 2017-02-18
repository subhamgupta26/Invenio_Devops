package com.invenio.dao;

import com.invenio.bean.Admin;

public interface SignInDAO {

	public boolean signIn(Admin p);
	public void register(Admin p);
}
