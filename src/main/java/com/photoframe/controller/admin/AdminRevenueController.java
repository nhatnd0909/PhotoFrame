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
public class AdminRevenueController {
	@Autowired
	private DetailOrderService detailOrderService;
	@Autowired
	private PublicService publicService;
	
	@GetMapping("/admin/revenue")
	public String showIRevenuePage(HttpSession session, Model model) {
		int currentMonth = publicService.getCurrentMonth();
		model.addAttribute("currentMonth", currentMonth);
		List<DetailOrder> listOrders = detailOrderService.getDetailOrderByMonth(currentMonth);
		model.addAttribute("listOrders", listOrders);
		Long revenue = detailOrderService.getRevenueCurentMonth(listOrders);
		model.addAttribute("revenue", revenue);
		int orderRequest = detailOrderService.getRequesOrderCurentMonth(listOrders);
		model.addAttribute("orderRequest", orderRequest);
		return "/admin/revenue";
	}
}
