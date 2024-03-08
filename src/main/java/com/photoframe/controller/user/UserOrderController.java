package com.photoframe.controller.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.photoframe.model.Icon;
import com.photoframe.model.Product;
import com.photoframe.model.UserOrder;
import com.photoframe.service.FileUploadUtil;
import com.photoframe.service.IconService;
import com.photoframe.service.ProductService;
import com.photoframe.service.UserOrderService;

import jakarta.servlet.http.HttpSession;

@RestController
public class UserOrderController {
	@Autowired
	private UserOrderService userOrderService;
	@Autowired
	private ProductService productService;
	@Autowired
	private IconService iconService;

	@GetMapping("/orders")
	public List<UserOrder> getAllUserOrder() {
		return userOrderService.getAllUserOrders();
	}

//	@PostMapping("/orders")
//	public UserOrder createNewUserOrder(@RequestParam String idProduct, @RequestParam String idIcon1,
//			@RequestParam String idIcon2, @RequestParam("image1") MultipartFile multipartFile1,
//			@RequestParam("image2") MultipartFile multipartFile2) throws IOException {
//
//		String fileName1 = StringUtils.cleanPath(multipartFile1.getOriginalFilename());
//		String filecode1 = FileUploadUtil.saveFile(fileName1, multipartFile1);
//		String urlimage1 = filecode1 + "-" + fileName1;
//
//		String fileName2 = StringUtils.cleanPath(multipartFile2.getOriginalFilename());
//		String filecode2 = FileUploadUtil.saveFile(fileName2, multipartFile2);
//		String urlimage2 = filecode2 + "-" + fileName2;
//
//		Product product = productService.getProductByID(idProduct);
//		System.out.println(product);
//		Icon icon1 = iconService.getIconbyID(idIcon1);
//		Icon icon2 = iconService.getIconbyID(idIcon2);
//		System.out.println(icon1 + "/" + icon2);
//		List<Icon> listIcon = new ArrayList<>();
//		listIcon.add(icon1);
//		listIcon.add(icon2);
//		List<String> listImg = new ArrayList<>();
//		listImg.add(urlimage1);
//		listImg.add(urlimage2);
//		UserOrder userOrder = new UserOrder(product, listIcon, listImg);
//		return userOrderService.saveUserOrder(userOrder);
//	}

	@PostMapping("/orders")
	public UserOrder createNewUserOrder(@RequestParam String idProduct,
			@RequestParam(value = "image1", required = false) MultipartFile multipartFile1,
			@RequestParam(value = "image2", required = false) MultipartFile multipartFile2,
			@RequestParam(value = "image3", required = false) MultipartFile multipartFile3,
			@RequestParam(value = "image4", required = false) MultipartFile multipartFile4,
			@RequestParam(value = "image5", required = false) MultipartFile multipartFile5,
			@RequestParam(value = "image6", required = false) MultipartFile multipartFile6,
			@RequestParam(value = "icon", required = false) String[] selectedIcons, HttpSession session)
			throws IOException {
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
		return userOrderService.saveUserOrder(userOrder);
	}

}
