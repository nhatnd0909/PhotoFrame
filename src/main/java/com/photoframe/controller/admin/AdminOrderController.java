package com.photoframe.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.photoframe.model.DetailOrder;
import com.photoframe.service.DetailOrderService;
import com.photoframe.service.PublicService;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminOrderController {
	@Autowired
	private DetailOrderService detailOrderService;
	@Autowired
	private PublicService publicService;

	@GetMapping("/admin/order")
	public String showIOrderPage(HttpSession session, Model model) {
		List<DetailOrder> listOrder = detailOrderService.getAllDetailOrder();
		model.addAttribute("listOrder", listOrder);

		int currentMonth = publicService.getCurrentMonth();
		List<DetailOrder> listOrders = detailOrderService.getDetailOrderByMonth(currentMonth);
		model.addAttribute("listOrders", listOrders);
		model.addAttribute("currentMonth", currentMonth);
		model.addAttribute("process", detailOrderService.countOrderByStatus("Đang xử lý", currentMonth));
		model.addAttribute("success", detailOrderService.countOrderByStatus("Thành công", currentMonth));
		model.addAttribute("fail", detailOrderService.countOrderByStatus("Thất bại", currentMonth));
		return "/admin/order";
	}
}
