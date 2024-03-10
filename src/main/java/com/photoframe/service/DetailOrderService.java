package com.photoframe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.photoframe.model.Customer;
import com.photoframe.model.DetailOrder;
import com.photoframe.model.Discount;
import com.photoframe.model.UserOrder;
import com.photoframe.repository.DetailOrderRepository;

@Service
public class DetailOrderService {
	@Autowired
	private DetailOrderRepository detailOrderRepository;
	@Autowired
	private CustomerServie customerServie;
	@Autowired
	private UserOrderService userOrderService;
	@Autowired
	private DiscountService discountService;

	public DetailOrder createNewDetailOrder(String userID, String userOrderID, String discountID, String shippingFee) {
		Customer customer = customerServie.getCustomerByID(userID);
		UserOrder userOrder = userOrderService.getUserOrderById(userOrderID);
		Discount discount = discountService.getDiscountByID(discountID);
		Long totalPrice = userOrder.getProduct().getPrice() + Long.parseLong(shippingFee);
		DetailOrder detailOrder = new DetailOrder(userOrder, customer, discount, totalPrice,
				Long.parseLong(shippingFee), "Đang xử lý");
		return detailOrderRepository.save(detailOrder);
	}

	public List<DetailOrder> getAllDetailOrder() {
		return detailOrderRepository.findAll();
	}

	public DetailOrder getDetailOrderByID(String id) {
		List<DetailOrder> list = getAllDetailOrder();
		for (DetailOrder d : list) {
			if (d.getDetailOrderID().equals(Long.parseLong(id))) {
				return d;
			}
		}
		return null;
	}
			
}
