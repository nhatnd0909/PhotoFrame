package com.photoframe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.photoframe.model.Customer;
import com.photoframe.service.CustomerServie;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController12 {
	@Autowired
	private CustomerServie customerServie;

//	@GetMapping("/")
//	public String showDefaultPage(HttpSession session, Model model) {
//		return "/user/index";
//	}
//	@GetMapping("/index")
//	public String showDefaultPage2(HttpSession session, Model model) {
//		return "/user/index";
//	}
//	@GetMapping("/template")
//	public String showTemplatePage(HttpSession session, Model model) {
//		String userID = (String) session.getAttribute("userID");
////		kiểm tra user đăng nhập chưa
//		model.addAttribute("logged", "0");
//		if (userID != null) {
//			model.addAttribute("logged", "1");
////			lưu thông tin user khi đã đăng nhập
//			Customer customer = customerServie.getCustomerByID(userID);
//			model.addAttribute("username", customer.getAccount().getUserName());
//		}
//		return "/user/template";
//	}

//	@GetMapping("/history-order")
//	public String showHistoryOrderPage(HttpSession session, Model model) {
//		String userID = (String) session.getAttribute("userID");
////		kiểm tra user đăng nhập chưa
//		model.addAttribute("logged", "0");
//		if (userID != null) {
//			model.addAttribute("logged", "1");
////			lưu thông tin user khi đã đăng nhập
//			Customer customer = customerServie.getCustomerByID(userID);
//			model.addAttribute("username", customer.getAccount().getUserName());
//		} else {
//			return "redirect:/";
//		}
//
//		Customer user = customerServie.getCustomerByID(userID);
//		model.addAttribute("user", user);
//		return "/user/history-order";
//
//	}

//	@GetMapping("/detail-order")
//	public String showDetailOrderPage(HttpSession session, Model model) {
//		String userID = (String) session.getAttribute("userID");
////		kiểm tra user đăng nhập chưa
//		model.addAttribute("logged", "0");
//		if (userID != null) {
//			model.addAttribute("logged", "1");
////			lưu thông tin user khi đã đăng nhập
//			Customer customer = customerServie.getCustomerByID(userID);
//			model.addAttribute("username", customer.getAccount().getUserName());
//		} else {
//			return "redirect:/";
//		}
//
//		Customer user = customerServie.getCustomerByID(userID);
//		model.addAttribute("user", user);
//		return "/user/detail-order";
//
//	}

	@GetMapping("/contact-us")
	public String showContactUsPage(HttpSession session, Model model) {
		String userID = (String) session.getAttribute("userID");
//		kiểm tra user đăng nhập chưa
		model.addAttribute("logged", "0");
		if (userID != null) {
			model.addAttribute("logged", "1");
//			lưu thông tin user khi đã đăng nhập
			Customer customer = customerServie.getCustomerByID(userID);
			model.addAttribute("username", customer.getAccount().getUserName());
		}
		return "/user/contact-us";
	}

//	@GetMapping("/login")
//	public String showLoginPage(HttpSession session, Model model) {
//		model.addAttribute("mess","");
//		model.addAttribute("username","");
//		return "/user/login";
//	}
//	@GetMapping("/register")
//	public String showRegistePage(HttpSession session, Model model) {
//		return "/user/register";
//	}
//	@GetMapping("/detail-template")
//	public String showDetaiTemplatePage(HttpSession session, Model model) {
//		String userID = (String) session.getAttribute("userID");
////		kiểm tra user đăng nhập chưa
//		model.addAttribute("logged", "0");
//		if (userID != null) {
//			model.addAttribute("logged", "1");
////			lưu thông tin user khi đã đăng nhập
//			Customer customer = customerServie.getCustomerByID(userID);
//			model.addAttribute("username", customer.getAccount().getUserName());
//		}
//		return "/user/detail-template";
//	}

//	@GetMapping("/edit-template")
//	public String showEditTemplatePage(HttpSession session, Model model) {
//		String userID = (String) session.getAttribute("userID");
////		kiểm tra user đăng nhập chưa
//		model.addAttribute("logged", "0");
//		if (userID != null) {
//			model.addAttribute("logged", "1");
////			lưu thông tin user khi đã đăng nhập
//			Customer customer = customerServie.getCustomerByID(userID);
//			model.addAttribute("username", customer.getAccount().getUserName());
//		}
//		return "/user/edit-template";
//	}

//	@GetMapping("/payment")
//	public String showPaymentPage(HttpSession session, Model model) {
//		String userID = (String) session.getAttribute("userID");
////		kiểm tra user đăng nhập chưa
//		model.addAttribute("logged", "0");
//		if (userID != null) {
//			model.addAttribute("logged", "1");
////			lưu thông tin user khi đã đăng nhập
//			Customer customer = customerServie.getCustomerByID(userID);
//			model.addAttribute("username", customer.getAccount().getUserName());
//		}
//		return "/user/payment";
//	}

//	@GetMapping("/profile")
//	public String showProfilePage(HttpSession session, Model model) {
//		String userID = (String) session.getAttribute("userID");
////		kiểm tra user đăng nhập chưa
//		model.addAttribute("logged", "0");
//		if (userID != null) {
//			model.addAttribute("logged", "1");
////			lưu thông tin user khi đã đăng nhập
//			Customer customer = customerServie.getCustomerByID(userID);
//			model.addAttribute("username", customer.getAccount().getUserName());
//		}
//		return "/user/profile";
//	}

//	ADMIN
	@GetMapping("/admin")
	public String showAdminPage(HttpSession session, Model model) {
		return "/admin/index";
	}

	@GetMapping("/admin/user")
	public String showUserPage(HttpSession session, Model model) {
		return "/admin/user";
	}

	@GetMapping("/admin/template")
	public String showTemplateAdminPage(HttpSession session, Model model) {
		return "/admin/template";
	}

	@GetMapping("/admin/icon")
	public String showIconPage(HttpSession session, Model model) {
		return "/admin/icon";
	}

	@GetMapping("/admin/order")
	public String showIOrderPage(HttpSession session, Model model) {
		return "/admin/order";
	}

	@GetMapping("/admin/revenue")
	public String showIRevenuePage(HttpSession session, Model model) {
		return "/admin/revenue";
	}

}
