package com.photoframe.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.photoframe.model.Customer;
import com.photoframe.model.UserOrder;
import com.photoframe.service.CustomerServie;
import com.photoframe.service.UserOrderService;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class PaymentController {
	@Autowired
	private CustomerServie customerServie;
	@Autowired
	private UserOrderService userOrderService;

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
					model.addAttribute("userOrder", userOrder);
				}
			}
		}
		return "/user/payment";
	}
}
