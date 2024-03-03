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
							src="assets/images/templatemo-eduwell.png" alt="EduWell Template">
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
			<div style="margin-bottom: 100px; margin-top: 50px;">
				<h1 class="fw-bold mb-0" style="color: #FF9999 !important;">Chi
					tiết đặt hàng</h1>
			</div>
			<!-- <div class="row g-4 mb-5">
                <div class="col-lg-12 col-xl-12">
                    <div class="row g-4">
                        <div class="col-lg-6">
                            <div class="border rounded">
                                <img src="assets/images/template1.png" class="img-fluid rounded" alt="Image">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <h4 class="fw-bold mb-3">Sản phẩm 1</h4>
                            <p class="mb-3">Phân loại: Gia đình</p>
                            <h5 class="fw-bold mb-3">180.000 Đ</h5>
                            <div class="d-flex mb-4">
                                <i class="fa fa-star text-secondary"></i>
                                <i class="fa fa-star text-secondary"></i>
                                <i class="fa fa-star text-secondary"></i>
                                <i class="fa fa-star text-secondary"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <p class="mb-4">The generated Lorem Ipsum is therefore always free from repetition injected
                                humour, or non-characteristic words etc.</p>
                            <p class="mb-4">Susp endisse ultricies nisi vel quam suscipit. Sabertooth peacock flounder;
                                chain pickerel hatchetfish, pencilfish snailfish</p>
                            <a href="edit-template"
                                class="btn border border-secondary rounded-pill px-4 py-2 mb-4 text-primary"><i
                                    class="fa fa-shopping-bag me-2 text-primary"></i>Chọn mẫu này</a>
                        </div>
                        <div class="row" style="margin-top: 20px;">
                            <div class="col-lg-3 col-sm-6">
                                <div class="border rounded">
                                    <img src="assets/images/template1.png" class="img-fluid rounded" alt="Image">
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <div class="border rounded">
                                    <img src="assets/images/template1.png" class="img-fluid rounded" alt="Image">
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <div class="border rounded">
                                    <img src="assets/images/template1.png" class="img-fluid rounded" alt="Image">
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <div class="border rounded">
                                    <img src="assets/images/template1.png" class="img-fluid rounded" alt="Image">
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <nav>
                                <div class="nav nav-tabs mb-3">
                                    <button class="nav-link active border-white border-bottom-0" type="button"
                                        role="tab" id="nav-about-tab" data-bs-toggle="tab" data-bs-target="#nav-about"
                                        aria-controls="nav-about" aria-selected="true">Mô tả</button>
                                    <button class="nav-link border-white border-bottom-0" type="button" role="tab"
                                        id="nav-mission-tab" data-bs-toggle="tab" data-bs-target="#nav-mission"
                                        aria-controls="nav-mission" aria-selected="false">Đánh giá</button>
                                </div>
                            </nav>
                            <div class="tab-content mb-5">
                                <div class="tab-pane active" id="nav-about" role="tabpanel"
                                    aria-labelledby="nav-about-tab">
                                    <p>The generated Lorem Ipsum is therefore always free from repetition injected
                                        humour, or non-characteristic words etc.
                                        Susp endisse ultricies nisi vel quam suscipit </p>
                                    <p>Sabertooth peacock flounder; chain pickerel hatchetfish, pencilfish snailfish
                                        filefish Antarctic
                                        icefish goldeye aholehole trumpetfish pilot fish airbreathing catfish, electric
                                        ray sweeper.</p>
                                    <div class="px-2">
                                        <div class="row g-4">
                                            <div class="col-6">
                                                <div
                                                    class="row bg-light align-items-center text-center justify-content-center py-2">
                                                    <div class="col-6">
                                                        <p class="mb-0">Khối lượng</p>
                                                    </div>
                                                    <div class="col-6">
                                                        <p class="mb-0">1 kg</p>
                                                    </div>
                                                </div>
                                                <div
                                                    class="row text-center align-items-center justify-content-center py-2">
                                                    <div class="col-6">
                                                        <p class="mb-0">Chiều dài</p>
                                                    </div>
                                                    <div class="col-6">
                                                        <p class="mb-0">15 cm</p>
                                                    </div>
                                                </div>
                                                <div
                                                    class="row bg-light text-center align-items-center justify-content-center py-2">
                                                    <div class="col-6">
                                                        <p class="mb-0">Chiều rộng</p>
                                                    </div>
                                                    <div class="col-6">
                                                        <p class="mb-0">15 cm</p>
                                                    </div>
                                                </div>
                                                <div
                                                    class="row text-center align-items-center justify-content-center py-2">
                                                    <div class="col-6">
                                                        <p class="mb-0">Chất liệu</p>
                                                    </div>
                                                    <div class="col-6">
                                                        <p class="mb-0">Gỗ</p>
                                                    </div>
                                                </div>
                                                <div
                                                    class="row bg-light text-center align-items-center justify-content-center py-2">
                                                    <div class="col-6">
                                                        <p class="mb-0">Min Weight</p>
                                                    </div>
                                                    <div class="col-6">
                                                        <p class="mb-0">250 Kg</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="nav-mission" role="tabpanel"
                                    aria-labelledby="nav-mission-tab">
                                    <div class="d-flex">
                                        <img src="assets/images/avatar.webp" class="img-fluid rounded-circle p-3"
                                            style="width: 100px; height: 100px;" alt="">
                                        <div class="">
                                            <p class="mb-2" style="font-size: 14px;">April 12, 2024</p>
                                            <div class="d-flex justify-content-between">
                                                <h5>Nguyễn Đình Nhật</h5>
                                                <div class="d-flex mb-3">
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                            </div>
                                            <p>The generated Lorem Ipsum is therefore always free from repetition
                                                injected humour, or non-characteristic
                                                words etc. Susp endisse ultricies nisi vel quam suscipit </p>
                                        </div>
                                    </div>
                                    <div class="d-flex">
                                        <img src="assets/images/avatar.webp" class="img-fluid rounded-circle p-3"
                                            style="width: 100px; height: 100px;" alt="">
                                        <div class="">
                                            <p class="mb-2" style="font-size: 14px;">April 12, 2024</p>
                                            <div class="d-flex justify-content-between">
                                                <h5>Nguyễn Đình Nhật</h5>
                                                <div class="d-flex mb-3">
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                            </div>
                                            <p class="text-dark">The generated Lorem Ipsum is therefore always free from
                                                repetition injected humour, or non-characteristic
                                                words etc. Susp endisse ultricies nisi vel quam suscipit </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="nav-vision" role="tabpanel">
                                    <p class="text-dark">Tempor erat elitr rebum at clita. Diam dolor diam ipsum et
                                        tempor sit. Aliqu diam
                                        amet diam et eos labore. 3</p>
                                    <p class="mb-0">Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos
                                        labore.
                                        Clita erat ipsum et lorem et sit</p>
                                </div>
                            </div>
                        </div>
                        <form action="#">
                            <h4 class="mb-5 fw-bold">Đánh giá sản phẩm</h4>
                            <div class="row g-4">
                                <div class="col-lg-6">
                                    <div class="border-bottom rounded">
                                        <input type="text" class="form-control border-0 me-4" placeholder="Họ và tên *">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="border-bottom rounded">
                                        <input type="email" class="form-control border-0" placeholder="Email *">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="border-bottom rounded my-4">
                                        <textarea name="" id="" class="form-control border-0" cols="30" rows="8"
                                            placeholder="Ý kiến của bạn *" spellcheck="false"></textarea>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="d-flex justify-content-between py-3 mb-5">
                                        <div class="d-flex align-items-center">
                                            <p class="mb-0 me-3">Đánh giá</p>
                                            <div class="d-flex align-items-center" style="font-size: 12px;">
                                                <i class="fa fa-star text-muted"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                        </div>
                                        <a href="#"
                                            class="btn border border-secondary text-primary rounded-pill px-4 py-3">
                                            Đăng bình luận</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div> -->
			<div class="container d-lg-flex d-flex justify-content-center">
				<div class="box-1 bg-light user">
					<div class="d-flex align-items-center mb-3">
						<img src="assets/images/avatar.webp" class="pic rounded-circle"
							alt="">
						<p class="ps-2 name">Username</p>
					</div>
					<div class="box-inner-1 pb-3 mb-3 ">
						<div class="d-flex justify-content-between mb-3 userdetails">
							<p class="fw-bold">Khung tranh 1</p>
							<p class="fw-lighter">
								<span class="fas fa-dollar-sign"></span>180.00đ
							</p>
						</div>
						<div id="my">
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img src="assets/images/template1.png" class="d-block w-100">
								</div>
							</div>
						</div>
						<p class="dis info my-3">Lorem ipsum dolor sit amet,
							consectetur adipisicing elit. Cupiditate quos ipsa sed officiis
							odio</p>
						<!-- <div class="radiobtn">
                            <input type="radio" name="box" id="one">
                            <input type="radio" name="box" id="two">
                            <input type="radio" name="box" id="three">
                            <label for="one" class="box py-2 first">
                                <div class="d-flex align-items-start">
                                    <span class="circle"></span>
                                    <div class="course">
                                        <div class="d-flex align-items-center justify-content-between mb-2">
                                            <span class="fw-bold">
                                                Collection 01
                                            </span>
                                            <span class="fas fa-dollar-sign">29</span>
                                        </div>
                                        <span>10 x Presets. Released in 2018</span>
                                    </div>
                                </div>
                            </label>
                            <label for="two" class="box py-2 second">
                                <div class="d-flex">
                                    <span class="circle"></span>
                                    <div class="course">
                                        <div class="d-flex align-items-center justify-content-between mb-2">
                                            <span class="fw-bold">
                                                Collection 01
                                            </span>
                                            <span class="fas fa-dollar-sign">29</span>
                                        </div>
                                        <span>10 x Presets. Released in 2018</span>
                                    </div>
                                </div>
                            </label>
                            <label for="three" class="box py-2 third">
                                <div class="d-flex">
                                    <span class="circle"></span>
                                    <div class="course">
                                        <div class="d-flex align-items-center justify-content-between mb-2">
                                            <span class="fw-bold">
                                                Collection 01
                                            </span>
                                            <span class="fas fa-dollar-sign">29</span>
                                        </div>
                                        <span>10 x Presets. Released in 2018</span>
                                    </div>
                                </div>
                            </label>
                        </div> -->
					</div>
				</div>
				<div class="box-2">
					<div class="box-inner-2">
						<div>
							<p class="fw-bold">Chi tiết đặt hàng</p>
							<p class="dis mb-3">Hoàn tất giao dịch mua hàng của bạn bằng
								cách cung cấp chi tiết thanh toán của bạn</p>
						</div>
						<form action="">
							<div class="mb-3">
								<p class="dis fw-bold mb-2">Họ Và Tên</p>
								<input class="form-control" type="text" name="" value="">
							</div>
							<div class="mb-3">
								<p class="dis fw-bold mb-2">Email</p>
								<input class="form-control" type="email" name="" value="">
							</div>
							<div class="mb-3">
								<p class="dis fw-bold mb-2">Địa Chỉ</p>
								<input class="form-control" type="email" name="" value="">
							</div>
							<div class="mb-3">
								<p class="dis fw-bold mb-2">Số điện thoại</p>
								<input class="form-control" type="number" name="" value="">
							</div>
							<div class="mb-3">
								<p class="dis fw-bold mb-2">Mã giảm giá</p>
								<input class="form-control" type="text" name="" value="">
								<input type="button" class="btn btn-primary mt-2" value="Check">
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
											<p>
												<span class="fas fa-dollar-sign"></span>180.000đ
											</p>
										</div>
										<div
											class="d-flex align-items-center justify-content-between mb-2">
											<p>
												Giảm giá<span>(20%)</span>
											</p>
											<p>
												<span class="fas fa-dollar-sign"></span>36,000đ
											</p>
										</div>
										<div
											class="d-flex align-items-center justify-content-between mb-2">
											<p class="fw-bold">Total</p>
											<p class="fw-bold">
												<span class="fas fa-dollar-sign"></span>144.000đ
											</p>
										</div>
										<div class="btn btn-primary mt-2">
											Thanh toán<span class="fas fa-dollar-sign px-1"></span>144.000đ
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
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

</body>

</html>