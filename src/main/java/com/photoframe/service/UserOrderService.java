package com.photoframe.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.photoframe.model.UserOrder;
import com.photoframe.repository.UserOrderRepository;

@Service
public class UserOrderService {

	@Autowired
	private UserOrderRepository userOrderRepository;
//	
//	public UserOrderService(UserOrderRepository userOrderRepository) {
//		this.userOrderRepository = userOrderRepository;
//	}

	public List<UserOrder> getAllUserOrders() {
		return userOrderRepository.findAll();
	}

	public UserOrder getUserOrderById(String id) {
		List<UserOrder> list = getAllUserOrders();
		for (UserOrder u : list) {
			if (u.getOrderID().equals(Long.parseLong(id))) {
				return u;
			}
		}
		return null;
	}

	public UserOrder saveUserOrder(UserOrder userOrder) {
		return userOrderRepository.save(userOrder);
	}

	public void deleteUserOrder(Long id) {
		userOrderRepository.deleteById(id);
	}
}