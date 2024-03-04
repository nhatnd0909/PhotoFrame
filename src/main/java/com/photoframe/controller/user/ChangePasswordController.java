package com.photoframe.controller.user;

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

import jakarta.servlet.http.HttpSession;

@Controller
public class ChangePasswordController {
	@Autowired
	private CustomerServie customerServie;
	@Autowired
	private AccountService accountService;

	@GetMapping("/change-password")
	public String showProfilePage(HttpSession session, Model model) {
		String userID = (String) session.getAttribute("userID");
//		kiểm tra user đăng nhập chưa
		model.addAttribute("logged", "0");
		if (userID != null) {
			model.addAttribute("logged", "1");
//			lưu thông tin user khi đã đăng nhập
			Customer customer = customerServie.getCustomerByID(userID);
			model.addAttribute("username", customer.getAccount().getUserName());
		} else {
			return "redirect:/";
		}

		Customer user = customerServie.getCustomerByID(userID);

		model.addAttribute("mess", "");
		model.addAttribute("user", user);
//		
		return "/user/change-password";
	}

	@PostMapping("/change-password")
	public String changePassword(HttpSession session, Model model, @RequestParam String oldPassword,
			@RequestParam String newPassword) {
		String userID = (String) session.getAttribute("userID");
		Account account = customerServie.getCustomerByID(userID).getAccount();
//		kiểm tra mật khẩu cũ có trùng không
		if (accountService.getMd5(oldPassword).compareTo(account.getPassword()) != 0) {
			model.addAttribute("mess", "Mật khẩu cũ không khớp");
//			kiểm tra user đăng nhập chưa
			model.addAttribute("logged", "0");
			if (userID != null) {
				model.addAttribute("logged", "1");
//				lưu thông tin user khi đã đăng nhập
				Customer customer = customerServie.getCustomerByID(userID);
				model.addAttribute("username", customer.getAccount().getUserName());
			} else {
				return "redirect:/";
			}

			Customer user = customerServie.getCustomerByID(userID);
			model.addAttribute("user", user);
			return "/user/change-password";
		} else {
			accountService.UpdatePassword(account.getAccountID(), newPassword);
		}
		return "redirect:/login";
	}

}
