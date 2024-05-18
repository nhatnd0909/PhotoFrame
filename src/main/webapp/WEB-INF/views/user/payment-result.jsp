<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - youtube.com/codingnepal -->
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" href="assets/css/login.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-eduwell-style.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/lightbox.css">
</head>

<body>
	<!-- ***** Header Area Start ***** -->
	<header class="header-area header-sticky">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="main-nav">
						<!-- ***** Logo Start ***** -->
						<a href="index" class="logo"> <img
							src="assets/images/logoSP.png" alt="EduWell Template"
							style="max-width: 70px"> <span
							style="font-size: 20px; margin-left: -10px">Sparkle Memo</span>
						</a>

						<!-- ***** Logo End ***** -->
						<!-- ***** Menu Start ***** -->
						<ul class="nav">
							<li class=""><a href="index">Trang Chủ</a></li>
							<li class=""><a href="template" class="active">Dịch vụ</a></li>
							<li class=""><a href="contact-us" class="active">Liên hệ</a></li>
							<c:if test="${logged eq 0}">
								<li class=""><a href="login">Đăng Nhập</a></li>
							</c:if>
							<c:if test="${logged eq 1}">
								<span>
									<li class="has-sub"><a href="javascript:void(0)"><i
											class="fa fa-user"></i>Hi! ${username}</a>
										<ul class="sub-menu">
											<li><a href="profile">Thông tin</a></li>
											<li><a href="">Đăng Xuất</a></li>
										</ul></li>
								</span>
							</c:if>
						</ul>
						<a class='menu-trigger'> <span>Menu</span>
						</a>
						<!-- ***** Menu End ***** -->
					</nav>
				</div>
			</div>
			<c:choose>
				<c:when test="${paymentStatus == 0}">
					<div class="login d-flex justify-content-center mt-5">
						<div class="wrapper ">
							<i class="fa fa-exclamation"
								style="font-size: 100px; width: 150px; height: 150px; color: white; background-color: rgb(196, 72, 72); border-radius: 50%; padding: 20px;"></i>
							<h4
								style="font-weight: bold; margin-top: 20px; color: rgb(189, 67, 27);">Thanh
								toán thất bại</h4>
							<p style="margin-top: 30px; font-size: medium;">Đơn hàng #
								${detailOrder.getDetailOrderID()} thanh toán thất bại</p>
							<p style="margin-top: 30px; font-size: medium;">
								Bạn có thể thanh toán lại đơn hàng đã đặt <a href="template">tại
									đây</a>
							</p>
							<a style="margin-top: 50px; font-size: medium;" href="template"
								class="btn border border-secondary rounded-pill px-4 py-2 mb-4 text-primary">Tiếp
								tục mua hàng</a>
						</div>
					</div>
				</c:when>
				<c:when test="${paymentStatus == 1}">
					<div class="login d-flex justify-content-center mt-5">
						<div class="wrapper ">
							<i class="fa fa-check"
								style="font-size: 100px; color: white; background-color: rgb(93, 179, 93); border-radius: 50%; padding: 20px;"></i>
							<h4
								style="font-weight: bold; margin-top: 20px; color: rgb(93, 179, 93);">Thanh
								toán thành công</h4>
							<p style="margin-top: 20px; font-size: medium;">Bạn đã thanh
								toán thành công đơn hàng # ${detailOrder.getDetailOrderID()}.</p>
							<p style="margin-top: 10px; font-size: medium;">
								Bạn có thể xem chi tiết đơn hàng của bạn trong phần <a
									href="detail-order?id=${detailOrder.getDetailOrderID()}">lịch
									sử đặt hàng</a>
							</p>
							<p id="nextThreeDays"
								style="margin-top: 10px; font-size: medium;">Thời gian giao
								dự kiến cho đơn hàng của bạn là:</p>
							<a style="margin-top: 20px; font-size: medium;" href="template"
								class="btn border border-secondary rounded-pill px-4 py-2 mb-4 text-primary">Tiếp
								tục mua hàng</a>
						</div>
					</div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
		</div>
	</header>

	<script>
		// Hàm để lấy ngày tiếp theo
		function getNextThreeDays() {
			var today = new Date(); // Lấy ngày hiện tại
			var nextDay = new Date(today);
			// Lấy ngày tiếp theo
			nextDay.setDate(today.getDate() + 3);
			return nextDay;
		}
		// Hàm để hiển thị kết quả
		function displayNextThreeDays() {
			var nextDay = getNextThreeDays();
			var output = "Ngày giao hàng dự kiến là: ";
			// Format ngày thành dạng DD/MM/YYYY và hiển thị
			var formattedDate = nextDay.getDate() + '/'
					+ (nextDay.getMonth() + 1) + '/' + nextDay.getFullYear();
			output += formattedDate;
			// Hiển thị kết quả lên trang
			document.getElementById('nextThreeDays').innerHTML = output;
		}
		// Gọi hàm để hiển thị kết quả
		displayNextThreeDays();
	</script>

</body>

</html>