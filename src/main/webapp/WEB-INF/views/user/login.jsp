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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

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
							<%-- <c:if test="${logged eq 0}"> --%>
							<li class=""><a href="login">Đăng Nhập</a></li>
							<%-- </c:if> --%>
<%-- 							<c:if test="${logged eq 1}">
								<span>
									<li class="has-sub"><a href="javascript:void(0)"><i
											class="fa-solid fa-user"></i> Người Dùng</a>
										<ul class="sub-menu">
											<li><a href="profile">Thông tin</a></li>
											<li><a href="">Đăng Xuất</a></li>
										</ul></li>
								</span>
							</c:if> --%>
						</ul>
						<a class='menu-trigger'> <span>Menu</span>
						</a>
						<!-- ***** Menu End ***** -->
					</nav>
				</div>
			</div>
			<div class="login d-flex justify-content-center mt-5">
				<div class="wrapper ">
					<header>Đăng Nhập</header>
					<p class="text-warning" style="font-size: 17px;">${mess}</p>
					<form action="login" method="post">
						<div class="field email">
							<div class="input-area">
								<input type="text" name="username" placeholder="Username"
									pattern="^(?=.*[a-zA-Z])[a-zA-Z\d]{5,}$" value="${username}"
									title="Ít nhất 5 ký tự, có ít nhất 1 chữ cái" required>
								<i class="icon fas fa-user"></i>
							</div>
						</div>
						<div class="field password">
							<div class="input-area">
								<input id="password" type="password" name="password"
									placeholder="Mật khẩu" pattern=".{6,}"
									title="Mật khẩu không được để trống và phải có ít nhất 6 ký tự"
									required> <i class="icon fas fa-lock"></i>
							</div>
						</div>
						<div class="pass-txt">
							<a href="#">Quên mật khẩu?</a>
						</div>
						<input type="submit" value="Đăng Nhập">
					</form>
					<div class="sign-txt">
						Chưa có tài khoản? <a href="register">Đăng ký ngay</a>
					</div>
				</div>
			</div>
		</div>
	</header>

</body>

</html>