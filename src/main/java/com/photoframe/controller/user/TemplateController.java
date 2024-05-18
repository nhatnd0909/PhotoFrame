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
public class TemplateController {
	@Autowired
	private ProductService productService;

	@Autowired
	private CustomerServie customerServie;

	@GetMapping("/template")
	public String showDetaiTemplatePage(HttpSession session, Model model) {
		String userID = (String) session.getAttribute("userID");
//		kiểm tra user đăng nhập chưa
		model.addAttribute("logged", "0");
		if (userID != null) {
			model.addAttribute("logged", "1");
//			lưu thông tin user khi đã đăng nhập
			Customer customer = customerServie.getCustomerByID(userID);
			model.addAttribute("username", customer.getAccount().getUserName());
		}
		List<Product> listAllProduct = productService.getAllProducts();
		model.addAttribute("listAllProduct", listAllProduct);
		List<Product> list4product = productService.get4product();
		model.addAttribute("list4product", list4product);
		return "/user/template";
	}
}
