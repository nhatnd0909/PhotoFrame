package com.photoframe.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Discount")
public class Discount {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "DiscountID")
	private Long discountID;

	@Column(name = "Code", unique = true)
	private String code;

	@Column(name = "DiscountValue")
	private int discountValue;

	@Column(name = "Status")
	private boolean status;

	public Discount() {
	}

	public Discount(String code, int discountValue, boolean status) {
		this.code = code;
		this.discountValue = discountValue;
		this.status = status;
	}

	public Discount(Long discountID, String code, int discountValue, boolean status) {
		this.discountID = discountID;
		this.code = code;
		this.discountValue = discountValue;
		this.status = status;
	}

	public Long getDiscountID() {
		return discountID;
	}

	public void setDiscountID(Long discountID) {
		this.discountID = discountID;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getDiscountValue() {
		return discountValue;
	}

	public void setDiscountValue(int discountValue) {
		this.discountValue = discountValue;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Discount [discountID=" + discountID + ", code=" + code + ", discountValue=" + discountValue
				+ ", status=" + status + "]";
	}

}
