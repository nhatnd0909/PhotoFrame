<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - youtube.com/codingnepal -->
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form validation in HTML & CSS | CodingNepal</title>
    <link rel="stylesheet" href="assets/css/register.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


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
                            <a href="index" class="logo">
                                <img src="assets/images/templatemo-eduwell.png" alt="EduWell Template">
                            </a>
                            <!-- ***** Logo End ***** -->
                            <!-- ***** Menu Start ***** -->
                            <ul class="nav">
                                <li class="scroll-to-section"><a href="index" class="active">Trang Chủ</a></li>
                                <li class=""><a href="template">Dịch Vụ</a></li>
                                <li class=""><a href="contact-us">Liên hệ</a></li>
                                <li class=""><a href="login">Đăng Nhập</a></li>
                            </ul>
                            <a class='menu-trigger'>
                                <span>Menu</span>
                            </a>
                            <!-- ***** Menu End ***** -->
                        </nav>
                    </div>
                </div>
                <div class="login d-flex justify-content-center mt-5">
                    <div class="wrapper">
                        <header>Đăng Ký Ngay</header>
                        <form action="#">
                            <div class="field name">
                                <div class="input-area">
                                    <input type="text" placeholder="Họ và Tên">
                                    <i class="icon fas fa-envelope"></i>
                                    <i class="error error-icon fas fa-exclamation-circle"></i>
                                </div>
                                <div class="error error-txt">Tên không bỏ trống</div>
                            </div>
                            <div class="field email">
                                <div class="input-area">
                                    <input type="text" placeholder="Username">
                                    <i class="icon fas fa-envelope"></i>
                                    <i class="error error-icon fas fa-exclamation-circle"></i>
                                </div>
                                <div class="error error-txt">Username không bỏ trống</div>
                            </div>
                            <div class="field password">
                                <div class="input-area">
                                    <input type="password" placeholder="Mật khẩu">
                                    <i class="icon fas fa-lock"></i>
                                    <i class="error error-icon fas fa-exclamation-circle"></i>
                                </div>
                                <div class="error error-txt error-txt-pass">Mật khẩu không bỏ trống</div>
                            </div>
                            <div class="field re-password">
                                <div class="input-area">
                                    <input type="password" placeholder="Nhập lại mật khẩu">
                                    <i class="icon fas fa-lock"></i>
                                    <i class="error error-icon fas fa-exclamation-circle"></i>
                                </div>
                                <div class="error error-txt error-txt-pass">Mật khẩu không bỏ trống</div>
                            </div>
                            <div class="pass-txt"><a href="#">Quên mật khẩu?</a></div>
                            <input type="submit" value="Đăng ký">
                        </form>
                    </div>
                </div>
            </div>
    </header>


    <script src="assets/js/register.js"></script>

</body>

</html>