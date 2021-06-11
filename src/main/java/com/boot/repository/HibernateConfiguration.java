package com.boot.repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateConfiguration {
	
	public static Session getConnection() {
	    SessionFactory factory= new Configuration().configure().buildSessionFactory();
        Session session = factory.openSession();
        return session;
    }
}
