package com.photoframe.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Product")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ProductID")
	private Long productID;
	@Column(name = "Name")
	private String name;
	@Column(name = "Price")
	private Long price;
	@Column(name = "Price2")
	private Long price2;
	@Column(name = "Price3")
	private Long price3;
	@Column(name = "Type")
	private String type;
	@Column(name = "Decrible")
	private String describle;
	@Column(name = "MainImg")
	private String mainImg;
	@Column(name = "Img1")
	private String img1;
	@Column(name = "Img2")
	private String img2;
	@Column(name = "Img3")
	private String img3;
	@Column(name = "Img4")
	private String img4;
	@Column(name = "NumberImgRequire")
	private int numberImgRequire;
	@Column(name = "Length")
	private int length;
	@Column(name = "Width")
	private int width;
	@Column(name = "Weight")
	private int weight;
	@Column(name = "URLCanva")
	private String urlCanva;
	@Column(name = "Material")
	private String material;
	@Column(name = "URLDesign")
	private String urlDesign;

	public Product() {
	}

	public Product(String name, Long price, String type, String describle, String mainImg, String img1, String img2,
			String img3, String img4, int numberImgRequire, int length, int width, int weight, String urlCanva,
			String material) {
		super();
		this.name = name;
		this.price = price;
		this.type = type;
		this.describle = describle;
		this.mainImg = mainImg;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.img4 = img4;
		this.numberImgRequire = numberImgRequire;
		this.length = length;
		this.width = width;
		this.weight = weight;
		this.urlCanva = urlCanva;
		this.material = material;
	}

	public Product(Long productID, String name, Long price, String type, String describle, String mainImg, String img1,
			String img2, String img3, String img4, int numberImgRequire, int length, int width, int weight,
			String urlCanva, String material) {
		super();
		this.productID = productID;
		this.name = name;
		this.price = price;
		this.type = type;
		this.describle = describle;
		this.mainImg = mainImg;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.img4 = img4;
		this.numberImgRequire = numberImgRequire;
		this.length = length;
		this.width = width;
		this.weight = weight;
		this.urlCanva = urlCanva;
		this.material = material;
	}

	public Product(String name, Long price, String type, String describle, String mainImg, String img1, String img2,
			String img3, String img4, int numberImgRequire, int length, int width, int weight, String urlCanva,
			String material, String urlDesign) {
		super();
		this.name = name;
		this.price = price;
		this.type = type;
		this.describle = describle;
		this.mainImg = mainImg;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.img4 = img4;
		this.numberImgRequire = numberImgRequire;
		this.length = length;
		this.width = width;
		this.weight = weight;
		this.urlCanva = urlCanva;
		this.material = material;
		this.urlDesign = urlDesign;
	}

	public Product(Long productID, String name, Long price, String type, String describle, String mainImg, String img1,
			String img2, String img3, String img4, int numberImgRequire, int length, int width, int weight,
			String urlCanva, String material, String urlDesign) {
		super();
		this.productID = productID;
		this.name = name;
		this.price = price;
		this.type = type;
		this.describle = describle;
		this.mainImg = mainImg;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.img4 = img4;
		this.numberImgRequire = numberImgRequire;
		this.length = length;
		this.width = width;
		this.weight = weight;
		this.urlCanva = urlCanva;
		this.material = material;
		this.urlDesign = urlDesign;
	}

	public Product(Long productID, String name, Long price, Long price2, Long price3, String type, String describle,
			String mainImg, String img1, String img2, String img3, String img4, int numberImgRequire, int length,
			int width, int weight, String urlCanva, String material, String urlDesign) {
		super();
		this.productID = productID;
		this.name = name;
		this.price = price;
		this.price2 = price2;
		this.price3 = price3;
		this.type = type;
		this.describle = describle;
		this.mainImg = mainImg;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.img4 = img4;
		this.numberImgRequire = numberImgRequire;
		this.length = length;
		this.width = width;
		this.weight = weight;
		this.urlCanva = urlCanva;
		this.material = material;
		this.urlDesign = urlDesign;
	}

	public Long getProductID() {
		return productID;
	}

	public void setProductID(Long productID) {
		this.productID = productID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDescrible() {
		return describle;
	}

	public void setDescrible(String describle) {
		this.describle = describle;
	}

	public String getMainImg() {
		return mainImg;
	}

	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}

	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public String getImg3() {
		return img3;
	}

	public void setImg3(String img3) {
		this.img3 = img3;
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public String getUrlCanva() {
		return urlCanva;
	}

	public void setUrlCanva(String urlCanva) {
		this.urlCanva = urlCanva;
	}

	public String getMaterial() {
		return material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}

	public int getNumberImgRequire() {
		return numberImgRequire;
	}

	public void setNumberImgRequire(int numberImgRequire) {
		this.numberImgRequire = numberImgRequire;
	}

	public String getImg4() {
		return img4;
	}

	public void setImg4(String img4) {
		this.img4 = img4;
	}

	public String getUrlDesign() {
		return urlDesign;
	}

	public void setUrlDesign(String urlDesign) {
		this.urlDesign = urlDesign;
	}

	public Long getPrice2() {
		return price2;
	}

	public void setPrice2(Long price2) {
		this.price2 = price2;
	}

	public Long getPrice3() {
		return price3;
	}

	public void setPrice3(Long price3) {
		this.price3 = price3;
	}

	@Override
	public String toString() {
		return "Product [productID=" + productID + ", name=" + name + ", price=" + price + ", price2=" + price2
				+ ", price3=" + price3 + ", type=" + type + ", describle=" + describle + ", mainImg=" + mainImg
				+ ", img1=" + img1 + ", img2=" + img2 + ", img3=" + img3 + ", img4=" + img4 + ", numberImgRequire="
				+ numberImgRequire + ", length=" + length + ", width=" + width + ", weight=" + weight + ", urlCanva="
				+ urlCanva + ", material=" + material + ", urlDesign=" + urlDesign + "]";
	}

}
