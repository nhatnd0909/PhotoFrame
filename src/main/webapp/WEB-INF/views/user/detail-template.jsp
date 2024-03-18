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

<!-- Libraries Stylesheet -->
<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<!-- Customized Bootstrap Stylesheet -->
<link href="lib/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="lib/css/style.css" rel="stylesheet">
<style>
@import
	url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);

/*reset css*/
div, label {
	margin: 0;
	padding: 0;
}

body {
	margin: 20px;
}

h1 {
	font-size: 1.5em;
	margin: 10px;
}

/****** Style Star Rating Widget *****/
#rating {
	border: none;
	float: left;
}

#rating>input {
	display: none;
}

/*ẩn input radio - vì chúng ta đã có label là GUI*/
#rating>label:before {
	margin: 5px;
	font-size: 1.25em;
	font-family: FontAwesome;
	display: inline-block;
	content: "\f005";
}

/*1 ngôi sao*/
#rating>.half:before {
	content: "\f089";
	position: absolute;
}

/*0.5 ngôi sao*/
#rating>label {
	color: #ddd;
	float: right;
}

/*float:right để lật ngược các ngôi sao lại đúng theo thứ tự trong thực tế*/
/*thêm màu cho sao đã chọn và các ngôi sao phía trước*/
#rating>input:checked ~label, #rating:not(:checked)>label:hover, #rating:not(:checked)>label:hover
	 ~label {
	color: #FFD700;
}

/* Hover vào các sao phía trước ngôi sao đã chọn*/
#rating>input:checked+label:hover, #rating>input:checked ~label:hover,
	#rating>label:hover ~input:checked ~label, #rating>input:checked ~label:hover
	 ~label {
	color: #FFED85;
}
</style>
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
							<li class=""><a href="/">Trang Chủ</a></li>
							<li class=""><a href="template">Dịch Vụ</a></li>
							<li class=""><a href="contact-us">Liên hệ</a></li>
							<c:if test="${logged eq 0}">
								<li class=""><a href="login" class="active">Đăng Nhập</a></li>
							</c:if>
							<c:if test="${logged eq 1}">
								<span>
									<li class="has-sub"><a href="javascript:void(0)"><i
											class="fa-solid fa-user" class="active"></i>Hi! ${username}</a>
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
	<!-- ***** Header Area End ***** -->

	<!-- Single Product Start -->


	<div class="container-fluid py-5 mt-5">
		<div class="container py-5">
			<div style="margin-bottom: 50px; margin-top: 50px;">
				<h1 class="fw-bold mb-0" style="color: #FF9999 !important;">Chi
					tiết sản phẩm</h1>
			</div>
			<div class="row g-4 mb-5">
				<div class="col-lg-12 col-xl-12">
					<div class="row g-4">
						<div class="col-lg-6">
							<div class="border rounded">
								<img src="assets/images/${product.getMainImg()}"
									class="img-fluid rounded" alt="Image">
							</div>
						</div>
						<div class="col-lg-6">
							<h4 class="fw-bold mb-3">${product.getName()}</h4>
							<p class="mb-3">Phân loại: ${product.getType()}</p>
							<h5 class="fw-bold mb-3">${product.getPrice()}Đ</h5>
							<div class="d-flex mb-4">
								<i class="fa fa-star text-secondary"></i> <i
									class="fa fa-star text-secondary"></i> <i
									class="fa fa-star text-secondary"></i> <i
									class="fa fa-star text-secondary"></i> <i class="fa fa-star"></i>
							</div>
							<p class="mb-4">${product.getDescrible()}</p>
							<a href="edit-template?id=${product.getProductID()}"
								class="btn border border-secondary rounded-pill px-4 py-2 mb-4 text-primary"><i
								class="fa fa-shopping-bag me-2 text-primary"></i>Chọn mẫu này</a>
						</div>
						<div class="row" style="margin-top: 20px;">
							<div class="col-lg-3 col-sm-6">
								<div class="border rounded">
									<img src="assets/images/${product.getImg1()}"
										class="img-fluid rounded" alt="Image">
								</div>
							</div>
							<div class="col-lg-3 col-sm-6">
								<div class="border rounded">
									<img src="assets/images/${product.getImg2()}"
										class="img-fluid rounded" alt="Image">
								</div>
							</div>
							<div class="col-lg-3 col-sm-6">
								<div class="border rounded">
									<img src="assets/images/${product.getImg3()}"
										class="img-fluid rounded" alt="Image">
								</div>
							</div>
							<div class="col-lg-3 col-sm-6">
								<div class="border rounded">
									<img src="assets/images/${product.getImg4()}"
										class="img-fluid rounded" alt="Image">
								</div>
							</div>
						</div>

						<div class="col-lg-12">
							<nav>
								<div class="nav nav-tabs mb-3">
									<button class="nav-link active border-white border-bottom-0"
										type="button" role="tab" id="nav-about-tab"
										data-bs-toggle="tab" data-bs-target="#nav-about"
										aria-controls="nav-about" aria-selected="true">Mô tả</button>
									<button class="nav-link border-white border-bottom-0"
										type="button" role="tab" id="nav-mission-tab"
										data-bs-toggle="tab" data-bs-target="#nav-mission"
										aria-controls="nav-mission" aria-selected="false">Đánh
										giá</button>
								</div>
							</nav>
							<div class="tab-content mb-5">
								<div class="tab-pane active" id="nav-about" role="tabpanel"
									aria-labelledby="nav-about-tab">
									<p>${product.getDescrible()}</p>
									<div class="px-2">
										<div class="row g-4">
											<div class="col-6">
												<div
													class="row bg-light align-items-center text-center justify-content-center py-2">
													<div class="col-6">
														<p class="mb-0">Khối lượng</p>
													</div>
													<div class="col-6">
														<p class="mb-0">${product.getWeight()}kg</p>
													</div>
												</div>
												<div
													class="row text-center align-items-center justify-content-center py-2">
													<div class="col-6">
														<p class="mb-0">Chiều dài</p>
													</div>
													<div class="col-6">
														<p class="mb-0">${product.getLength()}cm</p>
													</div>
												</div>
												<div
													class="row bg-light text-center align-items-center justify-content-center py-2">
													<div class="col-6">
														<p class="mb-0">Chiều rộng</p>
													</div>
													<div class="col-6">
														<p class="mb-0">${product.getWidth()}cm</p>
													</div>
												</div>
												<div
													class="row text-center align-items-center justify-content-center py-2">
													<div class="col-6">
														<p class="mb-0">Chất liệu</p>
													</div>
													<div class="col-6">
														<p class="mb-0">${product.getMaterial()}</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="nav-mission" role="tabpanel"
									aria-labelledby="nav-mission-tab">
									<c:forEach items="${listComment}" var="comment">
										<div class="d-flex">
											<img
												src="assets/images/${comment.getCustomer().getUrlImage()}"
												class="img-fluid rounded-circle p-3"
												style="width: 100px; height: 100px;" alt="">
											<div class="">
												<p class="mb-2" style="font-size: 14px;">${comment.getDate()}</p>
												<div class="d-flex justify-content-between">
													<h5>${comment.getCustomer().getName()}</h5>
													<c:choose>
														<c:when test="${comment.rating == 1}">
															<div class="d-flex mb-3" style="margin-left: 50px">
																<i class="fa fa-star text-secondary"></i> <i
																	class="fa fa-star "></i> <i class="fa fa-star "></i> <i
																	class="fa fa-star "></i> <i class="fa fa-star"></i>
															</div>
														</c:when>
														<c:when test="${comment.rating == 2}">
															<div class="d-flex mb-3" style="margin-left: 50px">
																<i class="fa fa-star text-secondary"></i> <i
																	class="fa fa-star "></i> <i class="fa fa-star "></i> <i
																	class="fa fa-star "></i> <i class="fa fa-star"></i>
															</div>
														</c:when>
														<c:when test="${comment.rating == 3}">
															<div class="d-flex mb-3" style="margin-left: 50px">
																<i class="fa fa-star text-secondary"></i> <i
																	class="fa fa-star text-secondary"></i> <i
																	class="fa fa-star text-secondary"></i> <i
																	class="fa fa-star "></i> <i class="fa fa-star"></i>
															</div>
														</c:when>
														<c:when test="${comment.rating == 4}">
															<div class="d-flex mb-3" style="margin-left: 50px">
																<i class="fa fa-star text-secondary"></i> <i
																	class="fa fa-star text-secondary"></i> <i
																	class="fa fa-star text-secondary"></i> <i
																	class="fa fa-star text-secondary"></i> <i
																	class="fa fa-star"></i>
															</div>
														</c:when>
														<c:when test="${comment.rating == 5}">
															<div class="d-flex mb-3" style="margin-left: 50px">
																<i class="fa fa-star text-secondary"></i> <i
																	class="fa fa-star text-secondary"></i> <i
																	class="fa fa-star text-secondary"></i> <i
																	class="fa fa-star text-secondary"></i> <i
																	class="fa fa-star text-secondary"></i>
															</div>
														</c:when>
														<c:otherwise>
															<p>Rating: Unknown</p>
														</c:otherwise>
													</c:choose>
												</div>
												<p>${comment.content}</p>
											</div>
										</div>
									</c:forEach>

								</div>
								<div class="tab-pane" id="nav-vision" role="tabpanel">
									<p class="text-dark">Tempor erat elitr rebum at clita. Diam
										dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos
										labore. 3</p>
									<p class="mb-0">Diam dolor diam ipsum et tempor sit. Aliqu
										diam amet diam et eos labore. Clita erat ipsum et lorem et sit</p>
								</div>
							</div>
						</div>
						<form action="comment" method="post">
							<h4 class="mb-5 fw-bold">Đánh giá sản phẩm</h4>
							<div class="row g-4">
								<input name="productId" type="text" value="${product.productID}"
									hidden="">

								<div class="col-lg-6">
									<div class="border-bottom rounded">
										<input name="name" type="text"
											class="form-control border-0 me-4" placeholder="Họ và tên *">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="border-bottom rounded">
										<input name="email" type="email" class="form-control border-0"
											placeholder="Email *">
									</div>
								</div>
								<div class="col-lg-12">
									<div class="border-bottom rounded my-4">
										<textarea name="comment" id="" class="form-control border-0"
											cols="30" rows="8" placeholder="Ý kiến của bạn *"
											spellcheck="false"></textarea>
									</div>
								</div>
								<div class="col-lg-12">
									<div class="d-flex justify-content-between py-3 mb-5">
										<div class="d-flex align-items-center">
											<p class="mb-0 me-3">Đánh giá</p>
											<div id="rating">
												<input type="radio" id="star5" name="rating" value="5" /> <label
													class="full" for="star5" title="Awesome - 5 stars"></label>
												<input type="radio" id="star4" name="rating" value="4" /> <label
													class="full" for="star4" title="Pretty good - 4 stars"></label>
												<input type="radio" id="star3" name="rating" value="3" /> <label
													class="full" for="star3" title="Meh - 3 stars"></label> <input
													type="radio" id="star2" name="rating" value="2" /> <label
													class="full" for="star2" title="Kinda bad - 2 stars"></label>
												<input type="radio" id="star1" name="rating" value="1" /> <label
													class="full" for="star1" title="Sucks big time - 1 star"></label>
											</div>
										</div>
										<c:choose>
											<c:when test="${checUserOrder eq true}">
												<input
													class="btn border border-secondary text-primary rounded-pill px-4 py-3"
													type="submit" value="Đăng bình luận">
											</c:when>
											<c:otherwise>
												<input
													class="btn border border-secondary text-primary rounded-pill px-4 py-3"
													type="submit" value="Đăng bình luận" disabled="disabled">
											</c:otherwise>
										</c:choose>

									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<h1 class="fw-bold mb-0">Sản phẩm tương tự</h1>
			<div class="vesitable">
				<div class="owl-carousel vegetable-carousel justify-content-center">
					<div
						class="border border-primary rounded position-relative vesitable-item">
						<div class="vesitable-img">
							<img src="assets/images/template1.png"
								class="img-fluid w-100 rounded-top" alt="">
						</div>
						<div
							class="text-white bg-primary px-3 py-1 rounded position-absolute"
							style="top: 10px; right: 10px;">Gia Đình</div>
						<div class="p-4 pb-0 rounded-bottom">
							<h4>Mẫu 1</h4>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit
								sed do eiusmod te incididunt</p>
							<div class="d-flex justify-content-between flex-lg-wrap">
								<p class="text-dark fs-5 fw-bold">180.000 Đ</p>
								<a href="#"
									class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
									class="fa fa-shopping-bag me-2 text-primary"></i>Xem chi tiết</a>
							</div>
						</div>
					</div>
					<div
						class="border border-primary rounded position-relative vesitable-item">
						<div class="vesitable-img">
							<img src="assets/images/template1.png"
								class="img-fluid w-100 rounded-top" alt="">
						</div>
						<div
							class="text-white bg-primary px-3 py-1 rounded position-absolute"
							style="top: 10px; right: 10px;">Gia Đình</div>
						<div class="p-4 pb-0 rounded-bottom">
							<h4>Mẫu 1</h4>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit
								sed do eiusmod te incididunt</p>
							<div class="d-flex justify-content-between flex-lg-wrap">
								<p class="text-dark fs-5 fw-bold">180.000 Đ</p>
								<a href="#"
									class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
									class="fa fa-shopping-bag me-2 text-primary"></i>Xem chi tiết</a>
							</div>
						</div>
					</div>
					<div
						class="border border-primary rounded position-relative vesitable-item">
						<div class="vesitable-img">
							<img src="assets/images/template1.png"
								class="img-fluid w-100 rounded-top" alt="">
						</div>
						<div
							class="text-white bg-primary px-3 py-1 rounded position-absolute"
							style="top: 10px; right: 10px;">Gia Đình</div>
						<div class="p-4 pb-0 rounded-bottom">
							<h4>Mẫu 1</h4>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit
								sed do eiusmod te incididunt</p>
							<div class="d-flex justify-content-between flex-lg-wrap">
								<p class="text-dark fs-5 fw-bold">180.000 Đ</p>
								<a href="#"
									class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
									class="fa fa-shopping-bag me-2 text-primary"></i>Xem chi tiết</a>
							</div>
						</div>
					</div>
					<div
						class="border border-primary rounded position-relative vesitable-item">
						<div class="vesitable-img">
							<img src="assets/images/template1.png"
								class="img-fluid w-100 rounded-top" alt="">
						</div>
						<div
							class="text-white bg-primary px-3 py-1 rounded position-absolute"
							style="top: 10px; right: 10px;">Gia Đình</div>
						<div class="p-4 pb-0 rounded-bottom">
							<h4>Mẫu 1</h4>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit
								sed do eiusmod te incididunt</p>
							<div class="d-flex justify-content-between flex-lg-wrap">
								<p class="text-dark fs-5 fw-bold">180.000 Đ</p>
								<a href="#"
									class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
									class="fa fa-shopping-bag me-2 text-primary"></i>Xem chi tiết</a>
							</div>
						</div>
					</div>
					<div
						class="border border-primary rounded position-relative vesitable-item">
						<div class="vesitable-img">
							<img src="assets/images/template1.png"
								class="img-fluid w-100 rounded-top" alt="">
						</div>
						<div
							class="text-white bg-primary px-3 py-1 rounded position-absolute"
							style="top: 10px; right: 10px;">Gia Đình</div>
						<div class="p-4 pb-0 rounded-bottom">
							<h4>Mẫu 1</h4>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit
								sed do eiusmod te incididunt</p>
							<div class="d-flex justify-content-between flex-lg-wrap">
								<p class="text-dark fs-5 fw-bold">180.000 Đ</p>
								<a href="#"
									class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
									class="fa fa-shopping-bag me-2 text-primary"></i>Xem chi tiết</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Single Product End -->

	<section class="contact-us">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div id="map">
						<!-- You just need to go to Google Maps for your own map point, and copy the embed code from Share -> Embed a map section -->
						<iframe
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3835.85606931642!2d108.25831637459808!3d15.968891042117235!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142116949840599%3A0x365b35580f52e8d5!2sFPT%20University%20Danang!5e0!3m2!1sen!2s!4v1705810145561!5m2!1sen!2s"
							width="100%" height="420px" frameborder="0"
							style="border: 0; border-radius: 15px; position: relative; z-index: 2;"
							allowfullscreen=""></iframe>
						<div class="row">
							<div class="col-lg-4 offset-lg-1">
								<div class="contact-info">
									<div class="icon">
										<i class="fa fa-phone"></i>
									</div>
									<h4>Số Điện Thoại</h4>
									<span>010-020-0340</span>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="contact-info">
									<div class="icon">
										<i class="fa fa-envelope"></i>
									</div>
									<h4>Email</h4>
									<span>asd@gmail.com</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<form id="contact" action="" method="post">
						<div class="row">
							<div class="col-lg-12">
								<div class="section-heading">
									<h6>LIÊN HỆ CHÚNG TÔI</h6>
									<h4>
										Say <em>Hello</em>
									</h4>
									<p>Nếu bạn có ý kiến muốn phản hồi hãy để lại nội dung ở
										mẫu dưới đây</p>
								</div>
							</div>
							<div class="col-lg-12">
								<fieldset>
									<input type="name" name="name" id="name"
										placeholder="Họ và Tên" autocomplete="on" required>
								</fieldset>
							</div>
							<div class="col-lg-12">
								<fieldset>
									<input type="text" name="email" id="email"
										pattern="[^ @]*@[^ @]*" placeholder="Email" required="">
								</fieldset>
							</div>
							<div class="col-lg-12">
								<fieldset>
									<textarea name="message" id="message" placeholder="Nội Dung"></textarea>
								</fieldset>
							</div>
							<div class="col-lg-12">
								<fieldset>
									<button type="submit" id="form-submit"
										class="main-gradient-button">Send Message</button>
								</fieldset>
							</div>
						</div>
					</form>
				</div>
				<div class="col-lg-12">
					<ul class="social-icons">
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#"><i class="fa fa-rss"></i></a></li>
						<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
					</ul>
				</div>
				<div class="col-lg-12">
					<p class="copyright">
						Copyright © 2022 EduWell Co., Ltd. All Rights Reserved. <br>Design:
						<a rel="sponsored" href="https://templatemo.com" target="_blank">TemplateMo</a>
					</p>
				</div>
			</div>
		</div>
	</section>

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
</body>

</html>