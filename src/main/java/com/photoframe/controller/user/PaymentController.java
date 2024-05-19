package com.photoframe.controller.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.photoframe.model.Customer;
import com.photoframe.model.DetailOrder;
import com.photoframe.model.Discount;
import com.photoframe.model.UserOrder;
import com.photoframe.service.CustomerServie;
import com.photoframe.service.DetailOrderService;
import com.photoframe.service.DiscountService;
import com.photoframe.service.ProductService;
import com.photoframe.service.UserOrderService;
import com.photoframe.service.VNPayService;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class PaymentController {
	@Autowired
	private CustomerServie customerServie;
	@Autowired
	private UserOrderService userOrderService;
	@Autowired
	private DiscountService discountService;
	@Autowired
	private DetailOrderService detailOrderService;
	@Autowired
	private ProductService proService;
	@Autowired
	private VNPayService vnPayService;

	@GetMapping("/payment")
	public String showPaymentPage(HttpSession session, Model model, HttpServletRequest request) {
		String userID = (String) session.getAttribute("userID");
//		kiểm tra user đăng nhập chưa
		model.addAttribute("logged", "0");
		if (userID != null) {
			model.addAttribute("logged", "1");
//			lưu thông tin user khi đã đăng nhập
			Customer customer = customerServie.getCustomerByID(userID);
			model.addAttribute("username", customer.getAccount().getUserName());
			model.addAttribute("customer", customer);
		}
//		
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("userOrderId")) {
					String userOrderId = cookie.getValue();
					UserOrder userOrder = userOrderService.getUserOrderById(userOrderId);
					String type = userOrder.getType();
					String size = userOrder.getSize();
					model.addAttribute("type", type);
					model.addAttribute("size", size);
					model.addAttribute("userOrder", userOrder);

					long price = userOrder.getProduct().getPrice();
					if (size.equalsIgnoreCase("15*20")) {
						price = userOrder.getProduct().getPrice();
					} else if (size.equalsIgnoreCase("20*20")) {
						price = userOrder.getProduct().getPrice2();
					} else if (size.equalsIgnoreCase("20*30")) {
						price = userOrder.getProduct().getPrice3();
					}
					model.addAttribute("price", price);
				}
			}
		}
		List<Discount> listDiscount = discountService.getDiscountValid();
		model.addAttribute("listDiscount", listDiscount);
		return "/user/payment";
	}

	@PostMapping("/payment")
	public String payment(HttpSession session, Model model, HttpServletRequest request, @RequestParam String name,
			@RequestParam String email, @RequestParam String address, @RequestParam String phone,
			@RequestParam String discount, @RequestParam String paymentMethod) {
		String userID = (String) session.getAttribute("userID");
		Customer customer = new Customer();
		UserOrder userOrder = new UserOrder();
//		kiểm tra user đăng nhập chưa
		model.addAttribute("logged", "0");
		if (userID != null) {
			model.addAttribute("logged", "1");
//			lưu thông tin user khi đã đăng nhập
			customer = customerServie.getCustomerByID(userID);
			model.addAttribute("username", customer.getAccount().getUserName());
			model.addAttribute("customer", customer);
		}
//		
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("userOrderId")) {
					String userOrderId = cookie.getValue();
					userOrder = userOrderService.getUserOrderById(userOrderId);
					model.addAttribute("userOrder", userOrder);
				}
			}
		}
		if (paymentMethod.equals("2")) {
			
			DetailOrder detailOrder = detailOrderService.createNewDetailOrder2(customer, userOrder, discount, email,
					phone, address, name, paymentMethod);

			String baseUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
			String vnpayUrl = vnPayService.createOrder(detailOrder.getTotalPrice().intValue(), "Thanh toan don hang",
					baseUrl);
			if (!discount.isEmpty()) {
				discountService.updateUsedDiscount(discount);
			}
			session.setAttribute("detailOrder", detailOrder);
			return "redirect:" + vnpayUrl;
		} else {
			detailOrderService.createNewDetailOrder(customer, userOrder, discount, email, phone, address, name,
					paymentMethod);
			if (!discount.isEmpty()) {
				discountService.updateUsedDiscount(discount);
			}
		}
		return "redirect:/history-order";
	}

	@GetMapping("/designPayment")
	public String showDesignPaymentPage(HttpSession session, Model model, HttpServletRequest request,
			@RequestParam String id, @RequestParam String type, @RequestParam String size) {
		String userID = (String) session.getAttribute("userID");
//		kiểm tra user đăng nhập chưa
		model.addAttribute("logged", "0");
		if (userID != null) {
			model.addAttribute("logged", "1");
//			lưu thông tin user khi đã đăng nhập
			Customer customer = customerServie.getCustomerByID(userID);
			model.addAttribute("username", customer.getAccount().getUserName());
			model.addAttribute("customer", customer);

		} else {
			model.addAttribute("username", "");
			model.addAttribute("mess", "");
			return "/user/login";
		}
//

		UserOrder userOrder = new UserOrder();
		userOrder.setProduct(proService.getProductByID(id));
		userOrder.setSize(size);
		userOrder.setType(type);
		userOrderService.saveUserOrder(userOrder);
		model.addAttribute("userOrder", userOrder);
		List<Discount> listDiscount = discountService.getDiscountValid();
		model.addAttribute("listDiscount", listDiscount);
		long price = userOrder.getProduct().getPrice();
		if (size.equalsIgnoreCase("15*20")) {
			price = userOrder.getProduct().getPrice();
		} else if (size.equalsIgnoreCase("20*20")) {
			price = userOrder.getProduct().getPrice2();
		} else if (size.equalsIgnoreCase("20*30")) {
			price = userOrder.getProduct().getPrice3();
		}
		model.addAttribute("price", price);
		return "/user/design-payment";
	}

	@PostMapping("/design-payment")
	public String designPayment(HttpSession session, Model model, HttpServletRequest request, @RequestParam String name,
			@RequestParam String email, @RequestParam String address, @RequestParam String phone,
			@RequestParam String discount, @RequestParam String userOrderID, @RequestParam String paymentMethod,
			HttpServletResponse response) {
		String userID = (String) session.getAttribute("userID");
		Customer customer = new Customer();
		UserOrder userOrder = new UserOrder();
//		kiểm tra user đăng nhập chưa
		model.addAttribute("logged", "0");
		if (userID != null) {
			model.addAttribute("logged", "1");
//			lưu thông tin user khi đã đăng nhập
			customer = customerServie.getCustomerByID(userID);
			model.addAttribute("username", customer.getAccount().getUserName());
			model.addAttribute("customer", customer);
		}
//		
		if (paymentMethod.equals("2")) {
			userOrder = userOrderService.getUserOrderById(userOrderID);
			userOrder.setIcons(null);
			userOrder.setImages(null);
			DetailOrder detailOrder = detailOrderService.createDetaiOrder(customer, userOrder, discount, email, phone,
					address, name, paymentMethod);
			if (!discount.isEmpty()) {
				discountService.updateUsedDiscount(discount);
			}

			String baseUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
			String vnpayUrl = vnPayService.createOrder(detailOrder.getTotalPrice().intValue(), "Thanh toan don hang",
					baseUrl);
			session.setAttribute("detailOrder", detailOrder);
			return "redirect:" + vnpayUrl;
		} else {
			userOrder = userOrderService.getUserOrderById(userOrderID);
			detailOrderService.createNewDetailOrderDesign(customer, userOrder, discount, email, phone, address, name,
					paymentMethod);

			if (!discount.isEmpty()) {
				discountService.updateUsedDiscount(discount);
			}
		}

		return "redirect:/history-order";
	}

	@GetMapping("/vnPayPayment")
	public String GetMapping(HttpSession session, HttpServletRequest request) {
		int paymentStatus = vnPayService.orderReturn(request);
		String orderInfo = request.getParameter("vnp_OrderInfo");
		String paymentTime = request.getParameter("vnp_PayDate");
		String transactionId = request.getParameter("vnp_TransactionNo");
		String totalPrice = request.getParameter("vnp_Amount");
		Map<String, Object> res = new HashMap<>();
		res.put("orderId", orderInfo);
		res.put("totalPrice", totalPrice);
		res.put("paymentTime", paymentTime);
		res.put("transactionId", transactionId);
		DetailOrder detailOrder = (DetailOrder) session.getAttribute("detailOrder");
		if (paymentStatus == 0) {
		} else {
			detailOrderService.saveDetaiOrder(detailOrder);
		}
		session.setAttribute("paymentStatus", paymentStatus);
		session.setAttribute("detailOrder", detailOrder);
		return "redirect:/payment-result";
	}
}
