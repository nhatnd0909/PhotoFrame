package com.photoframe.controller.user;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.photoframe.model.UserOrder;
import com.photoframe.service.UserOrderService;

@RestController
@RequestMapping("/api/orders")
public class UserOrderController1 {
	@Autowired
	private UserOrderService userOrderService;

	@GetMapping
	public ResponseEntity<List<UserOrder>> getAllUserOrders() {
		List<UserOrder> userOrders = userOrderService.getAllUserOrders();
		return new ResponseEntity<>(userOrders, HttpStatus.OK);
	}

	@GetMapping("/{id}")
	public ResponseEntity<UserOrder> getUserOrderById(@PathVariable("id") Long id) {
		Optional<UserOrder> userOrder = userOrderService.getUserOrderById(id);
		return userOrder.map(value -> new ResponseEntity<>(value, HttpStatus.OK))
				.orElseGet(() -> new ResponseEntity<>(HttpStatus.NOT_FOUND));
	}

	@PostMapping
	public ResponseEntity<UserOrder> saveUserOrder(@RequestBody UserOrder userOrder) {
		UserOrder savedUserOrder = userOrderService.saveUserOrder(userOrder);
		return new ResponseEntity<>(savedUserOrder, HttpStatus.CREATED);
	}

	@PutMapping("/{id}")
	public ResponseEntity<UserOrder> updateUserOrder(@PathVariable("id") Long id, @RequestBody UserOrder userOrder) {
		userOrder.setOrderID(id);
		UserOrder updatedUserOrder = userOrderService.saveUserOrder(userOrder);
		return new ResponseEntity<>(updatedUserOrder, HttpStatus.OK);
	}

	@DeleteMapping("/{id}")
	public ResponseEntity<Void> deleteUserOrder(@PathVariable("id") Long id) {
		userOrderService.deleteUserOrder(id);
		return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}
}