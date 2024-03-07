package com.photoframe.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.photoframe.model.Customer;
import com.photoframe.model.Icon;
import com.photoframe.model.Product;
import com.photoframe.service.CustomerServie;
import com.photoframe.service.IconService;
import com.photoframe.service.ProductService;

import jakarta.servlet.http.HttpSession;

@Controller
public class EditTemplateController {
	@Autowired
	private CustomerServie customerServie;
	@Autowired
	private IconService iconService;
	@Autowired
	private ProductService productService;

	@GetMapping("/edit-template")
	public String showEditTemplatePage(HttpSession session, Model model, @RequestParam String id) {
		String userID = (String) session.getAttribute("userID");
//		kiểm tra user đăng nhập chưa
		model.addAttribute("logged", "0");
		if (userID != null) {
			model.addAttribute("logged", "1");
//			lưu thông tin user khi đã đăng nhập
			Customer customer = customerServie.getCustomerByID(userID);
			model.addAttribute("username", customer.getAccount().getUserName());
		}
//		
		Product product = productService.getProductByID(id);
		List<Icon> listIcon = iconService.getAllIcon();
		model.addAttribute("product", product);
		model.addAttribute("listIcon", listIcon);
		return "/user/edit-template";
	}

}
