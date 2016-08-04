package com.niit.DAO;

import java.util.List;

import com.niit.model.Userdetails;

public interface UserdetailsDAO {
	public List<Userdetails> list();
	public Userdetails get(String id);
	public void saveOrUpdate(Userdetails userdetails);
	public void delete(String id);

}

