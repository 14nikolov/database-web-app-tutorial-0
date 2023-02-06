package com.luv2code.springdemo.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.luv2code.springdemo.entity.Customer;

// Tells Spring that this is a Component
// Tells Spring that this is also a Data Acessing Object
@Repository
public class CustomerDAOImpl implements CustomerDAO{

	// inject SessionFactory variable
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	// Manage (start, stop) transaction automatically
	@Transactional
	public List<Customer> getCustomers() {
		
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query
		Query<Customer> theQuery = currentSession.createQuery("from Customer", Customer.class);
		
		// execute query and get result list
		List<Customer> customersList = theQuery.getResultList();
		
		// return the results
		return customersList;
		
	}

}
