package com.photoframe.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Icon")
public class Icon {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "IconID")
	private Long iconID;
	@Column(name = "Name")
	private String name;
	@Column(name = "UrlIcon")
	private String urlIcon;

	public Icon() {
	}

	public Icon(String urlIcon) {
		this.urlIcon = urlIcon;
	}

	public Icon(String name, String urlIcon) {
		this.name = name;
		this.urlIcon = urlIcon;
	}

	public Icon(Long iconID, String name, String urlIcon) {
		this.iconID = iconID;
		this.name = name;
		this.urlIcon = urlIcon;
	}

	public Long getIconID() {
		return iconID;
	}

	public void setIconID(Long iconID) {
		this.iconID = iconID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrlIcon() {
		return urlIcon;
	}

	public void setUrlIcon(String urlIcon) {
		this.urlIcon = urlIcon;
	}

	@Override
	public String toString() {
		return "Icon [iconID=" + iconID + ", name=" + name + ", urlIcon=" + urlIcon + "]";
	}

}
