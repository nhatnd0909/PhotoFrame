package com.photoframe.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.photoframe.model.Comment;
import com.photoframe.model.Customer;
import com.photoframe.model.Product;
import com.photoframe.service.CommentService;
import com.photoframe.service.CustomerServie;
import com.photoframe.service.DetailOrderService;
import com.photoframe.service.ProductService;

import jakarta.servlet.http.HttpSession;

@Controller
public class DetailTemplateController {
	@Autowired
	private ProductService productService;

	@Autowired
	private CustomerServie customerServie;
	@Autowired
	private DetailOrderService detailOrderService;
	@Autowired
	private CommentService commentService;
	@GetMapping("/detail-template")
	public String showDetaiTemplatePage(HttpSession session, Model model, @RequestParam String idProduct) {
		String userID = (String) session.getAttribute("userID");
//		kiểm tra user đăng nhập chưa
		model.addAttribute("logged", "0");
		boolean checUserOrder = false;
		if (userID != null) {
			model.addAttribute("logged", "1");
//			lưu thông tin user khi đã đăng nhập
			Customer customer = customerServie.getCustomerByID(userID);
			model.addAttribute("username", customer.getAccount().getUserName());
			checUserOrder = detailOrderService.checkUserOrder(userID, idProduct);
		}
		Product product = productService.getProductByID(idProduct);
		model.addAttribute("product", product);
//		
		model.addAttribute("checUserOrder", checUserOrder);
		List<Comment> listComment = commentService.getCommentByProductId(idProduct);
		model.addAttribute("listComment", listComment);
		return "/user/detail-template";
	}
}
