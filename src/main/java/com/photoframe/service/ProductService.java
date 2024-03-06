package com.photoframe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.photoframe.model.Product;
import com.photoframe.repository.ProductRepository;

@Service
public class ProductService {
	@Autowired
	private ProductRepository productRepository;

	public Product createProduct(Product product) {
		return productRepository.save(product);
	}

	public List<Product> getAllProducts() {
		return productRepository.findAll();
	}

	public Product getProductByID(String id) {
		List<Product> list = getAllProducts();
		for (Product p : list) {
			if (p.getProductID().equals(Long.parseLong(id))) {
				return p;
			}
		}
		return null;
	}
}
