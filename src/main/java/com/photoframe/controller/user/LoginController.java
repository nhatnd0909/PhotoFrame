package com.photoframe.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.photoframe.model.Customer;
import com.photoframe.service.AccountService;
import com.photoframe.service.CustomerServie;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {
	@Autowired
	private AccountService accountService;
	@Autowired
	private CustomerServie customerServie;

	@GetMapping("/login")
	public String showLoginPage(HttpSession session, Model model) {
		String userID = (String) session.getAttribute("userID");
		model.addAttribute("logged", "0");
		if (userID != null) {
			model.addAttribute("logged", "1");
		}

		model.addAttribute("mess", "");
		model.addAttribute("username", "");
		return "/user/login";
	}

	@PostMapping("login")
	public String login(HttpServletRequest request, Model model, @RequestParam String username,
			@RequestParam String password, HttpSession session2) {
		if (!accountService.checkLogin(username, accountService.getMd5(password))) {
			model.addAttribute("mess", "Sai thông tin đăng nhập");
			model.addAttribute("username", username);

			String userID = (String) session2.getAttribute("userID");
			model.addAttribute("logged", "0");
			if (userID != null) {
				model.addAttribute("logged", "1");
			}
			return "/user/login";
		}
		Customer customer = customerServie.getCustomerByUsername(username);
//			lưu dữ liệu user sau khi đăng nhập
		HttpSession session = request.getSession();
		session.setAttribute("userID", customer.getCustomerID().toString());
//			
		String userID = (String) session2.getAttribute("userID");
		model.addAttribute("logged", "0");
		if (userID != null) {
			model.addAttribute("logged", "1");
		}
//			lưu thông tin user khi đã đăng nhập
		model.addAttribute("username", customer.getAccount().getUserName());

		return "/user/index";
	}
}
