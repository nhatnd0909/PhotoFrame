package com.photoframe.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.photoframe.model.Customer;
import com.photoframe.model.Product;
import com.photoframe.service.CustomerServie;
import com.photoframe.service.ProductService;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	@Autowired
	private CustomerServie customerServie;
	@Autowired
	private ProductService productService;

	@GetMapping("/")
	public String showDefaultPage(HttpSession session, Model model) {
		String userID = (String) session.getAttribute("userID");
//		kiểm tra user đăng nhập chưa
		model.addAttribute("logged", "0");
		if (userID != null) {
			model.addAttribute("logged", "1");
//			lưu thông tin user khi đã đăng nhập
			Customer customer = customerServie.getCustomerByID(userID);
			model.addAttribute("username", customer.getAccount().getUserName());
		}
		List<Product> listProduct = productService.get4product();
		model.addAttribute("listProduct", listProduct);
		return "/user/index";
	}

	@GetMapping("/index")
	public String showDefaultPage2(HttpSession session, Model model) {
		return "redirect:/";
	}

}
