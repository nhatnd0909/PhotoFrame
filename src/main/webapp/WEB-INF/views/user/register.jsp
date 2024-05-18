<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - youtube.com/codingnepal -->
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Form validation in HTML & CSS | CodingNepal</title>
<link rel="stylesheet" href="assets/css/register.css">
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
								<li class="scroll-to-section"><a href="index"
									class="active">Trang Chủ</a></li>
								<li class=""><a href="template">Sản Phẩm</a></li>
								<li class=""><a href="contact-us">Liên hệ</a></li>
								<li class=""><a href="login">Đăng Nhập</a></li>
							</ul>
							<a class='menu-trigger'> <span>Menu</span>
							</a>
							<!-- ***** Menu End ***** -->
						</nav>
					</div>
				</div>
				<div class="login d-flex justify-content-center mt-5">
					<div class="wrapper">
						<header>Đăng Ký Ngay</header>
						<p class="text-warning" style="font-size: 17px">${mess}</p>
						<form action="register" method="post"
							onsubmit="return checkPasswordMatch()">
							<div class="field name">
								<div class="input-area">
									<input type="text" name="name" placeholder="Họ và Tên"
										pattern="[a-zA-Z\s\u00C0-\u1FFF\u2C00-\uD7FF]{10,}"
										title="Chỉ chứa các ký tự chữ cái, khoảng trắng, và các ký tự đặc biệt trong tiếng Việt, ít nhất 10 ký tự"
										value="${name}" required> <i
										class="icon fas fa-envelope"></i> <i
										class="error error-icon fas fa-exclamation-circle"></i>
								</div>
								<div class="error error-txt">Tên không bỏ trống</div>
							</div>
							<div class="field email">
								<div class="input-area">
									<input type="text" name="username" placeholder="Username"
										pattern="^(?=.*[a-zA-Z])[a-zA-Z\d]{5,}$"
										title="Ít nhất 5 ký tự, có ít nhất 1 chữ cái"
										value="${username}" required> <i
										class="icon fas fa-envelope"></i> <i
										class="error error-icon fas fa-exclamation-circle"></i>
								</div>
								<div class="error error-txt">Username không bỏ trống</div>
							</div>
							<div class="field password">
								<div class="input-area">
									<input id="password" type="password" name="password"
										placeholder="Mật khẩu" pattern=".{6,}"
										title="Mật khẩu không được để trống và phải có ít nhất 6 ký tự"
										required> <i class="icon fas fa-lock"></i> <i
										class="error error-icon fas fa-exclamation-circle"></i>
								</div>
							</div>
							<div class="field re-password">
								<div class="input-area">
									<input id="re-password" type="password"
										placeholder="Nhập lại mật khẩu" required> <i
										class="icon fas fa-lock"></i> <i
										class="error error-icon fas fa-exclamation-circle"></i>
								</div>
							</div>
							<div class="pass-txt">
								<a href="#">Quên mật khẩu?</a>
							</div>
							<input type="submit" value="Đăng ký">
						</form>
					</div>
				</div>
			</div>
	</header>

	<script>
		// Function to check if the re-password matches the password
		function checkPasswordMatch() {
			var password = document.getElementById("password").value;
			var rePassword = document.getElementById("re-password").value;

			if (password != rePassword) {
				alert("Mật khẩu không khớp. Vui lòng nhập lại.");
				return false;
			}
			return true;
		}
	</script>
</body>

</html>