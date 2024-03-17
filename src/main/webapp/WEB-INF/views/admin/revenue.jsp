<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="/adminAssets/img/logo/logo.png" rel="icon">
<title>Admin - Dashboard</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="/adminAssets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/adminAssets/css/ruang-admin.min.css" rel="stylesheet">
</head>

<body id="page-top">
	<div id="wrapper">
		<!-- Sidebar -->
		<ul class="navbar-nav sidebar sidebar-light accordion"
			id="accordionSidebar">
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="/index">
				<div class="sidebar-brand-icon">
					<img src="/adminAssets/img/logo/logo2.png">
				</div>
				<div class="sidebar-brand-text mx-3">Sparkle Memo</div>
			</a>
			<hr class="sidebar-divider my-0">
			<li class="nav-item active"><a class="nav-link" href="/admin">
					<i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span>
			</a></li>
			<hr class="sidebar-divider">
			<div class="sidebar-heading">Tính Năng</div>
			<li class="nav-item active"><a class="nav-link"
				href="/admin/revenue"> <i class="fas fa-fw fa-chart-area"></i> <span
					style="color: #6777ef;">Doanh Thu</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="user"> <i
					class="fas fa-fw fa-user"></i> <span>Người Dùng</span>
			</a></li>
			<!--  -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTable"
				aria-expanded="true" aria-controls="collapseTable"> <i
					class="fas fa-fw fa-pen-to-square"></i> <span>Sản Phẩm</span>
			</a>
				<div id="collapseTable" class="collapse"
					aria-labelledby="headingTable" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Mẫu có sẵn</h6>
						<a class="collapse-item" href="template">Mẫu</a> <a
							class="collapse-item" href="icon">Icon</a>
					</div>
				</div></li>
			<!--  -->
			<li class="nav-item"><a class="nav-link" href="order"> <i
					class="fas fa-fw fa-truck-fast"></i> <span>Đơn Hàng</span>
			</a></li>
			<hr class="sidebar-divider">

		</ul>
		<!-- Sidebar -->
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<!-- TopBar -->
				<nav
					class="navbar navbar-expand navbar-light bg-navbar topbar mb-4 static-top">
					<button id="sidebarToggleTop"
						class="btn btn-link rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>
					<ul class="navbar-nav ml-auto">
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <span
								class="badge badge-danger badge-counter">3+</span>
						</a>
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="alertsDropdown">
								<h6 class="dropdown-header">Alerts Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-primary">
											<i class="fas fa-file-alt text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 12, 2019</div>
										<span class="font-weight-bold">A new monthly report is
											ready to download!</span>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-donate text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 7, 2019</div>
										$290.29 has been deposited into your account!
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-warning">
											<i class="fas fa-exclamation-triangle text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 2, 2019</div>
										Schờ xủ lý Alert: We've noticed unusually high schưa giải
										quyết for your account.
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Show All Alerts</a>
							</div></li>
						<div class="topbar-divider d-none d-sm-block"></div>
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <img
								class="img-profile rounded-circle"
								src="/adminAssets/img/boy.png" style="max-width: 60px"> <span
								class="ml-2 d-none d-lg-inline text-white small">Sparkle
									Memo</span>
						</a>
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Thông
									tin cá nhân
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="javascript:void(0);"
									data-toggle="modal" data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>
					</ul>
				</nav>
				<!-- Topbar -->

				<!-- Container Fluid-->
				<div class="container-fluid" id="container-wrapper">
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Doanh Thu</h1>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="./">Trang chủ</a></li>
							<li class="breadcrumb-item active" aria-current="page">Doanh
								thu</li>
						</ol>
					</div>

					<div class="row mb-3">
						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-4 col-md-4 mb-4">
							<div class="card h-100">
								<div class="card-body">
									<div class="row align-items-center">
										<div class="col mr-2">
											<div class="text-xs font-weight-bold text-uppercase mb-1">Doanh
												Thu (Tháng ${currentMonth})</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">${revenue}
												Đ</div>
											<div class="mt-2 mb-0 text-muted text-xs">
												<span class="text-success mr-2"><i
													class="fa fa-arrow-up"></i> 3.48%</span> <span>So với tháng
													trước</span>
											</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-calendar fa-2x text-primary"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Earnings (Annual) Card Example -->
						<div class="col-xl-4 col-md-4 mb-4">
							<div class="card h-100">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div class="text-xs font-weight-bold text-uppercase mb-1">Bán
												hàng (Tháng ${currentMonth})</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">${listOrders.size()}
												sản phẩm</div>
											<div class="mt-2 mb-0 text-muted text-xs">
												<span class="text-success mr-2"><i
													class="fas fa-arrow-up"></i> 12%</span> <span>So với tháng
													trước</span>
											</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-shopping-cart fa-2x text-success"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-md-4 mb-4">
							<div class="card h-100">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div class="text-xs font-weight-bold text-uppercase mb-1">Yêu
												cầu đặt hàng (Tháng ${currentMonth})</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">${orderRequest} yêu cầu</div>
											<div class="mt-2 mb-0 text-muted text-xs">
												<span class="text-danger mr-2"><i
													class="fas fa-arrow-down"></i> 1.10%</span> <span>So với
													tháng trước</span>
											</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-comments fa-2x text-warning"></i>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Area Chart -->
						<div class="col-xl-8 col-lg-7">
							<div class="card mb-4">
								<div
									class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">Báo cáo
										doanh thu theo tháng</h6>
								</div>
								<div class="card-body">
									<div class="chart-area">
										<canvas id="myAreaChart"></canvas>
									</div>
								</div>
							</div>
						</div>
						<!-- Pie Chart -->
						<div class="col-xl-4 col-lg-5">
							<div class="card mb-4">
								<div
									class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">Sản phẩm đã
										bán (Tháng 2)</h6>
								</div>
								<div class="card-body">
									<div class="mb-3">
										<div class="small text-gray-500">
											Photo Frame
											<div class="small float-right">
												<b>600 of 800 Items</b>
											</div>
										</div>
										<div class="progress" style="height: 12px;">
											<div class="progress-bar bg-warning" role="progressbar"
												style="width: 80%" aria-valuenow="80" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</div>
									<div class="mb-3">
										<div class="small text-gray-500">
											Photo Frame
											<div class="small float-right">
												<b>500 of 800 Items</b>
											</div>
										</div>
										<div class="progress" style="height: 12px;">
											<div class="progress-bar bg-success" role="progressbar"
												style="width: 70%" aria-valuenow="70" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</div>
									<div class="mb-3">
										<div class="small text-gray-500">
											Photo Frame
											<div class="small float-right">
												<b>455 of 800 Items</b>
											</div>
										</div>
										<div class="progress" style="height: 12px;">
											<div class="progress-bar bg-danger" role="progressbar"
												style="width: 55%" aria-valuenow="55" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</div>
									<div class="mb-3">
										<div class="small text-gray-500">
											Photo Frame
											<div class="small float-right">
												<b>400 of 800 Items</b>
											</div>
										</div>
										<div class="progress" style="height: 12px;">
											<div class="progress-bar bg-info" role="progressbar"
												style="width: 50%" aria-valuenow="50" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</div>
									<div class="mb-3">
										<div class="small text-gray-500">
											Photo Frame
											<div class="small float-right">
												<b>200 of 800 Items</b>
											</div>
										</div>
										<div class="progress" style="height: 12px;">
											<div class="progress-bar bg-success" role="progressbar"
												style="width: 30%" aria-valuenow="30" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</div>
								</div>
								<div class="card-footer text-center">
									<a class="m-0 small text-primary card-link" href="#">View
										More <i class="fas fa-chevron-right"></i>
									</a>
								</div>
							</div>
						</div>
						<!-- Bar Chart -->
						<div class="col-lg-8">
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">Bar Chart</h6>
								</div>
								<div class="card-body">
									<div class="chart-bar">
										<canvas id="myBarChart"></canvas>
									</div>
									<hr>
									Styling for the bar chart can be found in the
									<code>adminAssets\js\demo\chart-bar-demo.js</code>
									file.
								</div>
							</div>
						</div>
						<!-- Donut Chart -->
						<div class="col-lg-4">
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">Donut Chart</h6>
								</div>
								<div class="card-body">
									<div class="chart-pie pt-4">
										<canvas id="myPieChart"></canvas>
									</div>
									<hr>
									Styling for the donut chart can be found in the
									<code>/js/demo/chart-pie-demo.js</code>
									file.
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--Row-->

				<div class="row"></div>

				<!-- Modal Logout -->
				<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
					aria-labelledby="exampleModalLabelLogout" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabelLogout">Ohh
									No!</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<p>Are you sure you want to logout?</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-outline-primary"
									data-dismiss="modal">Cancel</button>
								<a href="login" class="btn btn-primary">Logout</a>
							</div>
						</div>
					</div>
				</div>

			</div>
			<!---Container Fluid-->
		</div>
		<!-- Footer -->
		<footer class="sticky-footer bg-white"> </footer>
		<!-- Footer -->
	</div>
	</div>

	<!-- Scroll to top -->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	<script src="/adminAssets/vendor/jquery/jquery.min.js"></script>
	<script src="/adminAssets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="/adminAssets/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="/adminAssets/js/ruang-admin.min.js"></script>
	<script src="/adminAssets/vendor/chart.js/Chart.min.js"></script>
	<script src="/adminAssets/js/demo/chart-area-demo.js"></script>
</body>

</html>