package com.photoframe.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.photoframe.model.DetailOrder;
import com.photoframe.service.DetailOrderService;

import jakarta.servlet.http.HttpSession;

@Controller
public class DetailUserOrderController {
	@Autowired
	private DetailOrderService detailOrderService;

	@GetMapping("/admin/detail-order")
	public String showUserPage(HttpSession session, Model model, @RequestParam String id) {
		DetailOrder detailOrder = detailOrderService.getDetailOrderByID(id);
		model.addAttribute("detailOrder", detailOrder);
		return "/admin/detail-order";
	}

	@PostMapping("/admin/detail-order")
	public String updateDetaiorder(HttpSession session, Model model, @RequestParam String id,
			@RequestParam String status, @RequestParam String paid) {
		DetailOrder detailOrder = detailOrderService.getDetailOrderByID(id);
		detailOrderService.updatePaid(detailOrder, paid);
		detailOrderService.updateStatus(detailOrder, status);
		model.addAttribute("detailOrder", detailOrder);
		return "/admin/detail-order";
	}
}
