package com.niit.DAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Userdetails;

@SuppressWarnings("deprecation")
	@Repository("userdetailsDAO")
	public class UserdetailsDAOimpl implements UserdetailsDAO {
		
		@Autowired
		private SessionFactory sessionFactory;
		public UserdetailsDAOimpl(SessionFactory sessionFactory){
			this.sessionFactory = sessionFactory;
		}
		@Transactional
		public void saveOrUpdate(Userdetails userdetails){
			sessionFactory.getCurrentSession().saveOrUpdate(userdetails);
		} 
		@Transactional
		public void delete(String id){
		     Userdetails userdetails = new Userdetails();
			userdetails.setId(id);
			sessionFactory.getCurrentSession().delete(userdetails);
		}
		@Transactional
		public Userdetails get(String id){
			String hql = "from Userdetails where id=" + "'" +id +"'";
			Query query = (Query)sessionFactory.getCurrentSession().createQuery(hql);
			List<Userdetails> listUserdetails = (List<Userdetails>)query.list();
			if(listUserdetails!= null && !listUserdetails.isEmpty()){
				return listUserdetails.get(0);
			}
			return null;
			}
		
		@Transactional
      public List<Userdetails> list(){
			@SuppressWarnings("unchecked")
			List<Userdetails> listUserdetails = (List<Userdetails>)
			sessionFactory.getCurrentSession()
			.createCriteria(Userdetails.class)
			.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
			return listUserdetails;
		}
}

