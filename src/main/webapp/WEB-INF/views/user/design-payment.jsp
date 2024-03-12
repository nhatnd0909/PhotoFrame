<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">

<title>EduWell - Education HTML5 Template</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


<!-- Additional CSS Files -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="assets/css/templatemo-eduwell-style.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/lightbox.css">
<link rel="stylesheet" href="assets/css/payment.css">

<!-- Libraries Stylesheet -->
<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<!-- Customized Bootstrap Stylesheet -->
<link href="lib/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="lib/css/style.css" rel="stylesheet">
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
							src="assets/images/logo.png" alt="EduWell Template"
							style="max-width: 50px"> <span style="font-size: 20px">Sparkle
								Memo</span>
						</a>
						<!-- ***** Logo End ***** -->
						<!-- ***** Menu Start ***** -->
						<ul class="nav">
							<li class=""><a href="index">Trang Chủ</a></li>
							<li class=""><a href="detail-template" class="active">Dịch
									vụ</a></li>
							<li class=""><a href="contact-us" class="active">Liên hệ</a></li>
							<c:if test="${logged eq 0}">
								<li class=""><a href="login">Đăng Nhập</a></li>
							</c:if>
							<c:if test="${logged eq 1}">
								<span>
									<li class="has-sub"><a href="javascript:void(0)"><i
											class="fa-solid fa-user"></i>Hi! ${username}</a>
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
		</div>
	</header>

	<!-- Single Product Start -->
	<div class="container-fluid py-5 mt-5">
		<div class="container py-5">
			<div style="margin-bottom: 100px; margin-top: 50px;">
				<h1 class="fw-bold mb-0" style="color: #FF9999 !important;">Chi
					tiết đặt hàng</h1>
			</div>
			<form action="design-payment" method="post">
				<div class="container d-lg-flex d-flex justify-content-center">
					<div class="box-1 bg-light user">
						<div class="d-flex align-items-center mb-3">
							<img src="assets/images/${customer.urlImage}"
								class="pic rounded-circle" alt="">
							<p class="ps-2 name">${customer.name}</p>
						</div>
						<div class="box-inner-1 pb-3 mb-3 ">
							<div class="d-flex justify-content-between mb-3 userdetails">
								<p class="fw-bold">${userOrder.product.name}</p>
								<p class="fw-lighter">
									<span class="fas fa-dollar-sign"></span>${userOrder.product.price}
									đ
								</p>
							</div>
							<div id="my">
								<div class="carousel-inner">
									<div class="carousel-item active">
										<img src="assets/images/${userOrder.product.mainImg}"
											class="d-block w-100">
									</div>
								</div>
							</div>
							<input type="text" value="${userOrder.orderID}"
								name="userOrderID" hidden="">
						</div>
						<div class="box-inner-1 pb-3 mb-3 ">
							<h6>Người dùng tự thiết kế sản phẩm</h6>
							<a href="${userOrder.getProduct().getUrlDesign()}">
								<p>Click vào đây để xem thiết kế</p>
							</a>
						</div>
					</div>
					<div class="box-2">
						<div class="box-inner-2">
							<div>
								<p class="fw-bold">Chi tiết đặt hàng</p>
								<p class="dis mb-3">Hoàn tất giao dịch mua hàng của bạn bằng
									cách cung cấp chi tiết thanh toán của bạn</p>
							</div>
							<div class="mb-3">
								<p class="dis fw-bold mb-2">Họ Và Tên</p>
								<input class="form-control" type="text" name="name"
									value="${customer.name}" required="required">
							</div>
							<div class="mb-3">
								<p class="dis fw-bold mb-2">Email</p>
								<input class="form-control" type="email" name="email"
									value="${customer.email}">
							</div>
							<div class="mb-3">
								<p class="dis fw-bold mb-2">Địa Chỉ</p>
								<input class="form-control" type="text" name="address"
									value="${customer.address}" required="required">
							</div>
							<div class="mb-3">
								<p class="dis fw-bold mb-2">Số điện thoại</p>
								<input class="form-control" type="number" name="phone"
									value="${customer.phoneNumber}" required="required">
							</div>
							<div class="mb-3">
								<p class="dis fw-bold mb-2">Mã giảm giá</p>
								<input class="form-control" type="text" name="discount" value="">
								<input type="button" class="btn btn-primary mt-2" value="Check">
								<div style="display: none">
									<c:forEach var="discount" items="${listDiscount}">
										<div class="discount" id="${discount.discountID}">
											<p>${discount.code}</p>
											<p>${discount.discountValue}</p>
										</div>
									</c:forEach>
								</div>
							</div>
							<div>
								<div class="address">
									<p class="dis fw-bold mb-3">Phương thức thanh toán</p>
									<select class="form-select" aria-label="Default select example">
										<option selected hidden>Thanh toán trực tiếp</option>
										<option value="1">Thanh toán VNPay</option>
										<option value="2">Thanh toán trực tiếp</option>
									</select>
									<div class="d-flex flex-column dis">
										<div
											class="d-flex align-items-center justify-content-between mb-2">
											<p>Tổng đơn hàng</p>
											<p id="totalPrice">
												<span class="fas fa-dollar-sign"></span>${userOrder.getProduct().getPrice()}
												đ
											</p>
										</div>
										<div
											class="d-flex align-items-center justify-content-between mb-2">
											<p>Phí Vận Chuyển</p>
											<p id="shipment">
												<span class="fas fa-dollar-sign"></span>30000 đ
											</p>
										</div>
										<div
											class="d-flex align-items-center justify-content-between mb-2">
											<p id="valueDiscount">
												Giảm giá <span>(0) %</span>
											</p>
											<p id="discountPrice">
												<span class="fas fa-dollar-sign"></span>0 đ
											</p>
										</div>
										<div
											class="d-flex align-items-center justify-content-between mb-2">
											<p class="fw-bold">Total</p>
											<p class="fw-bold" id="priceAfterDiscount">
												<span class="fas fa-dollar-sign"></span>${userOrder.getProduct().getPrice() + 30000}
												đ
											</p>
										</div>
										<button id="paymentButton" class="btn btn-primary mt-2">
											Thanh toán<span class="fas fa-dollar-sign px-1"></span>${userOrder.getProduct().getPrice()+30000}đ
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- Single Product End -->

	<!-- Scripts -->
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="assets/js/isotope.min.js"></script>
	<script src="assets/js/owl-carousel.js"></script>
	<script src="assets/js/lightbox.js"></script>
	<script src="assets/js/tabs.js"></script>
	<script src="assets/js/video.js"></script>
	<script src="assets/js/slick-slider.js"></script>
	<script src="assets/js/custom.js"></script>
	<script>
        //according to loftblog tut
        $('.nav li:first').addClass('active');

        var showSection = function showSection(section, isAnimate) {
            var
                direction = section.replace(/#/, ''),
                reqSection = $('.section').filter('[data-section="' + direction + '"]'),
                reqSectionPos = reqSection.offset().top - 0;

            if (isAnimate) {
                $('body, html').animate({
                    scrollTop: reqSectionPos
                },
                    800);
            } else {
                $('body, html').scrollTop(reqSectionPos);
            }

        };

        var checkSection = function checkSection() {
            $('.section').each(function () {
                var
                    $this = $(this),
                    topEdge = $this.offset().top - 80,
                    bottomEdge = topEdge + $this.height(),
                    wScroll = $(window).scrollTop();
                if (topEdge < wScroll && bottomEdge > wScroll) {
                    var
                        currentId = $this.data('section'),
                        reqLink = $('a').filter('[href*=\\#' + currentId + ']');
                    reqLink.closest('li').addClass('active').
                        siblings().removeClass('active');
                }
            });
        };

        $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
            e.preventDefault();
            showSection($(this).attr('href'), true);
        });

        $(window).scroll(function () {
            checkSection();
        });
    </script>
	<!-- JavaScript Libraries -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/lightbox/js/lightbox.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>
	<!-- Template Javascript -->
	<script src="lib/js/main.js"></script>
	<!-- check Code -->

	<script type="text/javascript">
	document.addEventListener("DOMContentLoaded", function() {
	    var discountInput = document.querySelector('input[name="discount"]');
	    var checkButton = document.querySelector('input[value="Check"]');
	    var valueDiscount = document.getElementById('valueDiscount');
	    var discountPrice = document.getElementById('discountPrice');
	    var totalPriceElement = document.getElementById('totalPrice');
	    var priceAfterDiscountElement = document.getElementById('priceAfterDiscount');
	    var paymentButton = document.getElementById('paymentButton');
	    var shipmentElement = document.getElementById('shipment');

	    // Ẩn/Hiển thị nút check dựa trên việc nhập liệu
	    discountInput.addEventListener('input', function() {
	        if (discountInput.value.trim() === '') {
	            checkButton.style.display = 'none';
	        } else {
	            checkButton.style.display = 'block';
	        }
	    });

	    // Xử lý sự kiện khi ấn nút Check
	    checkButton.addEventListener('click', function() {
	        var inputValue = discountInput.value.trim();
	        var discountList = document.querySelectorAll('.discount');
	        var foundDiscount = false;
	        var discountValue = 0;

	        // Kiểm tra xem mã giảm giá có trong danh sách hay không
	        discountList.forEach(function(discount) {
	            var discountCode = discount.querySelector('p:first-child').textContent.trim();
	            var discountValueElement = discount.querySelector('p:last-child').textContent.trim();

	            if (discountCode === inputValue) {
	                foundDiscount = true;
	                discountValue = parseFloat(discountValueElement);
	            }
	        });

	        // Cập nhật giá trị giảm giá và giá sau giảm giá
	        if (foundDiscount) {
	            valueDiscount.innerHTML = 'Giảm giá <span>(' + discountValue + ') %</span>';
	            var totalPrice = parseFloat(totalPriceElement.textContent.replace('₫', '').replace(',', '').trim());
	            var discountPriceValue = totalPrice / 100 * discountValue;
	            discountPrice.innerHTML = '<span class="fas fa-dollar-sign"></span>' + discountPriceValue.toLocaleString() + 'đ';
	            var priceAfterDiscountValue = totalPrice - discountPriceValue;
	            var totalPriceWithShipping = priceAfterDiscountValue + 30000; // Giả sử phí vận chuyển là 30000đ
	            priceAfterDiscountElement.innerHTML = '<span class="fas fa-dollar-sign"></span>' + totalPriceWithShipping.toLocaleString() + 'đ';
	            paymentButton.innerHTML = 'Thanh toán<span class="fas fa-dollar-sign px-1"></span>' + totalPriceWithShipping.toLocaleString() + 'đ';
	        } else {
	            valueDiscount.innerHTML = 'Giảm giá <span>(0) %</span>';
	            discountPrice.innerHTML = '<span class="fas fa-dollar-sign"></span>0 đ';
	            var totalPriceWithShipping = parseFloat(totalPriceElement.textContent.replace('₫', '').replace(',', '').trim()) + 30000; // Giả sử phí vận chuyển là 30000đ
	            priceAfterDiscountElement.innerHTML = '<span class="fas fa-dollar-sign"></span>' + totalPriceWithShipping.toLocaleString() + 'đ';
	            paymentButton.innerHTML = 'Thanh toán<span class="fas fa-dollar-sign px-1"></span>' + totalPriceWithShipping.toLocaleString() + 'đ';
	        }
	    });
	});

	</script>
</body>

</html>