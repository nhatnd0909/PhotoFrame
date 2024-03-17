package com.photoframe.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.photoframe.model.Product;
import com.photoframe.service.ProductService;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminDetailTemplateContronller {
	@Autowired
	private ProductService productService;
	@GetMapping("/admin/detail-template")
	public String showTemplateAdminPage(HttpSession session, Model model,@RequestParam String id) {
		Product product = productService.getProductByID(id);
		model.addAttribute("product", product);
		return "/admin/detail-template";
	}
}
