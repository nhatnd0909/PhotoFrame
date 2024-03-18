package com.photoframe.controller.user;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.photoframe.model.Comment;
import com.photoframe.service.CommentService;
import com.photoframe.service.CustomerServie;
import com.photoframe.service.ProductService;

import jakarta.servlet.http.HttpSession;

@Controller
public class CommentController {
	@Autowired
	private CommentService commentService;
	@Autowired
	private CustomerServie customerServie;
	@Autowired
	private ProductService productService;

	@PostMapping("/comment")
	public String reviewProduct(HttpSession session, Model model, @RequestParam String productId,
			@RequestParam String name, @RequestParam String email, @RequestParam String comment,
			@RequestParam String rating) {
		String userID = (String) session.getAttribute("userID");
		Comment userComment = new Comment(customerServie.getCustomerByID(userID),
				productService.getProductByID(productId), Integer.parseInt(rating), comment);
		commentService.createComment(userComment);
		return "redirect:/detail-template?idProduct=" + productId;
	}
}
