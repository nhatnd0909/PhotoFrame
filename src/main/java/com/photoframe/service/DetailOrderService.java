package com.photoframe.service;

import java.util.ArrayList;
import java.util.Date;
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
			String phone, String address, String name, String paymentMethod) {
		Discount discount = discountService.getDiscountByCode(code);
		Long totalPrice = userOrder.getProduct().getPrice();
		
		Long priceBySize = userOrder.getProduct().getPrice();
		if (userOrder.getSize().equalsIgnoreCase("15*20")) {
			priceBySize = userOrder.getProduct().getPrice();
		} else if (userOrder.getSize().equalsIgnoreCase("20*20")) {
			priceBySize = userOrder.getProduct().getPrice2();
		} else if (userOrder.getSize().equalsIgnoreCase("20*30")) {
			priceBySize = userOrder.getProduct().getPrice3();
		}
		
		if (discount != null && discount.isStatus()) {
			totalPrice = priceBySize - (priceBySize / 100 * discount.getDiscountValue())
					+ Long.parseLong("30000");

		} else {
			totalPrice = priceBySize + Long.parseLong("30000");
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
		detailOrder.setDateOrder(new Date());
		detailOrder.setPaid(false);
		detailOrder.setDesign(false);
		if (paymentMethod.equals("1")) {
			detailOrder.setPaymentMethod("Thanh toán trực tiếp");
		} else {
			detailOrder.setPaymentMethod("Thanh toán VNPay");
		}
		return detailOrderRepository.save(detailOrder);
	}

	public DetailOrder createNewDetailOrderDesign(Customer customer, UserOrder userOrder, String code, String email,
			String phone, String address, String name, String paymentMethod) {
		Discount discount = discountService.getDiscountByCode(code);
		Long totalPrice = userOrder.getProduct().getPrice();

		Long priceBySize = userOrder.getProduct().getPrice();
		if (userOrder.getSize().equalsIgnoreCase("15*20")) {
			priceBySize = userOrder.getProduct().getPrice();
		} else if (userOrder.getSize().equalsIgnoreCase("20*20")) {
			priceBySize = userOrder.getProduct().getPrice2();
		} else if (userOrder.getSize().equalsIgnoreCase("20*30")) {
			priceBySize = userOrder.getProduct().getPrice3();
		}

		if (discount != null && discount.isStatus()) {
			totalPrice = priceBySize - (priceBySize / 100 * discount.getDiscountValue()) + Long.parseLong("30000");

		} else {
			totalPrice = priceBySize + Long.parseLong("30000");
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
		detailOrder.setDateOrder(new Date());
		detailOrder.setPaid(false);
		detailOrder.setDesign(true);
		if (paymentMethod.equals("1")) {
			detailOrder.setPaymentMethod("Thanh toán trực tiếp");
		} else {
			detailOrder.setPaymentMethod("Thanh toán VNPay");
		}
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

	public List<DetailOrder> getDetailOrderByMonth(int month) {
		List<DetailOrder> list = getAllDetailOrder();
		List<DetailOrder> listReturn = new ArrayList<>();
		for (DetailOrder d : list) {
			if (d.getDateOrder().getMonth() + 1 == month) {
				listReturn.add(d);
			}

		}
		return listReturn;
	}

	public int countOrderByStatus(String status, int month) {
		int count = 0;
		List<DetailOrder> list = getDetailOrderByMonth(month);
		for (DetailOrder d : list) {
			if (d.getStatus().equals(status)) {
				count++;
			}
		}
		return count;
	}

	public void updateStatus(DetailOrder detailOrder, String status) {
		detailOrder.setStatus(status);
		detailOrderRepository.save(detailOrder);
	}

	public void updatePaid(DetailOrder detailOrder, String paid) {
		if (paid.equals("0")) {
			detailOrder.setPaid(false);
		} else {
			detailOrder.setPaid(true);
		}

		detailOrderRepository.save(detailOrder);
	}

	public DetailOrder createDetaiOrder(Customer customer, UserOrder userOrder, String code, String email, String phone,
			String address, String name, String paymentMethod) {
		Discount discount = discountService.getDiscountByCode(code);
		Long totalPrice = userOrder.getProduct().getPrice();
		Long priceBySize = userOrder.getProduct().getPrice();
		if (userOrder.getSize().equalsIgnoreCase("15*20")) {
			priceBySize = userOrder.getProduct().getPrice();
		} else if (userOrder.getSize().equalsIgnoreCase("20*20")) {
			priceBySize = userOrder.getProduct().getPrice2();
		} else if (userOrder.getSize().equalsIgnoreCase("20*30")) {
			priceBySize = userOrder.getProduct().getPrice3();
		}
		
		if (discount != null && discount.isStatus()) {
			totalPrice = priceBySize - (priceBySize / 100 * discount.getDiscountValue())
					+ Long.parseLong("30000");

		} else {
			totalPrice = priceBySize + Long.parseLong("30000");
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
		detailOrder.setDateOrder(new Date());
		detailOrder.setPaid(false);
		detailOrder.setDesign(true);
		if (paymentMethod.equals("1")) {
			detailOrder.setPaymentMethod("Thanh toán trực tiếp");
		} else {
			detailOrder.setPaymentMethod("Thanh toán VNPay");
		}
		return detailOrder;
	}

	public DetailOrder saveDetaiOrder(DetailOrder detailOrder) {
		detailOrder.setPaid(true);
		return detailOrderRepository.save(detailOrder);
	}

	public DetailOrder createNewDetailOrder2(Customer customer, UserOrder userOrder, String code, String email,
			String phone, String address, String name, String paymentMethod) {
		Discount discount = discountService.getDiscountByCode(code);
		Long totalPrice = userOrder.getProduct().getPrice();
		
		Long priceBySize = userOrder.getProduct().getPrice();
		if (userOrder.getSize().equalsIgnoreCase("15*20")) {
			priceBySize = userOrder.getProduct().getPrice();
		} else if (userOrder.getSize().equalsIgnoreCase("20*20")) {
			priceBySize = userOrder.getProduct().getPrice2();
		} else if (userOrder.getSize().equalsIgnoreCase("20*30")) {
			priceBySize = userOrder.getProduct().getPrice3();
		}
		
		if (discount != null && discount.isStatus()) {
			totalPrice = priceBySize - (priceBySize / 100 * discount.getDiscountValue())
					+ Long.parseLong("30000");

		} else {
			totalPrice = priceBySize + Long.parseLong("30000");
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
		detailOrder.setDateOrder(new Date());
		detailOrder.setPaid(false);
		detailOrder.setDesign(false);
		if (paymentMethod.equals("1")) {
			detailOrder.setPaymentMethod("Thanh toán trực tiếp");
		} else {
			detailOrder.setPaymentMethod("Thanh toán VNPay");
		}
		return detailOrder;
	}

	public Long getRevenueCurentMonth(List<DetailOrder> list) {
		Long revenue = (long) 0;
		for (DetailOrder d : list) {
			revenue += d.getTotalPrice();
		}
		return revenue;
	}

	public int getRequesOrderCurentMonth(List<DetailOrder> list) {
		int sum = 0;
		for (DetailOrder d : list) {
			if (d.getStatus().equals("Đang xử lý")) {
				sum += 1;
			}
		}
		return sum;
	}

	public boolean checkUserOrder(String userId, String productId) {
		List<DetailOrder> list = getAllDetailOrder();
		for (DetailOrder d : list) {
			if (d.getCustomer().getCustomerID().equals(Long.parseLong(userId))
					&& d.getUserOrder().getProduct().getProductID().equals(Long.parseLong(productId))) {
				return true;
			}
		}
		return false;
	}
}
