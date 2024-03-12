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
<link
	href="/adminAssets/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
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
							src="assets/images/logo.png" alt="EduWell Template" style="max-width: 50px">
							<span style="font-size: 20px">Sparkle Memo</span>
						</a>
						<!-- ***** Logo End ***** -->
						<!-- ***** Menu Start ***** -->
						<ul class="nav">
							<li class="scroll-to-section"><a href="index" class="active">Trang
									Chủ</a></li>
							<li class=""><a href="template">Dịch Vụ</a></li>
							<li class=""><a href="contact-us">Liên hệ</a></li>
							<c:if test="${logged eq 0}">
								<li class=""><a href="login">Đăng Nhập</a></li>
							</c:if>
							<c:if test="${logged eq 1}">
								<span>
									<li class="has-sub"><a href="javascript:void(0)"><i
											class="fa-solid fa-user"></i>Hi,
											${user.getAccount().getUserName()}</a>
										<ul class="sub-menu">
											<li><a href="profile">Thông tin</a></li>
											<li><a href="logout">Đăng Xuất</a></li>
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

	<!-- ***** Main Banner Area Start ***** -->
	<section class="main-banner" id="top">
		<div class="container">
			<div class="row">
				<div class="grids-main py-5">
					<div class="container py-lg-3">
						<div class="headerhny-title"></div>
						<div class="container">
							<div class="main-body">
								<div class="row">
									<h3 class="fw-bold"
										style="color: #FF9999 !important; margin-bottom: 30px;">
										Lịch Sử Đặt Hàng</h3>
									<div class="col-lg-4">
										<div class="card">
											<div class="card-body">
												<div
													class="d-flex flex-column align-items-center text-center">
													<div class="avatar-upload">
														<div class="avatar-preview">
															<img id="imagePreview"
																src="assets/images/${user.getUrlImage()}"
																alt="Avatar Preview"
																style="border-radius: 50%; max-width: 100%; max-height: 100%; width: auto; height: auto; aspect-ratio: 1; border: 7px solid #FF9999 !important; margin-bottom: 20px">
														</div>
													</div>
													<div class="mt-3">
														<h4>${user.getName()}</h4>
														<p class="text-muted font-size-sm">Đà Nẵng</p>
													</div>

												</div>
												<hr class="my-4">
												<ul class="list-group list-group-flush">
													<li
														class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
														<h6 class="mb-0">
															<i class="fa-solid fa-user"></i> <a href="profile"
																class="text-muted font-size-sm">Thông tin cá nhân</a>
														</h6>
													</li>
													<li
														class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
														<h6 class="mb-0">
															<svg width="20px" height="20px" viewBox="0 0 16 16"
																xmlns="http://www.w3.org/2000/svg">
                                                                <path
																	d="m 6 1 c -2.761719 0 -5 2.238281 -5 5 s 2.238281 5 5 5 c 0.832031 -0.003906 1.652344 -0.214844 2.382812 -0.617188 l 0.617188 0.617188 v 2 h 2 v 2 h 4 v -3 l -4.308594 -4.308594 c 0.199219 -0.542968 0.304688 -1.113281 0.308594 -1.691406 c 0 -2.761719 -2.238281 -5 -5 -5 z m -1 3 c 0.550781 0 1 0.449219 1 1 s -0.449219 1 -1 1 s -1 -0.449219 -1 -1 s 0.449219 -1 1 -1 z m 0 0"
																	fill="#2e3436" />
                                                            </svg>
															<a href="change-password" class="text-muted font-size-sm">Đổi
																mật khẩu</a>
														</h6>
													</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="card mb-4">
											<div
												class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
												<h6 class="m-0 font-weight-bold text-primary">Lịch sử
													đặt hàng</h6>
											</div>
											<div class="table-responsive p-3">
												<table
													class="table align-items-center table-flush table-hover"
													id="dataTableHover">
													<thead class="thead-light">
														<tr>
															<th>Id</th>
															<th>Tên mẫu</th>
															<th>Thể loại</th>
															<th>Giá tiền</th>
															<th>Trạng thái</th>
															<th>#</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${listDetailOrder}" var="detailOrder">
															<tr>
																<td>${detailOrder.detailOrderID}</td>
																<td>${detailOrder.getUserOrder().getProduct().getName()}</td>
																<td>${detailOrder.getUserOrder().getProduct().getType()}</td>

																<td>${detailOrder.totalPrice}</td>
																<td>${detailOrder.status}</td>
																<td><a
																	href="detail-order?id=${detailOrder.detailOrderID}">Chi
																		tiết</a></td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
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
	</section>
	<!-- ***** Main Banner Area End ***** -->

	<!-- Scripts -->
	<!-- Bootstrap core JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
		referrerpolicy="no-referrer"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/province.js"></script>
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
	<!-- Kiểm tra mật khẩu nhập -->
	<script>
        document.addEventListener("DOMContentLoaded", function () {
            var newPasswordInput = document.querySelector('input[name="newPassword"]');
            var reNewPasswordInput = document.querySelector('input[name="reNewPassword"]');
            var form = document.querySelector('form[action="changePassword"]');

            form.addEventListener("submit", function (event) {
                if (newPasswordInput.value !== reNewPasswordInput.value) {
                    event.preventDefault(); // Ngăn chặn việc gửi biểu mẫu
                    alert("Mật khẩu mới và mật khẩu nhập lại không khớp.");
                }
            });
        });

    </script>
	<script src="/adminAssets/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/adminAssets/vendor/datatables/dataTables.bootstrap4.min.js"></script>
	<script>
        $(document).ready(function () {
            $('#dataTable').DataTable(); // ID From dataTable 
            $('#dataTableHover').DataTable(); // ID From dataTable with Hover
        });
    </script>
</body>

</html>