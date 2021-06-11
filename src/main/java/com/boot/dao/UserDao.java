package com.boot.dao;

import org.hibernate.Query;
import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;

import com.boot.model.User;

public class UserDao {

	SessionFactory factory= new Configuration().configure().buildSessionFactory();
    Session session = factory.openSession();
	
	@Autowired
	User user;

	public void saveUser() {
		Transaction transaction = null;
		try {
			// start a transaction
			transaction = session.beginTransaction();
			session.save(user);

			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
	}

	public boolean checkLogin(String userName, String userPassword) {
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
//			String query = "from User where Username = :userName";
			String hql = "from User  WHERE Username = :userId AND Password = :pass";
			Query q = session.createQuery(hql);
			q.setParameter("userId", userName);
			q.setParameter("pass", userPassword);
			
			if(q.list().size()>0)
			{
				transaction.commit();
				return true;
			}
//			if(user!=null && user.getPassword().equals(userPassword)) {
//				return true;
//			}
			transaction.commit();
		} catch (Exception e) {
            if (transaction != null) {
            	transaction.rollback();
            }
            e.printStackTrace();
        }
			
			return false;             
	}

}
