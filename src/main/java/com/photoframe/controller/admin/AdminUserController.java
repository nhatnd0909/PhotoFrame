package com.photoframe.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.photoframe.model.Customer;
import com.photoframe.service.CustomerServie;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminUserController {
	@Autowired
	private CustomerServie customerServie;

	@GetMapping("/admin/user")
	public String showUserPage(HttpSession session, Model model) {
		List<Customer> listCustommer = customerServie.getAllCustomer();
		model.addAttribute("listCustommer", listCustommer);
		return "/admin/user";
	}
}
