package com.photoframe.service;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.photoframe.model.Discount;
import com.photoframe.repository.DiscountRepository;

@Service
public class DiscountService {
	@Autowired
	private DiscountRepository discountRepository;

	public Discount crateNewDiscount(String value) {
		Discount discount = new Discount(generateCode(), Integer.parseInt(value), false);
		return discountRepository.save(discount);
	}

	public static String generateCode() {
		String CHARACTERS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		Random random = new Random();
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < 15; i++) {
			int randomIndex = random.nextInt(CHARACTERS.length());
			sb.append(CHARACTERS.charAt(randomIndex));
		}
		return sb.toString();
	}

	public List<Discount> getAllDiscount() {
		return discountRepository.findAll();
	}

	public Discount getDiscountByID(String id) {
		List<Discount> list = getAllDiscount();
		for (Discount d : list) {
			if (d.getDiscountID().equals(Long.parseLong(id))) {
				return d;
			}
		}
		return null;
	}

	public Boolean checkDiscountExits(String code) {
		List<Discount> list = getAllDiscount();
		for (Discount d : list) {
			if (d.getCode().equals(code)) {
				return true;
			}
		}
		return false;
	}
}
