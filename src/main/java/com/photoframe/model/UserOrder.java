package com.photoframe.model;

import java.util.List;

import jakarta.persistence.CollectionTable;
import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "UserOrder")
public class UserOrder {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "OrderID")
	private Long orderID;

	@ManyToOne
	@JoinColumn(name = "ProductID")
	private Product product;

	@ManyToMany
	@JoinTable(name = "Order_Icons", joinColumns = @JoinColumn(name = "OrderID"), inverseJoinColumns = @JoinColumn(name = "IconID"))
	private List<Icon> icons;

	@ElementCollection
	@CollectionTable(name = "Order_Images", joinColumns = @JoinColumn(name = "OrderID"))
	@Column(name = "ImageURL")
	private List<String> images;

	@Column(name = "Type")
	private String type;

	@Column(name = "Size")
	private String size;

	public UserOrder() {
		super();
	}

	public UserOrder(Product product, List<Icon> icons, List<String> images) {
		super();
		this.product = product;
		this.icons = icons;
		this.images = images;
	}

	public UserOrder(Long orderID, Product product, List<Icon> icons, List<String> images) {
		super();
		this.orderID = orderID;
		this.product = product;
		this.icons = icons;
		this.images = images;
	}

	public UserOrder(Product product, List<Icon> icons, List<String> images, String type, String size) {
		super();
		this.product = product;
		this.icons = icons;
		this.images = images;
		this.type = type;
		this.size = size;
	}

	public UserOrder(Long orderID, Product product, List<Icon> icons, List<String> images, String type, String size) {
		super();
		this.orderID = orderID;
		this.product = product;
		this.icons = icons;
		this.images = images;
		this.type = type;
		this.size = size;
	}

	public Long getOrderID() {
		return orderID;
	}

	public void setOrderID(Long orderID) {
		this.orderID = orderID;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public List<Icon> getIcons() {
		return icons;
	}

	public void setIcons(List<Icon> icons) {
		this.icons = icons;
	}

	public List<String> getImages() {
		return images;
	}

	public void setImages(List<String> images) {
		this.images = images;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	@Override
	public String toString() {
		return "UserOrder [orderID=" + orderID + ", product=" + product + ", icons=" + icons + ", images=" + images
				+ ", type=" + type + ", size=" + size + "]";
	}

}
