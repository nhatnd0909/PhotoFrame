package com.photoframe.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.photoframe.model.Product;
import com.photoframe.service.ProductService;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminTemplateController {
	@Autowired
	private ProductService productService;
	@GetMapping("/admin/template")
	public String showTemplateAdminPage(HttpSession session, Model model) {
		List<Product> listProduct = productService.getAllProducts();
		model.addAttribute("listProduct", listProduct);
		return "/admin/template";
	}
}
