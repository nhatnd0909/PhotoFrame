package com.photoframe.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name = "Customer")
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "CustomerID")
	private Long customerID;

	@Column(name = "Name")
	private String name;

	@Column(name = "Gender")
	private String gender;

	@Column(name = "DateOfBirth")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	private Date dateOfBirth;

	@Column(name = "PhoneNumber")
	private String phoneNumber;

	@Column(name = "Address")
	private String address;

	@Column(name = "CreateDate")
	private Date createDate;

	@OneToOne
	@JoinColumn(name = "AccountID")
	private Account account;

	@Column(name = "UrlImage")
	private String urlImage;

	public Customer() {
	}

	
	
	public Customer(String name, Account account) {
		super();
		this.name = name;
		this.account = account;
	}



	public Customer(String name, Date createDate, Account account) {
		super();
		this.name = name;
		this.createDate = createDate;
		this.account = account;
	}



	public Customer(Long customerID, String name, String gender, Date dateOfBirth, String phoneNumber, String address,
			Date createDate, Account account, String urlImage) {
		super();
		this.customerID = customerID;
		this.name = name;
		this.gender = gender;
		this.dateOfBirth = dateOfBirth;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.createDate = createDate;
		this.account = account;
		this.urlImage = urlImage;
	}

	public Customer(String name, String gender, Date dateOfBirth, String phoneNumber, String address, Date createDate,
			Account account, String urlImage) {
		super();
		this.name = name;
		this.gender = gender;
		this.dateOfBirth = dateOfBirth;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.createDate = createDate;
		this.account = account;
		this.urlImage = urlImage;
	}

	public Long getCustomerID() {
		return customerID;
	}

	public void setCustomerID(Long customerID) {
		this.customerID = customerID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public String getUrlImage() {
		return urlImage;
	}

	public void setUrlImage(String urlImage) {
		this.urlImage = urlImage;
	}

	@Override
	public String toString() {
		return "Customer [customerID=" + customerID + ", name=" + name + ", gender=" + gender + ", dateOfBirth="
				+ dateOfBirth + ", phoneNumber=" + phoneNumber + ", address=" + address + ", createDate=" + createDate
				+ ", account=" + account + ", urlImage=" + urlImage + "]";
	}

	

}