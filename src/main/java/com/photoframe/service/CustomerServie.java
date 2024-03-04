package com.photoframe.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.photoframe.model.Account;
import com.photoframe.model.Customer;
import com.photoframe.repository.CustomerRepository;

import jakarta.mail.internet.ParseException;

@Service
public class CustomerServie {
	@Autowired
	private CustomerRepository customerRepository;

	public Customer createCustomer(Customer customer, Account account) {
		customer.setAccount(account);
		customer.setAddress("");
		customer.setCreateDate(new Date());
		customer.setDateOfBirth(new Date());
		customer.setGender("Male");
		customer.setPhoneNumber("");
		customer.setEmail("");
		customer.setUrlImage("avatar.webp");
		return customerRepository.save(customer);
	}

	public List<Customer> getAllCustomer() {
		return customerRepository.findAll();
	}

	public Customer getCustomerByUsername(String username) {
		List<Customer> listCustomers = getAllCustomer();
		for (Customer c : listCustomers) {
			if (c.getAccount().getUserName().equals(username)) {
				return c;
			}
		}
		return null;
	}

	public Customer getCustomerByID(String id) {
		List<Customer> listCustomers = getAllCustomer();
		for (Customer c : listCustomers) {
			if (c.getAccount().getAccountID().equals(Long.parseLong(id))) {
				return c;
			}
		}
		return null;
	}

	public Date parseDateStringToDate(String dateString) throws ParseException, java.text.ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.parse(dateString);
	}

	public static String formatDateToString(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(date);
	}

	public void updateCustomer(String idUser, Customer customerUpdate) {
		Customer customer = getCustomerByID(idUser);
		customer.setAddress(customerUpdate.getAddress());
		customer.setDateOfBirth(customerUpdate.getDateOfBirth());
		customer.setEmail(customerUpdate.getEmail());
		customer.setGender(customerUpdate.getGender());
		customer.setName(customerUpdate.getName());
		customer.setPhoneNumber(customerUpdate.getPhoneNumber());
		customerRepository.save(customer);
	}
}
