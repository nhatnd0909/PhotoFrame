<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - youtube.com/codingnepal -->
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="assets/css/login.css">
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
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="index" class="logo">
                            <img src="assets/images/templatemo-eduwell.png" alt="EduWell Template">
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="index" class="active">Trang Chủ</a></li>
                            <!-- <li class="has-sub">
                                <a href="javascript:void(0)">Dịch Vụ</a>
                                <ul class="sub-menu">
                                    <li><a href="">Gia Dình</a></li>
                                    <li><a href="">Người Yêu</a></li>
                                    <li><a href="">Bạn Bè</a></li>
                                    <li><a href="">Người Thân</a>
                                    </li>
                                </ul>
                            </li> -->
                            <li class=""><a href="template">Dịch Vụ</a></li>
                            <li class=""><a href="contact-us">Liên hệ</a></li>
                            <li class=""><a href="">Đăng Nhập</a></li>
                        </ul>
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
            <div class="login d-flex justify-content-center mt-5">
                <div class="wrapper ">
                    <header>Đăng Nhập</header>
                    <form action="#">
                        <div class="field email">
                            <div class="input-area">
                                <input type="text" placeholder="Email">
                                <i class="icon fas fa-envelope"></i>
                                <i class="error error-icon fas fa-exclamation-circle"></i>
                            </div>
                            <div class="error error-txt">Email không bỏ trống</div>
                        </div>
                        <div class="field password">
                            <div class="input-area">
                                <input type="password" placeholder="Mật Khẩu">
                                <i class="icon fas fa-lock"></i>
                                <i class="error error-icon fas fa-exclamation-circle"></i>
                            </div>
                            <div class="error error-txt error-txt-pass">Mật khẩu không để trống</div>
                        </div>
                        <div class="pass-txt"><a href="#">Quên mật khẩu?</a></div>
                        <input type="submit" value="Đăng Nhập">
                    </form>
                    <div class="sign-txt">Chưa có tài khoản? <a href="register">Đăng ký ngay</a></div>
                </div>
            </div>
        </div>
    </header>


    <script src="assets/js/login.js"></script>

</body>

</html>