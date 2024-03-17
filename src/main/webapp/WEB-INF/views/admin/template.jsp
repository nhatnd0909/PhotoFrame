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
<link href="/adminAssets/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link href="/adminAssets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/adminAssets/css/ruang-admin.min.css" rel="stylesheet">
<link
	href="/adminAssets/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
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
			<li class="nav-item active"><a class="nav-link" href="index">
					<i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span>
			</a></li>
			<hr class="sidebar-divider">
			<div class="sidebar-heading">Tính Năng</div>
			<li class="nav-item"><a class="nav-link" href="/admin/revenue">
					<i class="fas fa-fw fa-chart-area"></i> <span>Doanh Thu</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="user"> <i
					class="fas fa-fw fa-user"></i> <span>Người Dùng</span>
			</a></li>
			<!--  -->
			<li class="nav-item active"><a class="nav-link collapsed"
				href="#" data-toggle="collapse" data-target="#collapseTable"
				aria-expanded="true" aria-controls="collapseTable"> <i
					class="fas fa-fw fa-pen-to-square"></i> <span
					style="color: #6777ef;">Sản Phẩm</span>
			</a>
				<div id="collapseTable" class="collapse"
					aria-labelledby="headingTable" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Mẫu có sẵn</h6>
						<a class="collapse-item" href="template"><span
							style="color: #6777ef;">Mẫu</span></a> <a class="collapse-item"
							href="icon">Icon</a>
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
						<h1 class="h3 mb-0 text-gray-800">Mẫu Có Sẵn</h1>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="./">Trang chủ</a></li>
							<li class="breadcrumb-item active" aria-current="page">Mẫu
								có sẵn</li>
						</ol>
					</div>

					<div class="row mb-3">
						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-4 col-md-6 mb-4">
							<div class="card h-100">
								<div class="card-body">
									<div class="row align-items-center">
										<div class="col mr-2">
											<div class="text-xs font-weight-bold text-uppercase mb-1">Tổng
												các mẫu có sẵn</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">${listProduct.size()}</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-pen-to-square fa-2x text-info"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--Row-->

					<!-- Data user -->
					<div class="col-lg-12">
						<div class="card mb-4">
							<div
								class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
								<h6 class="m-0 font-weight-bold text-primary">Danh Sách Các
									Mẫu</h6>
							</div>
							<div class="table-responsive p-3">
								<table class="table align-items-center table-flush table-hover"
									id="dataTableHover">
									<thead class="thead-light">
										<tr>
											<th>Tên</th>
											<th>Thể loại</th>
											<th>Giá bán</th>
											<th>Chất liệu</th>
											<th>Cân nặng</th>
											<th>#</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="product" items="${listProduct}">
											<tr>
												<td>${product.name}</td>
												<td>${product.type}</td>
												<td>${product.price}</td>
												<td>${product.material}</td>
												<td>${product.weight}</td>
												<td><a href="/admin/detail-template?id=${product.productID}" style="text-decoration: none;">Chi
														tiết</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>

					<!-- Modal Logout -->
					<div class="modal fade" id="logoutModal" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalLabelLogout"
						aria-hidden="true">
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
	<!-- Page level plugins -->
	<script src="/adminAssets/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/adminAssets/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script>
		$(document).ready(function() {
			$('#dataTable').DataTable(); // ID From dataTable 
			$('#dataTableHover').DataTable(); // ID From dataTable with Hover
		});
	</script>
</body>

</html>