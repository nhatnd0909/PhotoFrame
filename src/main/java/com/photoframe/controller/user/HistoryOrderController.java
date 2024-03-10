package com.photoframe.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.photoframe.model.Customer;
import com.photoframe.model.DetailOrder;
import com.photoframe.service.CustomerServie;
import com.photoframe.service.DetailOrderService;

import jakarta.servlet.http.HttpSession;

@Controller
public class HistoryOrderController {
	@Autowired
	private CustomerServie customerServie;
	@Autowired
	private DetailOrderService detailOrderService;

	@GetMapping("/history-order")
	public String showHistoryOrderPage(HttpSession session, Model model) {
		String userID = (String) session.getAttribute("userID");
//		kiểm tra user đăng nhập chưa
		model.addAttribute("logged", "0");
		if (userID != null) {
			model.addAttribute("logged", "1");
//			lưu thông tin user khi đã đăng nhập
			Customer customer = customerServie.getCustomerByID(userID);
			model.addAttribute("username", customer.getAccount().getUserName());
		} else {
			return "redirect:/";
		}

		Customer user = customerServie.getCustomerByID(userID);
		model.addAttribute("user", user);
//		
		List<DetailOrder> listDetailOrder = detailOrderService.getDetailOrderByUserID(userID);
		model.addAttribute("listDetailOrder", listDetailOrder);
		return "/user/history-order";
	}
}
