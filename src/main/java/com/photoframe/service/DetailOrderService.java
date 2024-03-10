package com.photoframe.service;

import java.util.ArrayList;
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
	private DiscountService discountService;

	public DetailOrder createNewDetailOrder(Customer customer, UserOrder userOrder, String code, String email,
			String phone, String address, String name) {
		Discount discount = discountService.getDiscountByCode(code);
		Long totalPrice = userOrder.getProduct().getPrice();
		if (discount != null && discount.isStatus()) {
			totalPrice = totalPrice - (userOrder.getProduct().getPrice() / 100 * discount.getDiscountValue())
					+ Long.parseLong("30000");

		} else {
			totalPrice = userOrder.getProduct().getPrice() + Long.parseLong("30000");
		}
		DetailOrder detailOrder = new DetailOrder();
		detailOrder.setAddress(address);
		detailOrder.setCustomer(customer);
		detailOrder.setDiscount(discount);
		detailOrder.setEmail(email);
		detailOrder.setPhone(phone);
		detailOrder.setShippingFee(Long.parseLong("30000"));
		detailOrder.setStatus("Đang xử lý");
		detailOrder.setTotalPrice(totalPrice);
		detailOrder.setUserOrder(userOrder);
		detailOrder.setName(name);
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

	public List<DetailOrder> getDetailOrderByUserID(String idCustomer) {
		List<DetailOrder> list = getAllDetailOrder();
		List<DetailOrder> listReturn = new ArrayList<>();
		for (DetailOrder d : list) {
			if (d.getCustomer().getCustomerID().equals(Long.parseLong(idCustomer))) {
				listReturn.add(d);
			}
		}
		return listReturn;
	}
}
