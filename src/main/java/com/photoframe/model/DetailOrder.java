package com.photoframe.model;

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

	@Override
	public String toString() {
		return "DetailOrder [detailOrderID=" + detailOrderID + ", userOrder=" + userOrder + ", customer=" + customer
				+ ", discount=" + discount + ", totalPrice=" + totalPrice + ", shippingFee=" + shippingFee + ", status="
				+ status + "]";
	}

}
