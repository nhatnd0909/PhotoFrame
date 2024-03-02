package com.photoframe.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.photoframe.model.Account;
import com.photoframe.model.Customer;
import com.photoframe.service.AccountService;
import com.photoframe.service.CustomerServie;


@Controller
public class RegisterController {
	@Autowired
	private CustomerServie customerServie;
	@Autowired
	private AccountService accountService;
	
	@GetMapping("/register")
	public String showRegistePage(Model model) {
		model.addAttribute("mess","");
		model.addAttribute("name","");
		model.addAttribute("username","");
		return "/user/register";
	}
	
	@PostMapping("/register")
	public String createCustomer(Model model ,@RequestParam String username,@RequestParam String password,@RequestParam String name) {
		if(!accountService.checkUsernameExits(username)) {
			model.addAttribute("mess","Username đã tồn tại. Xin nhập username khác");
			model.addAttribute("name",name);
			model.addAttribute("username",username);
			return "/user/register";
		}
		Account account = new Account(username, accountService.getMd5(password));
		accountService.createUserAccount(account);
		Customer customer = new Customer(name, account);
		customerServie.createCustomer(customer, account);
		model.addAttribute("mess","Đăng ký thành công. Xin mời đăng nhập");
		model.addAttribute("username",username);
		return "/user/login";
	}
}
