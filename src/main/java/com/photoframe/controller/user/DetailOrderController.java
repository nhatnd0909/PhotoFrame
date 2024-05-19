package com.photoframe.controller.user;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.photoframe.model.Customer;
import com.photoframe.model.DetailOrder;
import com.photoframe.model.Icon;
import com.photoframe.model.UserOrder;
import com.photoframe.service.CustomerServie;
import com.photoframe.service.DetailOrderService;
import com.photoframe.service.UserOrderService;

import jakarta.servlet.http.HttpSession;

@Controller
public class DetailOrderController {
	@Autowired
	private CustomerServie customerServie;
	@Autowired
	private DetailOrderService deOrderService;
	@Autowired
	private UserOrderService userOrderService;
	@GetMapping("/detail-order")
	public String showDetailOrderPage(HttpSession session, Model model, @RequestParam String id) {
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
		DetailOrder detailOrder = deOrderService.getDetailOrderByID(id);
		model.addAttribute("detailOrder", detailOrder);

		List<String> listImg = detailOrder.getUserOrder().getImages();
		model.addAttribute("listImg", listImg);
		List<Icon> listcon = detailOrder.getUserOrder().getIcons();
		model.addAttribute("listIcon", listcon);

		return "/user/detail-order";

	}
}
