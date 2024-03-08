package com.photoframe.controller.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.photoframe.model.Customer;
import com.photoframe.model.Icon;
import com.photoframe.model.Product;
import com.photoframe.model.UserOrder;
import com.photoframe.service.CustomerServie;
import com.photoframe.service.FileUploadUtil;
import com.photoframe.service.IconService;
import com.photoframe.service.ProductService;
import com.photoframe.service.UserOrderService;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class EditTemplateController {
	@Autowired
	private CustomerServie customerServie;
	@Autowired
	private IconService iconService;
	@Autowired
	private ProductService productService;
	@Autowired
	private UserOrderService userOrderService;

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

	@PostMapping("/edit-template")
	public String createNewUserOrder(@RequestParam String idProduct,
			@RequestParam(value = "image1", required = false) MultipartFile multipartFile1,
			@RequestParam(value = "image2", required = false) MultipartFile multipartFile2,
			@RequestParam(value = "image3", required = false) MultipartFile multipartFile3,
			@RequestParam(value = "image4", required = false) MultipartFile multipartFile4,
			@RequestParam(value = "image5", required = false) MultipartFile multipartFile5,
			@RequestParam(value = "image6", required = false) MultipartFile multipartFile6,
			@RequestParam(value = "icon", required = false) String[] selectedIcons, HttpSession session,
			HttpServletRequest request, HttpServletResponse response) throws IOException {
		// Lấy thông tin về sản phẩm và người dùng
		Product product = productService.getProductByID(idProduct);

		// Xác định số lượng ảnh cần xử lý dựa trên điều kiện của
		// product.numberImgRequire
		int numberOfImages = product.getNumberImgRequire();

		// Tạo danh sách chứa các URL ảnh
		List<String> imageUrls = new ArrayList<>();
		if (numberOfImages >= 1 && multipartFile1 != null) {
			String fileName1 = StringUtils.cleanPath(multipartFile1.getOriginalFilename());
			String filecode1 = FileUploadUtil.saveFile(fileName1, multipartFile1);
			String urlimage1 = filecode1 + "-" + fileName1;
			imageUrls.add(urlimage1);
		}
		if (numberOfImages >= 2 && multipartFile2 != null) {
			String fileName2 = StringUtils.cleanPath(multipartFile2.getOriginalFilename());
			String filecode2 = FileUploadUtil.saveFile(fileName2, multipartFile2);
			String urlimage2 = filecode2 + "-" + fileName2;
			imageUrls.add(urlimage2);
		}
		if (numberOfImages >= 3 && multipartFile3 != null) {
			String fileName3 = StringUtils.cleanPath(multipartFile3.getOriginalFilename());
			String filecode3 = FileUploadUtil.saveFile(fileName3, multipartFile3);
			String urlimage3 = filecode3 + "-" + fileName3;
			imageUrls.add(urlimage3);
		}
		// Làm tương tự cho các điều kiện khác
		if (numberOfImages >= 4 && multipartFile4 != null) {
			String fileName4 = StringUtils.cleanPath(multipartFile4.getOriginalFilename());
			String filecode4 = FileUploadUtil.saveFile(fileName4, multipartFile4);
			String urlimage4 = filecode4 + "-" + fileName4;
			imageUrls.add(urlimage4);
		}
		if (numberOfImages >= 5 && multipartFile5 != null) {
			String fileName5 = StringUtils.cleanPath(multipartFile5.getOriginalFilename());
			String filecode5 = FileUploadUtil.saveFile(fileName5, multipartFile5);
			String urlimage5 = filecode5 + "-" + fileName5;
			imageUrls.add(urlimage5);
		}
		if (numberOfImages >= 6 && multipartFile6 != null) {
			String fileName6 = StringUtils.cleanPath(multipartFile6.getOriginalFilename());
			String filecode6 = FileUploadUtil.saveFile(fileName6, multipartFile6);
			String urlimage6 = filecode6 + "-" + fileName6;
			imageUrls.add(urlimage6);
		}
//		
		List<Icon> selectedIconList = new ArrayList<>();
		if (selectedIcons != null) {
			for (String iconId : selectedIcons) {
				Icon icon = iconService.getIconbyID(iconId);
				if (icon != null) {
					selectedIconList.add(icon);
				}
			}
		}
		// Tạo đối tượng UserOrder và lưu vào cơ sở dữ liệu

		UserOrder userOrder = new UserOrder(product, selectedIconList, imageUrls);
		userOrderService.saveUserOrder(userOrder);
		// Create a cookie to store user order id
		String userOrderId = userOrder.getOrderID().toString();
		Cookie userOrderCookie = new Cookie("userOrderId", userOrderId);
		userOrderCookie.setMaxAge(24 * 60 * 60); // 1 day expiration time
		userOrderCookie.setPath("/"); // Set cookie path
		response.addCookie(userOrderCookie);
		return "redirect:/payment";
	}
}
