package com.photoframe.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class LogoutController {
	
	@GetMapping("/logout")
	public String showLoginPage(HttpSession session, Model model) {
		session.removeAttribute("userID");
		return "redirect:/";
	}
}
