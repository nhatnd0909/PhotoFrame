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
<!--

TemplateMo 573 EduWell

https://templatemo.com/tm-573-eduwell

-->
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
							<li class="scroll-to-section"><a href="" class="active">Trang
									Chủ</a></li>
							<li class=""><a href="template">Sản Phẩm</a></li>
							<li class=""><a href="contact-us">Liên hệ</a></li>
							<c:if test="${logged eq 0}">
								<li class=""><a href="login">Đăng Nhập</a></li>
							</c:if>
							<c:if test="${logged eq 1}">
								<span>
									<li class="has-sub"><a href="javascript:void(0)"><i
											class="fa-solid fa-user"></i>Hi! ${username}</a>
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
				<div class="col-lg-6 align-self-center">
					<div class="header-text">
						<h6>Chào mừng đến với cửa hàng của chúng tôi</h6>
						<h2>
							Khung tranh <em>3D</em> <br> Hand Made!
						</h2>
						<!-- <h2>Best Place To <em>Design</em> Your <br> Ideas!</h2> -->
						<div class="main-button-gradient">
							<div class="scroll-to-section">
								<a href="template">Khám phá!</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="right-image">
						<img src="assets/images/banner-right-image.png" alt="">
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ***** Main Banner Area End ***** -->
	<section class="services" id="services">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-heading">
						<!-- <h6>Our Services</h6> -->
						<!-- <h4>Provided <em>Services</em></h4> -->
						<h4>
							<em>Sản Phẩm</em> Của Chúng Tôi
						</h4>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="owl-service-item owl-carousel">
						<c:forEach var="product" items="${listProduct}">
							<div class="item" style="padding: 0px; margin: 0px;">
								<div class="service-item">
									<div
										style="position: relative; width: 100%; height: 0; padding-top: 70.9459%; padding-bottom: 0; box-shadow: 0 2px 8px 0 rgba(63, 69, 81, 0.16); margin-top: 1.6em; margin-bottom: 0.9em; overflow: hidden; border-radius: 8px; will-change: transform;">
										<iframe loading="lazy"
											style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0;"
											src="${product.urlCanva}" allowfullscreen="allowfullscreen"
											allow="fullscreen"> </iframe>
									</div>
									<h4>${product.name}</h4>
									<p>${product.describle}</p>
								</div>
							</div>
						</c:forEach>
						<!-- <div class="item">
              <div class="service-item">
                <div class="icon">
                  <img src="assets/images/service-icon-04.png" alt="">
                </div>
                <h4>Technology</h4>
                <p>Aenean bibendum consectetur ex eu porttitor. Pellentesque id ultrices metus.</p>
              </div>
            </div> -->
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="our-courses" id="courses">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3">
					<div class="section-heading">
						<h4>
							Gợi ý Chủ Đề
							<!--  <em> Làm</em> -->
						</h4>
						<!-- <p>Chỉ cần nghĩ đến kết quả, khi bạn cần các mẫu miễn phí cho
							ý tưởng của mình, chúng tôi sẽ thực hiện!</p> -->
					</div>
				</div>
				<div class="col-lg-12">
					<div class="naccs">
						<div class="tabs">
							<div class="row">
								<div class="col-lg-3">
									<div class="menu">
										<div class="active gradient-border">
											<span>Gia Đình</span>
										</div>
										<div class="gradient-border">
											<span>Người Yêu</span>
										</div>
										<div class="gradient-border">
											<span>Bạn Bè</span>
										</div>
										<div class="gradient-border">
											<span>Bản Thân</span>
										</div>
									</div>
								</div>
								<div class="col-lg-9">
									<ul class="nacc">
										<li class="active">
											<div>
												<div class="left-image">
													<img src="assets/images/family.png" alt="">
													<!-- <div class="price">
														<h6>$128</h6>
													</div> -->
												</div>

												<div class="right-content">
													<h4>Chủ đề gia đình</h4>
													<p>
														Cùng chúng tôi tạo nên một bức tranh về gia đình của bạn.
														Bằng cách kết hợp tâm huyết và kỹ thuật, chúng tôi đã tạo
														ra những chiếc khung tranh chủ đề gia đình, mang đến không
														gian ấm áp và ý nghĩa cho ngôi nhà của bạn <br> <br>Hãy
														tạo ra một góc nhìn đặc biệt cho gia đình bạn với những
														bức tranh chất lượng cao từ chúng tôi.
													</p>

													<div class="text-button">
														<a href="template">Xem chi tiết</a>
													</div>
												</div>
											</div>
										</li>
										<li>
											<div>
												<div class="left-image">
													<img src="assets/images/love.png" alt="">
												</div>
												<div class="right-content">
													<h4>Chủ đề người yêu</h4>
													<p>
														Cho dù là những khoảnh khắc ngọt ngào của tình yêu mới nảy
														nở, hay là những kỷ niệm đáng nhớ của quãng thời gian dài
														bên nhau, chúng tôi hiểu rằng tình yêu luôn là một phần
														quan trọng trong cuộc sống của bạn.<br> <br>Hãy
														kỷ niệm những khoảnh khắc đặc biệt nhất của tình yêu của
														bạn với những bức tranh độc đáo từ chúng tôi!
													</p>
													<div class="text-button">
														<a href="template">Xem chi tiết</a>
													</div>
												</div>
											</div>
										</li>
										<li>
											<div>
												<div class="left-image">
													<img src="assets/images/friend.png" alt="">
												</div>
												<div class="right-content">
													<h4>Chủ đề bạn bè</h4>
													<p>
														Bạn bè là những người đồng hành, những người chia sẻ niềm
														vui và nỗi buồn, những người luôn ở bên cạnh trong mọi thử
														thách cuộc sống. Từ những cười đùa vui vẻ đến những cuộc
														phiêu lưu khó quên, mỗi bức tranh là một cách tuyệt vời để
														tưởng nhớ và đánh dấu tình bạn bền vững.<br> <br>Hãy
														kỷ niệm những khoảnh khắc tuyệt vời nhất của bạn bè với
														những bức tranh tuyệt đẹp từ chúng tôi!
													</p>
													<div class="text-button">
														<a href="template">Xem chi tiết</a>
													</div>
												</div>
											</div>
										</li>
										<li>
											<div>
												<div class="left-image">
													<img src="assets/images/relative.png" alt="">
												</div>
												<div class="right-content">
													<h4>Chủ đề bản thân</h4>
													<p>
														Chúng ta là những người độc lập, có những giấc mơ, mục
														tiêu và trải nghiệm riêng của mình. Với các bức tranh chủ
														đề bản thân, chúng tôi tạo ra không gian đặc biệt để bạn
														tôn vinh và kỷ niệm về bản thân mình.<br> <br>Hãy
														kỷ niệm những khía cạnh độc đáo của bản thân với những bức
														tranh tinh tế và ý nghĩa từ chúng tôi.!
													</p>
													<div class="text-button">
														<a href="template">Xem chi tiết</a>
													</div>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="simple-cta">
		<div class="container">
			<div class="row">
				<div class="col-lg-5 offset-lg-1">
					<div class="left-image">
						<img src="assets/images/sell-off.png" alt="">
					</div>
				</div>
				<div class="col-lg-5 align-self-center">
					<h6>Nhận ưu đãi ngay</h6>
					<h4>Giảm 10% cho 15 sản phẩm đầu tiên</h4>

					<div class="white-button" style="margin-top: 50px">
						<a href="template">Đặt Ngay</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="testimonials" id="testimonials">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-heading">
						<!-- <h6>NHẬN XÉT</h6> -->
						<h4>
							Phản Hồi Từ Khách Hàng
							<!-- <em>Khách Hàng</em> -->
						</h4>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="owl-testimonials owl-carousel"
						style="position: relative; z-index: 5;">
						<div class="item">
							<p>Sản phẩm chất lượng. Giống mô tả</p>
							<h4>Như Ý</h4>
							<img src="assets/images/quote.png" alt="">
						</div>
						<div class="item">
							<p>Sản phẩm chất lượng</p>
							<h4>Nguyễn Đình Nhật</h4>
							<img src="assets/images/quote.png" alt="">
						</div>
						<div class="item">
							<p>Sản phẩm chắc chắn, giao hàng nhanh</p>
							<h4>Quốc Nam</h4>
							<img src="assets/images/quote.png" alt="">
						</div>
						<div class="item">
							<p>Sản phẩm giống mô tả, giá cả hợp lý</p>
							<h4>Nhật Phong</h4>
							<img src="assets/images/quote.png" alt="">
						</div>
						<!-- 						<div class="item">
							<p>“Praesent accumsan condimentum arcu, id porttitor est
								semper nec. Nunc diam lorem.”</p>
							<h4>Andrew Hall</h4>
							<span>Marketing Manager</span> <img src="assets/images/quote.png"
								alt="">
						</div>
						<div class="item">
							<p>“Praesent accumsan condimentum arcu, id porttitor est
								semper nec. Nunc diam lorem.”</p>
							<h4>Maxi Power</h4>
							<span>Fashion Designer</span> <img src="assets/images/quote.png"
								alt="">
						</div>
						<div class="item">
							<p>“Praesent accumsan condimentum arcu, id porttitor est
								semper nec. Nunc diam lorem.”</p>
							<h4>Olivia Too</h4>
							<span>Creative Designer</span> <img src="assets/images/quote.png"
								alt="">
						</div> -->
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="contact-us" id="contact-section">
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
									<span>033 654 8705</span>
								</div>
							</div>
							<div class="col-lg-5">
								<div class="contact-info">
									<div class="icon">
										<i class="fa fa-envelope"></i>
									</div>
									<h4>Email</h4>
									<span>sparklememoo@gmail.com</span>
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
									<!-- 	<h6>LIÊN HỆ CHÚNG TÔI</h6> -->
									<h4>LIÊN HỆ CHÚNG TÔI</h4>
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
										class="main-gradient-button">Gửi</button>
								</fieldset>
							</div>
						</div>
					</form>
				</div>
				<div class="col-lg-12">
					<ul class="social-icons">
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-instagram"></i></a></li>
						<!-- 						<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#"><i class="fa fa-rss"></i></a></li>
						<li><a href="#"><i class="fa fa-dribbble"></i></a></li> -->
					</ul>
				</div>
				<div class="col-lg-12">
					<p class="copyright">
						Copyright © 2022 EduWell Co., Ltd. All Rights Reserved. <br>Design:
						<a rel="sponsored" href="https://templatemo.com" target="_blank">TemplateMo</a>
						<!-- 	<br>Distribution: <a rel="sponsored"
							href="https://themewagon.com" target="_blank">ThemeWagon</a> -->
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
</body>

</html>