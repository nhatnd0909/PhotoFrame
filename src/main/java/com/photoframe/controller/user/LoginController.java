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

import jakarta.servlet.http.HttpSession;


@Controller
public class LoginController {
	@Autowired
	private AccountService accountService;
	@Autowired
	private CustomerServie customerServie;
	
	@GetMapping("/login")
	public String showLoginPage(Model model) {
		model.addAttribute("mess","");
		model.addAttribute("username","");
		return "/user/login";
	}
	@PostMapping("login")
	public String login(HttpSession session,Model model,@RequestParam String username,@RequestParam String password) {
		if(!accountService.checkLogin(username, accountService.getMd5(password))) {
			model.addAttribute("mess","Sai thông tin đăng nhập");
			model.addAttribute("username",username);
			return "/user/login";
		}
		Customer customer = customerServie.getCustomerByUsername(username);
//		lưu dữ liệu user sau khi đăng nhập
		session.setAttribute("user", customer);
		return "/user/index";
	}
}
