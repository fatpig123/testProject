
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!-- Sidebar -->
<ul
	class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
	id="accordionSidebar">

	<!-- Sidebar - Brand -->
	<a
		class="sidebar-brand d-flex align-items-center justify-content-center"
		href="/admin" style="height: 6.375rem;">
		<div class="sidebar-brand-icon rotate-n-15">
			<i class="fas fa-laugh-wink"></i>
		</div>
		<div class="sidebar-brand-text mx-3" style="font-size: larger;">
			H-WINE <sup><sec:authentication
					property="principal.admin_region" /></sup>
		</div>
	</a>

	<!-- Divider -->
	<hr class="sidebar-divider my-0">

	<!-- Nav Item - Dashboard -->
	<li class="nav-item active"><a class="nav-link" href="/admin">
			<i class="fas fa-fw fa-tachometer-alt"></i> <span>메인</span>
	</a></li>

	<!-- Divider -->
	<hr class="sidebar-divider">

	<!-- Heading -->
	<div class="sidebar-heading">메뉴</div>

	<!-- Nav Item - Pages Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"
		aria-controls="collapseTwo"> <i class="fas fa-fw fa-cog"></i> <span style="font-size: large;">상품 관리</span>
	</a>
		<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
			data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<!--  <h6 class="collapse-header"></h6> -->
				<a class="collapse-item" href="/admin/product/list">상품 메인</a> 
				<a class="collapse-item" href="/admin/product/registerForm">상품 등록</a>
			</div>
		</div></li>

	<!-- Nav Item - Utilities Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapseUtilities"
		aria-expanded="true" aria-controls="collapseUtilities"> <i
			class="fas fa-fw fa-wrench"></i> <span style="font-size: large;">주문 관리</span>
	</a>
		<div id="collapseUtilities" class="collapse"
			aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<a class="collapse-item" href="/admin/order/main">주문 메인</a> <a
					class="collapse-item" href="/admin/order/controll">주문 내역</a>
			</div>
		</div></li>

	<!-- Nav Item - Pages Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapsePages"
		aria-expanded="true" aria-controls="collapsePages"> <i
			class="fas fa-fw fa-folder"  ></i> <span style="font-size: large;">테이블링 관리</span>
	</a>
		<div id="collapsePages" class="collapse"
			aria-labelledby="headingPages" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<a class="collapse-item" href="/admin/tabling">메인</a> <a
					class="collapse-item" href="/admin/tabling/list">테이블링 내역</a>
			</div>
		</div></li>

	<!-- Nav Item - Charts -->
	<li class="nav-item"><a class="nav-link" href="/admin/charts">
			<i class="fas fa-fw fa-chart-area"    ></i> <span style="font-size: large;">회원관리</span>
	</a></li>
	<li class="nav-item"><a class="nav-link" href="#" id="qrcodeScan">
			<i class="fas fa-fw fa-chart-area"    ></i> <span style="font-size: large;">QR CODE SCAN</span>
	</a></li>

	<div class="text-center d-none d-md-inline">
		<button class="rounded-circle border-0" id="sidebarToggle"></button>
	</div>
</ul>
<!-- End of Sidebar -->