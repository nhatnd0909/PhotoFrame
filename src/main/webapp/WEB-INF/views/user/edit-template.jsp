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
<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css'
	rel='stylesheet'>

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
<link rel="stylesheet" href="assets/css/upload-image.css">
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
	<header class="header-area fixed-top">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="main-nav">
						<!-- ***** Logo Start ***** -->
						<a href="index" class="logo"> <img
							src="assets/images/templatemo-eduwell.png" alt="EduWell Template">
						</a>
						<!-- ***** Logo End ***** -->
						<!-- ***** Menu Start ***** -->
						<ul class="nav">
							<li class=""><a href="index">Trang Chủ</a></li>
							<li class=""><a href="template" class="active">Dịch vụ</a></li>
							<li class=""><a href="contact-us">Liên hệ</a></li>
							<c:if test="${logged eq 0}">
								<li class=""><a href="login">Đăng Nhập</a></li>
							</c:if>
							<c:if test="${logged eq 1}">
								<span>
									<li class="has-sub"><a href="javascript:void(0)"><i
											class="fa-solid fa-user"></i> Người Dùng</a>
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
			<div style="margin-bottom: 50px; margin-top: 50px;">
				<h1 class="fw-bold mb-0" style="color: #FF9999 !important;">Chỉnh
					Sửa Sản Phẩm</h1>
			</div>
			<div class="row g-4 mb-5">
				<div class="col-lg-12 col-xl-12">
					<div class="row g-4">

						<div class="col-lg-6">
							<div
								style="position: relative; width: 100%; height: 0; padding-top: 70.9459%; padding-bottom: 0; box-shadow: 0 2px 8px 0 rgba(63, 69, 81, 0.16); margin-top: margin-bottom: 0.9em; overflow: hidden; border-radius: 8px; will-change: transform;">
								<iframe loading="lazy"
									style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0;"
									src="${product.urlCanva}" allowfullscreen="allowfullscreen"
									allow="fullscreen"> </iframe>
							</div>

						</div>
						<div class="col-lg-6">
							<h4 class="fw-bold mb-3">${product.name}</h4>
							<p class="mb-3">Phân loại: ${product.type}</p>
							<h5 class="fw-bold mb-3">${product.price}Đ</h5>
							<div class="d-flex mb-4">
								<i class="fa fa-star text-secondary"></i> <i
									class="fa fa-star text-secondary"></i> <i
									class="fa fa-star text-secondary"></i> <i
									class="fa fa-star text-secondary"></i> <i class="fa fa-star"></i>
							</div>
							<p class="mb-4">${product.describle}</p>
						</div>
						<form action="">
							<!-- <div class="row" style="margin-top: 20px;">
								<h3 style="color: #FF9999; margin-bottom: 50px;">Chọn ảnh</h3>
								<div class="col-lg-4 col-sm-6">
									<div class="border rounded">
										<div class="upload-file">
											<input type="file" id="file" accept="image/*" name="image1"
												hidden>
											<div class="img-area" data-img="">
												<i class='bx bxs-cloud-upload icon'></i>
												<h3>Thêm ảnh 1</h3>
												<p>
													Kích thước hình ảnh phải nhỏ hơn <span>5MB</span>
												</p>
											</div>
											<button class="select-image">Chọn ảnh</button>
											<input type="button" name="" id="" class="select-image"
												value="Chọn ảnh" style="background-color: #FF9999;">
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6">
									<div class="border rounded">
										<div class="upload-file2">
											<input type="file" id="file2" accept="image/*" name="image2"
												hidden>
											<div class="img-area2" data-img="">
												<i class='bx bxs-cloud-upload icon'></i>
												<h3>Thêm ảnh 2</h3>
												<p>
													Kích thước hình ảnh phải nhỏ hơn <span>5MB</span>
												</p>
											</div>
											<button class="select-image2">Chọn ảnh</button>
											<input type="button" name="" id="" class="select-image2"
												value="Chọn ảnh" style="background-color: #FF9999;">
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6">
									<div class="border rounded">
										<div class="upload-file3">
											<input type="file" id="file3" accept="image/*" name="image3"
												hidden>
											<div class="img-area3" data-img="">
												<i class='bx bxs-cloud-upload icon'></i>
												<h3>Thêm ảnh 3</h3>
												<p>
													Kích thước hình ảnh phải nhỏ hơn <span>5MB</span>
												</p>
											</div>
											<button class="select-image3">Chọn ảnh</button>
											<input type="button" name="" id="" class="select-image3"
												value="Chọn ảnh" style="background-color: #FF9999;">
										</div>
									</div>
								</div>
							</div>	 -->

							<!--  -->
							<c:if test="${product.numberImgRequire eq 1}">
								<div class="row" style="margin-top: 20px;">
									<h3 style="color: #FF9999; margin-bottom: 50px;">Chọn ảnh</h3>
									<div class="col-lg-4 col-sm-6">
										<div class="border rounded">
											<div class="upload-file">
												<input type="file" id="file" accept="image/*" name="image1"
													hidden>
												<div class="img-area" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 1</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
								</div>
							</c:if>
							
							<c:if test="${product.numberImgRequire eq 2}">
								<div class="row" style="margin-top: 20px;">
									<h3 style="color: #FF9999; margin-bottom: 50px;">Chọn ảnh</h3>
									<div class="col-lg-4 col-sm-6">
										<div class="border rounded">
											<div class="upload-file">
												<input type="file" id="file" accept="image/*" name="image1"
													hidden>
												<div class="img-area" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 1</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-sm-6">
										<div class="border rounded">
											<div class="upload-file2">
												<input type="file" id="file2" accept="image/*" name="image2"
													hidden>
												<div class="img-area2" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 2</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image2">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image2"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
								</div>
							</c:if>

							<c:if test="${product.numberImgRequire eq 3}">
								<div class="row" style="margin-top: 20px;">
									<h3 style="color: #FF9999; margin-bottom: 50px;">Chọn ảnh</h3>
									<div class="col-lg-4 col-sm-6">
										<div class="border rounded">
											<div class="upload-file">
												<input type="file" id="file" accept="image/*" name="image1"
													hidden>
												<div class="img-area" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 1</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-sm-6">
										<div class="border rounded">
											<div class="upload-file2">
												<input type="file" id="file2" accept="image/*" name="image2"
													hidden>
												<div class="img-area2" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 2</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image2">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image2"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-sm-6">
										<div class="border rounded">
											<div class="upload-file3">
												<input type="file" id="file3" accept="image/*" name="image3"
													hidden>
												<div class="img-area3" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 3</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image3">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image3"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
								</div>
							</c:if>

							<c:if test="${product.numberImgRequire eq 4}">
								<div class="row" style="margin-top: 20px;">
									<h3 style="color: #FF9999; margin-bottom: 50px;">Chọn ảnh</h3>
									<div class="col-lg-3 col-sm-6">
										<div class="border rounded">
											<div class="upload-file">
												<input type="file" id="file" accept="image/*" name="image1"
													hidden>
												<div class="img-area" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 4</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
									<div class="col-lg-3 col-sm-6">
										<div class="border rounded">
											<div class="upload-file2">
												<input type="file" id="file2" accept="image/*" name="image2"
													hidden>
												<div class="img-area2" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 2</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image2">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image2"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
									<div class="col-lg-3 col-sm-6">
										<div class="border rounded">
											<div class="upload-file3">
												<input type="file" id="file3" accept="image/*" name="image3"
													hidden>
												<div class="img-area3" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 3</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image3">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image3"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
									<div class="col-lg-3 col-sm-6">
										<div class="border rounded">
											<div class="upload-file4">
												<input type="file" id="file4" accept="image/*" name="image4"
													hidden>
												<div class="img-area4" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 3</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image3">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image4"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
								</div>
							</c:if>

							<c:if test="${product.numberImgRequire eq 5}">
								<div class="row" style="margin-top: 20px;">
									<h3 style="color: #FF9999; margin-bottom: 50px;">Chọn ảnh</h3>
									<div class="col-lg-4 col-sm-6" style="margin-bottom: 15px;">
										<div class="border rounded">
											<div class="upload-file">
												<input type="file" id="file" accept="image/*" name="image1"
													hidden>
												<div class="img-area" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 1</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-sm-6" style="margin-bottom: 15px;">
										<div class="border rounded">
											<div class="upload-file2">
												<input type="file" id="file2" accept="image/*" name="image2"
													hidden>
												<div class="img-area2" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 2</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image2">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image2"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-sm-6" style="margin-bottom: 15px;">
										<div class="border rounded">
											<div class="upload-file3">
												<input type="file" id="file3" accept="image/*" name="image3"
													hidden>
												<div class="img-area3" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 3</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image3">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image3"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-sm-6" style="margin-bottom: 15px;">
										<div class="border rounded">
											<div class="upload-file4">
												<input type="file" id="file4" accept="image/*" name="image4"
													hidden>
												<div class="img-area4" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 4</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image3">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image4"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-sm-6" style="margin-bottom: 15px;">
										<div class="border rounded">
											<div class="upload-file5">
												<input type="file" id="file5" accept="image/*" name="image5"
													hidden>
												<div class="img-area5" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 5</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image3">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image5"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
								</div>
							</c:if>

							<c:if test="${product.numberImgRequire eq 6}">
								<div class="row" style="margin-top: 20px;">
									<h3 style="color: #FF9999; margin-bottom: 50px;">Chọn ảnh</h3>
									<div class="col-lg-4 col-sm-6" style="margin-bottom: 15px;">
										<div class="border rounded">
											<div class="upload-file">
												<input type="file" id="file" accept="image/*" name="image1"
													hidden>
												<div class="img-area" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 1</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-sm-6" style="margin-bottom: 15px;">
										<div class="border rounded">
											<div class="upload-file2">
												<input type="file" id="file2" accept="image/*" name="image2"
													hidden>
												<div class="img-area2" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 2</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image2">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image2"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-sm-6" style="margin-bottom: 15px;">
										<div class="border rounded">
											<div class="upload-file3">
												<input type="file" id="file3" accept="image/*" name="image3"
													hidden>
												<div class="img-area3" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 3</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image3">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image3"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-sm-6" style="margin-bottom: 15px;">
										<div class="border rounded">
											<div class="upload-file4">
												<input type="file" id="file4" accept="image/*" name="image4"
													hidden>
												<div class="img-area4" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 4</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image3">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image4"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-sm-6" style="margin-bottom: 15px;">
										<div class="border rounded">
											<div class="upload-file5">
												<input type="file" id="file5" accept="image/*" name="image5"
													hidden>
												<div class="img-area5" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 5</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image3">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image5"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-sm-6" style="margin-bottom: 15px;">
										<div class="border rounded">
											<div class="upload-file6">
												<input type="file" id="file6" accept="image/*" name="image6"
													hidden>
												<div class="img-area6" data-img="">
													<i class='bx bxs-cloud-upload icon'></i>
													<h3>Thêm ảnh 6</h3>
													<p>
														Kích thước hình ảnh phải nhỏ hơn <span>2MB</span>
													</p>
												</div>
												<!-- <button class="select-image3">Chọn ảnh</button> -->
												<input type="button" name="" id="" class="select-image6"
													value="Chọn ảnh" style="background-color: #FF9999;">
											</div>
										</div>
									</div>
								</div>
							</c:if>
							<!--  -->
							<h3
								style="color: #FF9999; margin-top: 30px; margin-bottom: 50px;">Chọn
								Icon</h3>
							<nav>
								<div class="nav nav-tabs mb-3">
									<input type="button"
										class="nav-link active border-white border-bottom-0"
										type="button" role="tab" id="nav-about-tab"
										data-bs-toggle="tab" data-bs-target="#nav-about"
										aria-controls="nav-about" aria-selected="true"
										value="Tất cả Icon">
								</div>
							</nav>

							<div class="tab-content mb-5">
								<!--  -->
								<div class="tab-pane active" id="nav-about" role="tabpanel"
									aria-labelledby="nav-about-tab">
									<div class="px-2">
										<div class="row g-4">
											<div class="row" style="margin-top: 50px;">
												<c:forEach var="icon" items="${listIcon}" varStatus="loop">
													<div class="col-lg-2 col-sm-3" style="margin-bottom: 20px;">
														<div class="border rounded">
															<label for="icon${loop.index}" class="img-container"
																onclick="toggleCheckbox('icon${loop.index}')"> <input
																type="checkbox" id="icon${loop.index}" name="icon"
																value="${icon.iconID}" hidden> <img
																src="assets/images/${icon.urlIcon}"
																class="img-fluid rounded" alt="Image">
															</label>
														</div>
													</div>
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
								<!--  -->
								<div class="tab-pane" id="nav-mission" role="tabpanel"
									aria-labelledby="nav-mission-tab">
									<div class="px-2">
										<div class="row g-4">
											<div class="row" style="margin-top: 50px;">
												<div class="col-lg-2 col-sm-3" style="margin-bottom: 20px;">
													<div class="border rounded">
														<img src="assets/images/template1.png"
															class="img-fluid rounded" alt="Image">
													</div>
												</div>
												<div class="col-lg-2 col-sm-3" style="margin-bottom: 20px;">
													<div class="border rounded">
														<img src="assets/images/template1.png"
															class="img-fluid rounded" alt="Image">
													</div>
												</div>
												<div class="col-lg-2 col-sm-3" style="margin-bottom: 20px;">
													<div class="border rounded">
														<img src="assets/images/template1.png"
															class="img-fluid rounded" alt="Image">
													</div>
												</div>
												<div class="col-lg-2 col-sm-3" style="margin-bottom: 20px;">
													<div class="border rounded">
														<img src="assets/images/template1.png"
															class="img-fluid rounded" alt="Image">
													</div>
												</div>
												<div class="col-lg-2 col-sm-3" style="margin-bottom: 20px;">
													<div class="border rounded">
														<img src="assets/images/template1.png"
															class="img-fluid rounded" alt="Image">
													</div>
												</div>
												<div class="col-lg-2 col-sm-3" style="margin-bottom: 20px;">
													<div class="border rounded">
														<img src="assets/images/template1.png"
															class="img-fluid rounded" alt="Image">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<button
								class="btn border border-secondary rounded-pill px-5 py-3 mb-5 text-primary">Đặt
								Hàng</button>
							<!-- <a href="payment"
									class="btn border border-secondary rounded-pill px-5 py-3 mb-5 text-primary">Đặt
									Hàng</a> -->
					</div>
					</form>
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
	<script src="assets/js/upload-image.js"></script>
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
	<!--  -->

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