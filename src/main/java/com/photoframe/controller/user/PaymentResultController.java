package com.photoframe.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.photoframe.model.Customer;
import com.photoframe.model.DetailOrder;
import com.photoframe.service.CustomerServie;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class PaymentResultController {
	@Autowired
	private CustomerServie customerServie;

	@GetMapping("/payment-result")
	public String getPaymentResult(HttpSession session, Model model, HttpServletRequest request) {
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
		Integer paymentStatus = (Integer) session.getAttribute("paymentStatus");
		model.addAttribute("paymentStatus", paymentStatus);
		DetailOrder detailOrder = (DetailOrder) session.getAttribute("detailOrder");
		model.addAttribute("detailOrder", detailOrder);
		return "/user/payment-result";
	}
}
