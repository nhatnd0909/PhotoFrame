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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>EduWell - Education HTML5 Template</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-eduwell-style.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/lightbox.css">
<!-- css slide -->
<link rel="stylesheet" href="assets/css/slide.css">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
	rel="stylesheet">
<!-- Icon Font Stylesheet -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">
<!-- Libraries Stylesheet -->
<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<!-- Customized Bootstrap Stylesheet -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<!-- Template Stylesheet -->
<link href="assets/css/template.css" rel="stylesheet">
</head>

<body>


	<!-- ***** Header Area Start ***** -->
	<header class="header-area header-sticky">
		<div class="container">
			<div class="row">
				<div class="col-12 d-flex">
					<nav class="main-nav">
						<div class="">
							<!-- ***** Logo Start ***** -->
							<a href="index" class="logo"> <img
								src="assets/images/logo.png" alt="EduWell Template"
								style="max-width: 50px"> <span style="font-size: 20px">Sparkle
									Memo</span>
							</a>
							<!-- ***** Logo End ***** -->
						</div>
						<div class="" style="margin-left: 500px">
							<!-- ***** Menu Start ***** -->
							<ul class="nav">
								<li class="scroll-to-section"><a href="/" class="active">Trang
										Chủ</a></li>
								<li class=""><a href="template">Dịch Vụ</a></li>
								<li class=""><a href="contact-us">Liên hệ</a></li>
								<c:if test="${logged eq 0}">
									<li class=""><a href="login">Đăng Nhập</a></li>
								</c:if>
								<c:if test="${logged eq 1}">
									<span>
										<li class="has-sub"><a href="javascript:void(0)"><i
												class="fa-solid fa-user"></i>${username}</a>
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
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ***** Header Area End ***** -->

	<!-- Slide -->
	<section class="w3l-main-slider position-relative" id="home"
		style="margin-top: 10px;">
		<!--/breadcrumbs -->
		<div class="w3l-breadcrumbs">
			<nav id="breadcrumbs" class="breadcrumbs">
				<div class="container page-wrapper">
					<a href="index">Trang chủ</a> » <span class="breadcrumb_last"
						aria-current="page"> Dịch vụ</span>
				</div>
			</nav>
		</div>

		<div class="companies20-content">
			<div class="owl-one owl-carousel owl-theme">
				<div class="item">
					<li>
						<div class="slider-info banner-view bg bg2">
							<div class="banner-info">
								<h3>Chào Mừng Đến Với Shop Của Chúng Tôi</h3>
								<p>
									Shop của chúng tôi bán những khung tranh được thiết kế sẵn. <span
										class="over-para"> Khách hàng có thể lựa chọn sản phẩm
										và thiết kế tùy ý.</span>
								</p>
								<a href="#small-dialog1" class="popup-with-zoom-anim play-view1">
									<span class="video-play-icon"> <span class="fa fa-play"></span>
								</span>
									<h6>Watch Trailer</h6>
								</a>
								<div id="small-dialog1" class="zoom-anim-dialog mfp-hide">
									<iframe src="https://player.vimeo.com/video/358205676"
										allow="autoplay; fullscreen" allowfullscreen=""></iframe>
								</div>
							</div>
						</div>
					</li>
				</div>
				<div class="item">
					<li>
						<div class="slider-info  banner-view banner-top1 bg bg2">
							<div class="banner-info">
								<h3>Chào Mừng Đến Với Shop Của Chúng Tôi</h3>
								<p>
									Shop của chúng tôi bán những khung tranh được thiết kế sẵn. <span
										class="over-para"> Khách hàng có thể lựa chọn sản phẩm
										và thiết kế tùy ý.</span>
								</p>
								<a href="#small-dialog2" class="popup-with-zoom-anim play-view1">
									<span class="video-play-icon"> <span class="fa fa-play"></span>
								</span>
									<h6>Watch Trailer</h6>
								</a>
								<div id="small-dialog2" class="zoom-anim-dialog mfp-hide">
									<iframe src="https://player.vimeo.com/video/395376850"
										allow="autoplay; fullscreen" allowfullscreen=""></iframe>
								</div>
							</div>
						</div>
					</li>
				</div>
				<div class="item">
					<li>
						<div class="slider-info banner-view banner-top2 bg bg2">
							<div class="banner-info">
								<h3>Chào Mừng Đến Với Shop Của Chúng Tôi</h3>
								<p>
									Shop của chúng tôi bán những khung tranh được thiết kế sẵn. <span
										class="over-para"> Khách hàng có thể lựa chọn sản phẩm
										và thiết kế tùy ý.</span>
								</p>
								<a href="#small-dialog3" class="popup-with-zoom-anim play-view1">
									<span class="video-play-icon"> <span class="fa fa-play"></span>
								</span>
									<h6>Watch Trailer</h6>
								</a>
								<div id="small-dialog3" class="zoom-anim-dialog mfp-hide">
									<iframe src="https://player.vimeo.com/video/389969665"
										allow="autoplay; fullscreen" allowfullscreen=""></iframe>
								</div>
							</div>
						</div>
					</li>
				</div>
				<div class="item">
					<li>
						<div class="slider-info banner-view banner-top3 bg bg2">
							<div class="banner-info">
								<h3>Chào Mừng Đến Với Shop Của Chúng Tôi</h3>
								<p>
									Shop của chúng tôi bán những khung tranh được thiết kế sẵn. <span
										class="over-para"> Khách hàng có thể lựa chọn sản phẩm
										và thiết kế tùy ý.</span>
								</p>
								<a href="#small-dialog4" class="popup-with-zoom-anim play-view1">
									<span class="video-play-icon"> <span class="fa fa-play"></span>
								</span>
									<h6>Watch Trailer</h6>
								</a>
								<div id="small-dialog4" class="zoom-anim-dialog mfp-hide">
									<iframe src="https://player.vimeo.com/video/323491174"
										allow="autoplay; fullscreen" allowfullscreen=""></iframe>
								</div>
							</div>
						</div>
					</li>
				</div>
			</div>
		</div>
	</section>

	<!-- Mẫu Nổi Bật-->
	<div class="container-fluid fruite py-5">
		<div class="container py-5">
			<div class="tab-class text-center">
				<div class="row g-4">
					<div class="col-lg-4 text-start">
						<h1 style="color: #FF9999 !important; margin-bottom: 30px;">Mẫu
							Nổi Bật</h1>
					</div>
					<div class="col-lg-8 text-end"></div>
				</div>
				<div class="tab-content">
					<div id="tab-1" class="tab-pane fade show p-0 active">
						<div class="row g-4">
							<div class="col-lg-12">
								<div class="row g-4">
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Gia Đình</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 1</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">180.000đ</p>
													<a href="detail-template?idProduct=4"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i>Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Người Thân</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 2</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">150.000đ</p>
													<a href="detail-template?idProduct=4"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Người Yêu</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 3</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">200.000đ</p>
													<a href="detail-template?idProduct=4"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Bạn Bè</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 4</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">180.000đ</p>
													<a href="detail-template"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Fruits Shop End-->

	<!-- Tất Cả Mẫu-->
	<div class="container-fluid fruite py-5">
		<div class="container py-5">
			<div class="tab-class text-center">
				<div class="row g-4">
					<div class="col-lg-4 text-start">
						<h1 style="color: #FF9999 !important;">Tất Cả Mẫu</h1>
					</div>
					<div class="col-lg-8 text-end" style="display: none">
						<ul class="nav nav-pills d-inline-flex text-center mb-5">
							<li class="nav-item"><a
								class="d-flex m-2 py-2 bg-light rounded-pill active"
								data-bs-toggle="pill" href="#tab-1"> <span class="text-dark"
									style="width: 130px;">Tất Cả</span>
							</a></li>
							<li class="nav-item"><a
								class="d-flex py-2 m-2 bg-light rounded-pill"
								data-bs-toggle="pill" href="#tab-2"> <span class="text-dark"
									style="width: 130px;">Gia Đình</span>
							</a></li>
							<li class="nav-item"><a
								class="d-flex m-2 py-2 bg-light rounded-pill"
								data-bs-toggle="pill" href="#tab-3"> <span class="text-dark"
									style="width: 130px;">Bản Thân</span>
							</a></li>
							<li class="nav-item"><a
								class="d-flex m-2 py-2 bg-light rounded-pill"
								data-bs-toggle="pill" href="#tab-4"> <span class="text-dark"
									style="width: 130px;">Bạn Bè</span>
							</a></li>
							<li class="nav-item"><a
								class="d-flex m-2 py-2 bg-light rounded-pill"
								data-bs-toggle="pill" href="#tab-5"> <span class="text-dark"
									style="width: 130px;">Người Yêu</span>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="tab-content">
					<div id="tab-1" class="tab-pane fade show p-0 active">
						<div class="row g-4">
							<div class="col-lg-12">
								<div class="row g-4">
									<c:forEach items="${listAllProduct}" var="product">
										<div class="col-md-6 col-lg-4 col-xl-3">
											<div class="rounded position-relative fruite-item">
												<div class="fruite-img">
													<img src="assets/images/${product.mainImg}"
														class="img-fluid w-100 rounded-top" alt="">
												</div>
												<div
													class="text-white bg-secondary px-3 py-1 rounded position-absolute"
													style="top: 10px; left: 10px;">${product.type}</div>
												<div
													class="p-4 border border-secondary border-top-0 rounded-bottom">
													<h4>${product.name}</h4>
													<p>${product.describle}</p>
													<div class="d-flex justify-content-between flex-lg-wrap">
														<p class="text-dark fs-5 fw-bold mb-0">${product.price}
															đ</p>
														<a href="detail-template?idProduct=${product.productID}"
															class="btn border border-secondary rounded-pill px-3 text-primary"><i
															class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>

									<!-- <div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Gia Đình</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 1</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">100.000đ</p>
													<a href="#"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Gia Đình</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 1</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">100.000đ</p>
													<a href="#"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Gia Đình</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 1</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">100.000đ</p>
													<a href="#"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Gia Đình</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 1</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">100.000đ</p>
													<a href="#"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Gia Đình</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 1</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">100.000đ</p>
													<a href="#"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Gia Đình</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 1</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">100.000đ</p>
													<a href="#"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Gia Đình</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 1</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">100.000đ</p>
													<a href="#"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Gia Đình</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 1</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">100.000đ</p>
													<a href="#"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div> -->
								</div>
							</div>
						</div>
					</div>


					<!-- <div id="tab-2" class="tab-pane fade show p-0">
						<div class="row g-4">
							<div class="col-lg-12">
								<div class="row g-4">
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Gia Đình</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 1</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">100.000đ</p>
													<a href="#"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Gia Đình</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 1</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">100.000đ</p>
													<a href="#"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="tab-3" class="tab-pane fade show p-0">
						<div class="row g-4">
							<div class="col-lg-12">
								<div class="row g-4">
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Bản Thân</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 1</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">100.000đ</p>
													<a href="#"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Bản Thân</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 1</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">100.000đ</p>
													<a href="#"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="tab-4" class="tab-pane fade show p-0">
						<div class="row g-4">
							<div class="col-lg-12">
								<div class="row g-4">
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Bạn Bè</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 1</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">100.000đ</p>
													<a href="#"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Bạn Bè</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 1</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">100.000đ</p>
													<a href="#"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="tab-5" class="tab-pane fade show p-0">
						<div class="row g-4">
							<div class="col-lg-12">
								<div class="row g-4">
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Người Yêu</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 1</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">100.000đ</p>
													<a href="#"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Người Yêu</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 1</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">100.000đ</p>
													<a href="#"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-lg-4 col-xl-3">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<img src="assets/images/template1.png"
													class="img-fluid w-100 rounded-top" alt="">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">Người Yêu</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>Mẫu 1</h4>
												<p>Lorem ipsum dolor sit amet consectetur adipisicing
													elit sed do eiusmod te incididunt</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">100.000đ</p>
													<a href="#"
														class="btn border border-secondary rounded-pill px-3 text-primary"><i
														class="fa fa-eye me-2 text-primary"></i> Xem chi tiết</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div> -->
				</div>
			</div>
		</div>
	</div>
	<!-- Fruits Shop End-->

	<section class="contact-us" id="contact-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div id="map">

						<!-- You just need to go to Google Maps for your own map point, and copy the embed code from Share -> Embed a map section -->
						<iframe
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7151.84524236698!2d-122.19494600413192!3d47.56605883252286!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5490695e625f8965%3A0xf99b055e76477def!2sNewcastle%20Beach%20Park%20Playground%2C%20Bellevue%2C%20WA%2098006%2C%20USA!5e0!3m2!1sen!2sth!4v1644335269264!5m2!1sen!2sth"
							width="100%" height="420px" frameborder="0"
							style="border: 0; border-radius: 15px; position: relative; z-index: 2;"
							allowfullscreen=""></iframe>
						<div class="row">
							<div class="col-lg-4 offset-lg-1">
								<div class="contact-info">
									<div class="icon">
										<i class="fa fa-phone"></i>
									</div>
									<h4>Phone</h4>
									<span>010-020-0340</span>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="contact-info">
									<div class="icon">
										<i class="fa fa-phone"></i>
									</div>
									<h4>Mobile</h4>
									<span>090-080-0760</span>
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
									<h6>Contact us</h6>
									<h4>
										Say <em>Hello</em>
									</h4>
									<p>IF you need a working contact form by PHP script, please
										visit TemplateMo's contact page for more info.</p>
								</div>
							</div>
							<div class="col-lg-12">
								<fieldset>
									<input type="name" name="name" id="name"
										placeholder="Full Name" autocomplete="on" required>
								</fieldset>
							</div>
							<div class="col-lg-12">
								<fieldset>
									<input type="text" name="email" id="email"
										pattern="[^ @]*@[^ @]*" placeholder="Your Email" required="">
								</fieldset>
							</div>
							<div class="col-lg-12">
								<fieldset>
									<textarea name="message" id="message"
										placeholder="Your Message"></textarea>
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
						<br>Distribution: <a rel="sponsored"
							href="https://themewagon.com" target="_blank">ThemeWagon</a>
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

	<!-- script for banner slider-->
	<script>
		$(document).ready(function() {
			$('.owl-one').owlCarousel({
				stagePadding : 280,
				loop : true,
				margin : 20,
				nav : true,
				responsiveClass : true,
				autoplay : true,
				autoplayTimeout : 5000,
				autoplaySpeed : 1000,
				autoplayHoverPause : false,
				responsive : {
					0 : {
						items : 1,
						stagePadding : 40,
						nav : false
					},
					480 : {
						items : 1,
						stagePadding : 60,
						nav : true
					},
					667 : {
						items : 1,
						stagePadding : 80,
						nav : true
					},
					1000 : {
						items : 1,
						nav : true
					}
				}
			})
		})
	</script>
	<script>
		$(document).ready(function() {
			$('.owl-three').owlCarousel({
				loop : true,
				margin : 20,
				nav : false,
				responsiveClass : true,
				autoplay : true,
				autoplayTimeout : 5000,
				autoplaySpeed : 1000,
				autoplayHoverPause : false,
				responsive : {
					0 : {
						items : 2,
						nav : false
					},
					480 : {
						items : 2,
						nav : true
					},
					667 : {
						items : 3,
						nav : true
					},
					1000 : {
						items : 5,
						nav : true
					}
				}
			})
		})
	</script>
	<script>
		$(document).ready(function() {
			$('.owl-mid').owlCarousel({
				loop : true,
				margin : 0,
				nav : false,
				responsiveClass : true,
				autoplay : true,
				autoplayTimeout : 5000,
				autoplaySpeed : 1000,
				autoplayHoverPause : false,
				responsive : {
					0 : {
						items : 1,
						nav : false
					},
					480 : {
						items : 1,
						nav : false
					},
					667 : {
						items : 1,
						nav : true
					},
					1000 : {
						items : 1,
						nav : true
					}
				}
			})
		})
	</script>

	<!-- content -->
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script> -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/lightbox/js/lightbox.min.js"></script>
	<!-- <script src="lib/owlcarousel/owl.carousel.min.js"></script> -->
</body>

</html>