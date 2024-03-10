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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.photoframe.model.DetailOrder;
import com.photoframe.model.Discount;
import com.photoframe.model.UserOrder;
import com.photoframe.service.DetailOrderService;
import com.photoframe.service.DiscountService;
import com.photoframe.service.UserOrderService;

@RestController
@RequestMapping("/api/orders")
public class UserOrderController1 {
	@Autowired
	private UserOrderService userOrderService;
	@Autowired
	private DiscountService discountService;
	@Autowired
	private DetailOrderService detailOrderService;

	@GetMapping
	public ResponseEntity<List<UserOrder>> getAllUserOrders() {
		List<UserOrder> userOrders = userOrderService.getAllUserOrders();
		return new ResponseEntity<>(userOrders, HttpStatus.OK);
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

	@GetMapping("/discount")
	public List<Discount> getDiscount() {
		return discountService.getAllDiscount();
	}

	@PostMapping("/discount")
	public Discount postDiscount(@RequestParam String value) {
		return discountService.crateNewDiscount(value);
	}

//	@PostMapping("/detailOder")
//	public DetailOrder create(@RequestParam String userID, @RequestParam String userOrderID,
//			@RequestParam String discountID, @RequestParam String email, @RequestParam String phone,
//			@RequestParam String address) {
//		return detailOrderService.createNewDetailOrder(userID, userOrderID, discountID, email, phone, address);
//	}

	@GetMapping("/detailOder")
	public List<DetailOrder> getdetailOder() {
		return detailOrderService.getAllDetailOrder();
	}

}