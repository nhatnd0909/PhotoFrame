package com.photoframe.controller.user;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.photoframe.service.VNPayService;

import java.util.HashMap;
import java.util.Map;

@Controller
public class VNPayController {

	@Autowired
	private VNPayService vnPayService;

//	@GetMapping("")
//	public String home() {
//		return "index";
//	}

//	@PostMapping("/submitOrder")
//	public String submidOrder(@RequestParam("amount") int orderTotal, @RequestParam("orderInfo") String orderInfo,
//			HttpServletRequest request) {
//		String baseUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
//		String vnpayUrl = vnPayService.createOrder(orderTotal, orderInfo, baseUrl);
//
//		return "redirect:" + vnpayUrl;
//	}

//	@GetMapping("/vnPayPayment")
//	@ResponseBody
//	public ResponseEntity<Object> GetMapping(HttpServletRequest request) {
//		int paymentStatus = vnPayService.orderReturn(request);
//
//		String orderInfo = request.getParameter("vnp_OrderInfo");
//		String paymentTime = request.getParameter("vnp_PayDate");
//		String transactionId = request.getParameter("vnp_TransactionNo");
//		String totalPrice = request.getParameter("vnp_Amount");
//
//		Map<String, Object> res = new HashMap<>();
//		res.put("orderId", orderInfo);
//		res.put("totalPrice", totalPrice);
//		res.put("paymentTime", paymentTime);
//		res.put("transactionId", transactionId);
//
//		return new ResponseEntity<>(res, HttpStatus.OK);
//	}
}
