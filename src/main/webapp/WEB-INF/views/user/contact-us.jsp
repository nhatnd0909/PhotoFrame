<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>F
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
							<li class=""><a href="index">Trang Chủ</a></li>
							<li class=""><a href="template">Sản Phẩm</a></li>
							<li class=""><a href="#contact-us" class="active">Liên
									hệ</a></li>
							<c:if test="${logged eq 0}">
								<li class=""><a href="login">Đăng Nhập</a></li>
							</c:if>
							<c:if test="${logged eq 1}">
								<span>
									<li class="has-sub"><a href="javascript:void(0)"><i
											class="fa-solid fa-user"></i> Hi! ${username}</a>
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

	<section class="get-info">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="left-image">
						<img src="assets/images/logo_exe.png" alt=""
							style="border-radius: 50%; width: 80%">
					</div>
				</div>
				<div class="col-lg-6 align-self-center">
					<div class="section-heading">
						<!-- <h6>Get info</h6> -->
						<h4>
							Về Chúng Tôi
							<!-- <em>Chúng Tôi</em> -->
						</h4>
						<p>
							Chào mừng đến với cửa hàng khung tranh 3D handmade của chúng tôi!
							Tại đây, chúng tôi tự hào giới thiệu những sản phẩm khung tranh
							3D độc đáo và tinh xảo<br> <br>Mỗi chiếc khung tranh là
							một tác phẩm nghệ thuật, mang đậm dấu ấn cá nhân và sự sáng tạo.
							Chúng tôi sử dụng nguyên liệu chất lượng cao, thân thiện với môi
							trường, nhằm đảm bảo tính bền vững và vẻ đẹp vượt thời gian cho
							từng sản phẩm.
						</p>
					</div>
					<div class="row">
						<div class="col-lg-6">
							<div class="info-item">
								<div class="icon">
									<img src="assets/images/service-icon-01.png" alt="">
								</div>
								<h4>Sứ mệnh</h4>
								<p>Tạo ra những tác phẩm ghi lại kỷ niệm quý báu bằng sự
									sáng tạo, tỉ mỉ giúp câu chuyện trở nên sống động và cảm xúc
									hơn.</p>
								<p style="color: white;">tỉ mỉ giúp câu chuyện trở nêng</p>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="info-item">
								<div class="icon">
									<img src="assets/images/service-icon-02.png" alt="">
								</div>
								<h4>Tầm nhìn</h4>
								<p>Trở thành sự lựa chọn hàng đầu trong thị trường khung ảnh
									3D handmade tại Việt Nam, nơi khách hàng đặt trọn niềm tin về
									chất lượng, sáng tạo và sự hài lòng.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 	<section class="our-team">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3">
					<div class="section-heading">
						<h6>Our Team</h6>
						<h4>
							Thành Viên <em>Nhóm</em>
						</h4>
					</div>
				</div>
				<div class="col-lg-10 offset-lg-1">
					<div class="naccs">
						<div class="tabs">
							<div class="row">
								<div class="col-lg-12">
									<div class="menu">
										<div>
											<img src="assets/images/team-member-thumb-01.jpg" alt="">
											<h4>Hồ Tố Như</h4>
											<span>CEO-FOUNDER</span>
										</div>
										<div>
											<img src="assets/images/team-member-thumb-03.jpg" alt="">
											<h4>Nguyễn Thị Tuyết</h4>
											<span>COO-FOUNDER</span>
										</div>
										<div>
											<img src="assets/images/team-member-thumb-02.jpg" alt="">
											<h4>Nguyễn Thị Thanh Hương</h4>
											<span>CMO-FOUNDER</span>
										</div>
										<div>
											<img src="assets/images/team-member-thumb-04.jpg" alt="">
											<h4>Dương Minh Quang</h4>
											<span>CFO-FOUNDER</span>
										</div>
										<div>
											<img src="assets/images/team-member-thumb-05.jpg" alt="">
											<h4>Nguyễn Đình Nhật</h4>
											<span>CTO-FOUNDER</span>
										</div>
									</div>
								</div>
								<div class="col-lg-12">
									<ul class="nacc">
										<li class="active">
											<div>
												<div class="left-content">
													<h4>Ruby Foster</h4>
													<p>Quinoa roof party squid prism sustainable
														letterpress cray hammock tumeric man bun mixtape tofu
														subway tile cronut. Deep v ennui subway tile organic
														seitan kogi freegan bicycle rights try-hard green juice
														probably.</p>
													<span><a href="#">Facebook</a></span> <span><a
														href="#">Twitter</a></span> <span class="last-span"><a
														href="#">Linkedin</a></span>
													<div class="text-button">
														<a href="contact-us">Contact Member</a>
													</div>
												</div>
												<div class="right-image">
													<img src="assets/images/team-member-01.jpg" alt="">
												</div>
											</div>
										</li>
										<li>
											<div>
												<div class="left-content">
													<h4>Luis Oconnell</h4>
													<p>Quinoa roof party squid prism sustainable
														letterpress cray hammock tumeric man bun mixtape tofu
														subway tile cronut. Deep v ennui subway tile organic
														seitan kogi freegan bicycle rights try-hard green juice
														probably.</p>
													<span><a href="#">Facebook</a></span> <span><a
														href="#">Twitter</a></span> <span class="last-span"><a
														href="#">Linkedin</a></span>
													<div class="text-button">
														<a href="contact-us">Contact Member</a>
													</div>
												</div>
												<div class="right-image">
													<img src="assets/images/team-member-03.jpg" alt="">
												</div>
											</div>
										</li>
										<li>
											<div>
												<div class="left-content">
													<h4>Jackie Riggs</h4>
													<p>Quinoa roof party squid prism sustainable
														letterpress cray hammock tumeric man bun mixtape tofu
														subway tile cronut. Deep v ennui subway tile organic
														seitan kogi freegan bicycle rights try-hard green juice
														probably.</p>
													<span><a href="#">Facebook</a></span> <span><a
														href="#">Twitter</a></span> <span class="last-span"><a
														href="#">Linkedin</a></span>
													<div class="text-button">
														<a href="contact-us">Contact Member</a>
													</div>
												</div>
												<div class="right-image">
													<img src="assets/images/team-member-02.jpg" alt="">
												</div>
											</div>
										</li>
										<li>
											<div>
												<div class="left-content">
													<h4>Alfred Small</h4>
													<p>Quinoa roof party squid prism sustainable
														letterpress cray hammock tumeric man bun mixtape tofu
														subway tile cronut. Deep v ennui subway tile organic
														seitan kogi freegan bicycle rights try-hard green juice
														probably.</p>
													<span><a href="#">Facebook</a></span> <span><a
														href="#">Twitter</a></span> <span class="last-span"><a
														href="#">Linkedin</a></span>
													<div class="text-button">
														<a href="contact-us">Contact Member</a>
													</div>
												</div>
												<div class="right-image">
													<img src="assets/images/team-member-04.jpg" alt="">
												</div>
											</div>
										</li>
										<li>
											<div>
												<div class="left-content">
													<h4>Dennis Mitchel</h4>
													<p>Quinoa roof party squid prism sustainable
														letterpress cray hammock tumeric man bun mixtape tofu
														subway tile cronut. Deep v ennui subway tile organic
														seitan kogi freegan bicycle rights try-hard green juice
														probably.</p>
													<span><a href="#">Facebook</a></span> <span><a
														href="#">Twitter</a></span> <span class="last-span"><a
														href="#">Linkedin</a></span>
													<div class="text-button">
														<a href="contact-us">Contact Member</a>
													</div>
												</div>
												<div class="right-image">
													<img src="assets/images/team-member-05.jpg" alt="">
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
 -->
	<section class="testimonials">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-heading">
						<!-- <h6>Testimonials</h6> -->
						<h4>
							Phản hồi của<em> khách hàng</em>
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
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="page-heading" id="contact-us">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="header-text">
						<!-- <h4>Say Hello EduWell</h4> -->
						<h1>Liên Hệ</h1>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- <section class="more-info">
    <div class="container">
      <div class="row">
        <div class="col-lg-5">
          <div class="section-heading">
            <h6>More Info</h6>
            <h4>Read More <em>About Us</em></h4>
          </div>
          <p>Trust fund nocore broklyn humblebrag mustache
            pork kitsch, bicycle rights hexagon schlitz keytar palo is
            santo drinking vinegar fam ramps. <br><br>Four dollar toast and
            edison bulb vinyl, listicle hashtag pug scenester typewrit
            er yuccie street artboard or whatever to fill place.</p>
          <ul>
            <li>- Selfies you probably haven't heard of them.</li>
            <li>- Tousled cold-pressed chicharrones yuccie.</li>
            <li>- Pabst iPhone chartreuse shabby chic tumeric.</li>
            <li>- Scenester normcore mumblecore snackwave.</li>
          </ul>
        </div>
        <div class="col-lg-6 offset-lg-1 align-self-center">
          <div class="row">
            <div class="col-6">
              <div class="count-area-content">
                <div class="count-digit">125</div>
                <div class="count-title">Finished Projects</div>
              </div>
            </div>
            <div class="col-6">
              <div class="count-area-content">
                <div class="count-digit">11</div>
                <div class="count-title">Years Experience</div>
              </div>
            </div>
            <div class="col-6">
              <div class="count-area-content">
                <div class="count-digit">87</div>
                <div class="count-title">Happy Clients</div>
              </div>
            </div>
            <div class="col-6">
              <div class="count-area-content">
                <div class="count-digit">24</div>
                <div class="count-title">Awwards Won</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section> -->

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
									<!-- <h6>LIÊN HỆ CHÚNG TÔI</h6> -->
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
										class="main-gradient-button">Send Message</button>
								</fieldset>
							</div>
						</div>
					</form>
				</div>
				<div class="col-lg-12">
					<ul class="social-icons">
						<li><a href="https://www.facebook.com/nhatnd99"><i
								class="fa fa-facebook"></i></a></li>
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