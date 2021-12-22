<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<nav class="navbar navbar-default navbar-cls-top " role="navigation"
	style="margin-bottom: 0">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".sidebar-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="quanly/index.htm">QUẢN LÝ</a>
	</div>
	<div
		style="color: white; padding: 15px 50px 5px 50px; float: right; font-size: 16px;">
		${lastAC} &nbsp; <a href="#"
			class="btn btn-danger square-btn-adjust">Logout</a>
	</div>
</nav>
<!-- /. NAV TOP  -->
<nav class="navbar-default navbar-side" role="navigation">
	<div class="sidebar-collapse">
		<ul class="nav" id="main-menu">
			<li class="text-center"><img
				src="<c:url value='/assets/img/test.jpg' />"
				class="user-image img-responsive" /></li>


			<li><a class="active-menu" href="quanly/index.htm"><i
					class="fa fa-dashboard fa-3x"></i> Dashboard</a></li>
			<li><a href="quanly/canhan.htm"><i class="fa fa-user fa-3x"></i>
					Thông tin cá nhân</a></li>


			<li><a href="#"><i class="fas fa-user-clock fa-3x"></i> Quản
					Lý Đơn Hàng<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="quanly/hoadon.htm">ĐƠN NHẬP/XUẤT HÀNG</a></li>
					<li><a href="quanly/qlDatHang.htm">ĐƠN ĐẶT HÀNG</a></li>

				</ul></li>
			<c:if test="${sessionScope.quyen == 1}">
			<li><a href="#"><i class="fa fa-sitemap fa-3x"></i> Quản lý
					Sản Phẩm<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="quanly/qlKhoHang.htm">LOẠI SẢN PHẨM</a></li>
					<li><a href="quanly/qlKhoHang.htm">KHO HÀNG</a></li>

				</ul></li>
		</c:if>


			<li><a href="quanly/khachhang.htm"><i
					class="fa fa-user-clock fa-3x"></i> Quản lý Khách Hàng</a>
					
			<c:if test="${sessionScope.quyen == 1}">
			<li><a href="quanly/nhanvien.htm"><i
					class="fa fa-users fa-3x"></i> Quản lý Nhân viên</a></li></c:if>
			<li><a href="quanly/dichvu.htm"><i
					class="fab fa-product-hunt fa-3x"></i> Quản lý Dịch Vụ<span
					class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="quanly/dichvu.htm">BẢO HÀNH SAU MUA</a></li>

				</ul></li>

			<c:if test="${sessionScope.quyen == 1}">
				<li><a href="quanly/khuyenmai.htm"><i
						class="fa fa-percentage fa-3x"></i> Quản lý Khuyến Mãi<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="quanly/khuyenmai.htm">KHUYẾN MÃI</a></li>
						<li><a href="quanly/khuyenmai.htm">ƯU ĐÃI KHÁCH HÀNG</a></li>

					</ul></li>

			</c:if>

		</ul>

	</div>

</nav>
<!-- /. NAV SIDE  -->