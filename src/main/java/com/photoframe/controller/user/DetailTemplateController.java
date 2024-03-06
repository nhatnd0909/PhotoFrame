package com.photoframe.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.photoframe.model.Customer;
import com.photoframe.model.Product;
import com.photoframe.service.CustomerServie;
import com.photoframe.service.ProductService;

import jakarta.servlet.http.HttpSession;

@Controller
public class DetailTemplateController {
	@Autowired
	private ProductService productService;

	@Autowired
	private CustomerServie customerServie;

	@GetMapping("/detail-template")
	public String showDetaiTemplatePage(HttpSession session, Model model, @RequestParam String idProduct) {
		String userID = (String) session.getAttribute("userID");
//		kiểm tra user đăng nhập chưa
		model.addAttribute("logged", "0");
		if (userID != null) {
			model.addAttribute("logged", "1");
//			lưu thông tin user khi đã đăng nhập
			Customer customer = customerServie.getCustomerByID(userID);
			model.addAttribute("username", customer.getAccount().getUserName());
		}
		Product product = productService.getProductByID(idProduct);
		model.addAttribute("product", product);
		return "/user/detail-template";
	}
}
