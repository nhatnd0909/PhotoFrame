package com.photoframe.controller.user;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.photoframe.model.Customer;
import com.photoframe.service.CustomerServie;

import jakarta.mail.internet.ParseException;
import jakarta.servlet.http.HttpSession;

@Controller
public class ProfileUserController {
	@Autowired
	private CustomerServie customerServie;

	@GetMapping("/profile")
	public String showProfilePage(HttpSession session, Model model) {
		String userID = (String) session.getAttribute("userID");
//		kiểm tra user đăng nhập chưa
		model.addAttribute("logged", "0");
		if (userID != null) {
			model.addAttribute("logged", "1");
//			lưu thông tin user khi đã đăng nhập
			Customer customer = customerServie.getCustomerByID(userID);
			model.addAttribute("username", customer.getAccount().getUserName());
		}

		Customer user = customerServie.getCustomerByID(userID);
		model.addAttribute("user", user);
		String[] addressUser = user.getAddress().split("/");
		model.addAttribute("address", addressUser[0]);
		model.addAttribute("ward", addressUser[1]);
		model.addAttribute("distric", addressUser[2]);
		model.addAttribute("city", addressUser[3]);
		return "/user/profile";
	}

	@PostMapping("/profile")
	public String updateProfileUser(HttpSession session, Model model, @RequestParam String name,
			@RequestParam String email, @RequestParam String gender, @RequestParam String dob,
			@RequestParam String phone, @RequestParam String city, @RequestParam String distric,
			@RequestParam String ward, @RequestParam String address) throws ParseException, java.text.ParseException {
		String userID = (String) session.getAttribute("userID");
		String addressUser = address + "/" + ward + "/" + distric + "/" + city;
		if (dob.isEmpty()) {
//			người dùng chưa nhập dob
			Customer customer = new Customer(name, gender, new Date(), phone, email, address);
			customerServie.updateCustomer(userID, customer);
		} else {
//			người dùng nhập dob;
			Customer customer = new Customer(name, gender, customerServie.parseDateStringToDate(dob), phone, email,
					addressUser);
			customerServie.updateCustomer(userID, customer);
		}
		return "redirect:/profile";
	}
}
