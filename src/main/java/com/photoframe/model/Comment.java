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
@Table(name = "Comment")
public class Comment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "CommentID")
	private Long id;

	@ManyToOne
	@JoinColumn(name = "CustomerID")
	private Customer customer;

	@ManyToOne
	@JoinColumn(name = "ProductID")
	private Product product;

	@Column(name = "Rating")
	private int rating;

	@Column(name = "Content")
	private String content;

	@Column(name = "DateCommet")
	private Date date;

	public Comment() {
		super();
	}

	public Comment(Customer customer, Product product, int rating, String content) {
		super();
		this.customer = customer;
		this.product = product;
		this.rating = rating;
		this.content = content;
	}

	public Comment(Customer customer, Product product, int rating, String content, Date date) {
		super();
		this.customer = customer;
		this.product = product;
		this.rating = rating;
		this.content = content;
		this.date = date;
	}

	public Comment(Long id, Customer customer, Product product, int rating, String content, Date date) {
		super();
		this.id = id;
		this.customer = customer;
		this.product = product;
		this.rating = rating;
		this.content = content;
		this.date = date;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Comment [id=" + id + ", customer=" + customer + ", product=" + product + ", rating=" + rating
				+ ", content=" + content + ", date=" + date + "]";
	}

}
