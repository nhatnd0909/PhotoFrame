package com.photoframe.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.photoframe.model.Account;
import com.photoframe.model.Customer;
import com.photoframe.repository.CustomerRepository;

@Service
public class CustomerServie {
	@Autowired
	private CustomerRepository customerRepository;
	
	public Customer createCustomer(Customer customer,Account account) {
		customer.setAccount(account);
		customer.setAddress("");
		customer.setCreateDate(new Date());
		customer.setDateOfBirth(new Date());
		customer.setGender("Nam");
		customer.setPhoneNumber("");
		customer.setUrlImage("avatar.webp");
		return customerRepository.save(customer);
	}
	public List<Customer> getAllCustomer() {
		return customerRepository.findAll();
	}
	public Customer getCustomerByUsername(String username) {
		List<Customer> listCustomers = getAllCustomer();
		for(Customer c:listCustomers) {
			if(c.getAccount().getUserName().equals(username)) {
				return c;
			}
		}
		return null;
	}
	
}
