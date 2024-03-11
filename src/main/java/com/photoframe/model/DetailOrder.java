package com.photoframe.model;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "DetailOrder")
public class DetailOrder {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "DetailOrderID")
	private Long detailOrderID;

	@ManyToOne
	@JoinColumn(name = "UserOrderID")
	private UserOrder userOrder;

	@ManyToOne
	@JoinColumn(name = "CustomerID")
	private Customer customer;

	@ManyToOne
	@JoinColumn(name = "DiscountID")
	private Discount discount;

	@Column(name = "TotalPrice")
	private Long totalPrice;

	@Column(name = "ShippingFee")
	private Long shippingFee;

	@Column(name = "Status")
	private String status;

	@Column(name = "Address")
	private String address;

	@Column(name = "PhoneNumber")
	private String phone;

	@Column(name = "Email")
	private String email;

	@Column(name = "Name")
	private String name;

	@Column(name = "DayOrder")
	private Date dateOrder;

	@Column(name = "IsPaid")
	private Boolean paid;

	public DetailOrder() {
	}

	public DetailOrder(UserOrder userOrder, Customer customer, Discount discount, Long totalPrice, Long shippingFee,
			String status) {
		this.userOrder = userOrder;
		this.customer = customer;
		this.discount = discount;
		this.totalPrice = totalPrice;
		this.shippingFee = shippingFee;
		this.status = status;
	}

	public DetailOrder(Long detailOrderID, UserOrder userOrder, Customer customer, Discount discount, Long totalPrice,
			Long shippingFee, String status) {
		this.detailOrderID = detailOrderID;
		this.userOrder = userOrder;
		this.customer = customer;
		this.discount = discount;
		this.totalPrice = totalPrice;
		this.shippingFee = shippingFee;
		this.status = status;
	}

	public DetailOrder(UserOrder userOrder, Customer customer, Discount discount, Long totalPrice, Long shippingFee,
			String status, String address, String phone, String email) {
		super();
		this.userOrder = userOrder;
		this.customer = customer;
		this.discount = discount;
		this.totalPrice = totalPrice;
		this.shippingFee = shippingFee;
		this.status = status;
		this.address = address;
		this.phone = phone;
		this.email = email;
	}

	public DetailOrder(Long detailOrderID, UserOrder userOrder, Customer customer, Discount discount, Long totalPrice,
			Long shippingFee, String status, String address, String phone, String email) {
		super();
		this.detailOrderID = detailOrderID;
		this.userOrder = userOrder;
		this.customer = customer;
		this.discount = discount;
		this.totalPrice = totalPrice;
		this.shippingFee = shippingFee;
		this.status = status;
		this.address = address;
		this.phone = phone;
		this.email = email;
	}

	public DetailOrder(UserOrder userOrder, Customer customer, Discount discount, Long totalPrice, Long shippingFee,
			String status, String address, String phone, String email, String name) {
		super();
		this.userOrder = userOrder;
		this.customer = customer;
		this.discount = discount;
		this.totalPrice = totalPrice;
		this.shippingFee = shippingFee;
		this.status = status;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.name = name;
	}

	public DetailOrder(Long detailOrderID, UserOrder userOrder, Customer customer, Discount discount, Long totalPrice,
			Long shippingFee, String status, String address, String phone, String email, String name) {
		super();
		this.detailOrderID = detailOrderID;
		this.userOrder = userOrder;
		this.customer = customer;
		this.discount = discount;
		this.totalPrice = totalPrice;
		this.shippingFee = shippingFee;
		this.status = status;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.name = name;
	}

	public DetailOrder(UserOrder userOrder, Customer customer, Discount discount, Long totalPrice, Long shippingFee,
			String status, String address, String phone, String email, String name, Boolean paid) {
		super();
		this.userOrder = userOrder;
		this.customer = customer;
		this.discount = discount;
		this.totalPrice = totalPrice;
		this.shippingFee = shippingFee;
		this.status = status;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.name = name;
		this.paid = paid;
	}

	public DetailOrder(Long detailOrderID, UserOrder userOrder, Customer customer, Discount discount, Long totalPrice,
			Long shippingFee, String status, String address, String phone, String email, String name, Boolean paid) {
		super();
		this.detailOrderID = detailOrderID;
		this.userOrder = userOrder;
		this.customer = customer;
		this.discount = discount;
		this.totalPrice = totalPrice;
		this.shippingFee = shippingFee;
		this.status = status;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.name = name;
		this.paid = paid;
	}

	public DetailOrder(UserOrder userOrder, Customer customer, Discount discount, Long totalPrice, Long shippingFee,
			String status, String address, String phone, String email, String name, Date dateOrder, Boolean paid) {
		super();
		this.userOrder = userOrder;
		this.customer = customer;
		this.discount = discount;
		this.totalPrice = totalPrice;
		this.shippingFee = shippingFee;
		this.status = status;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.name = name;
		this.dateOrder = dateOrder;
		this.paid = paid;
	}

	public DetailOrder(Long detailOrderID, UserOrder userOrder, Customer customer, Discount discount, Long totalPrice,
			Long shippingFee, String status, String address, String phone, String email, String name, Date dateOrder,
			Boolean paid) {
		super();
		this.detailOrderID = detailOrderID;
		this.userOrder = userOrder;
		this.customer = customer;
		this.discount = discount;
		this.totalPrice = totalPrice;
		this.shippingFee = shippingFee;
		this.status = status;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.name = name;
		this.dateOrder = dateOrder;
		this.paid = paid;
	}

	public Long getDetailOrderID() {
		return detailOrderID;
	}

	public void setDetailOrderID(Long detailOrderID) {
		this.detailOrderID = detailOrderID;
	}

	public UserOrder getUserOrder() {
		return userOrder;
	}

	public void setUserOrder(UserOrder userOrder) {
		this.userOrder = userOrder;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Discount getDiscount() {
		return discount;
	}

	public void setDiscount(Discount discount) {
		this.discount = discount;
	}

	public Long getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Long totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Long getShippingFee() {
		return shippingFee;
	}

	public void setShippingFee(Long shippingFee) {
		this.shippingFee = shippingFee;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Boolean getPaid() {
		return paid;
	}

	public void setPaid(Boolean paid) {
		this.paid = paid;
	}

	public Date getDateOrder() {
		return dateOrder;
	}

	public void setDateOrder(Date dateOrder) {
		this.dateOrder = dateOrder;
	}

	@Override
	public String toString() {
		return "DetailOrder [detailOrderID=" + detailOrderID + ", userOrder=" + userOrder + ", customer=" + customer
				+ ", discount=" + discount + ", totalPrice=" + totalPrice + ", shippingFee=" + shippingFee + ", status="
				+ status + ", address=" + address + ", phone=" + phone + ", email=" + email + ", name=" + name
				+ ", dateOrder=" + dateOrder + ", paid=" + paid + "]";
	}

}
