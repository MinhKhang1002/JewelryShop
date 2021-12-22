<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
	href="<c:url value='/assets/fontawesome-free-5.15.4-web/css/all.css' />"
	rel="stylesheet">
<!-- BOOTSTRAP STYLES-->
<link href="<c:url value='/assets/css/bootstrap.css' />"
	rel="stylesheet">
<link href="<c:url value='/assets/js/morris/morris-0.4.3.min.css' />"
	rel="stylesheet">
<link href="<c:url value='/assets/css/custom.css' />" rel="stylesheet">
<title>CỬA HÀNG TRANG SỨC</title>
<base href="${pageContext.servletContext.contextPath}/">
</head>


</html>
<body>
	<div id="wrapper">


		<%@include file="/WEB-INF/views/include/menu.jsp"%>
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>Admin Dashboard</h2>
					</div>
				</div>

				<hr />
				<div class="col-md-12">

					<c:if test="${sessionScope.quyen == 1}">
						<div class="panel-heading col-md-6 text-info">
							<h3>
								<span>Danh Sách Hóa Đơn</span>
							</h3>
						</div>
						<div>


							<form role="form" action="quanly/index.htm" method="GET">
								<div class="form-group col-md-5">
									<label class="control-label" for="inputSuccess">Tìm
										Kiếm (MAHD):</label>
									<c:if test="${messageTimKiem!= null}">
										<label class="control-label"
											style="color: red; float: right; font-size: 13px;"">
											${messageTimKiem}</label>
									</c:if>
									<input name="maHd" type="number" class="form-control"
										id="inputSuccess">
								</div>

								<div class="form-group col-md-1 ">
									<button type="submit" class="btn btn-primary">Tìm</button>
								</div>
							</form>
						</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover">
									<thead>
										<tr>

											<th>MÃ HÓA ĐƠN</th>
											<th>NGÀY LẬP</th>
											<th>LOẠI</th>
											<th>MÃ KHÁCH HÀNG</th>
											<th>MÃ NHÂN VIÊN</th>
											<th>TỔNG TIỀN</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach var="a" items="${arraysHD}">
											<tr>
												<td>${a.maHd}</td>
												<td>${a.ngay}</td>
												<td>${a.loai}</td>
												<td>${a.maKhachHang}</td>
												<td>${a.maNv}</td>
												<td>${a.tongTien}</td>
											</tr>
										</c:forEach>

									</tbody>
								</table>
							</div>
						</div>
				</div>

				<div class="row">
					<form role="form" action="quanly/index.htm" method="GET">
						<div class="form-group col-md-5">
							<label class="control-label" for="inputSuccess">Thống Kê Theo Năm</label>
							<c:if test="${messageTK!= null}">
								<label class="control-label"
									style="color: red; float: right; font-size: 13px;"">
									${messageTK}</label>
							</c:if>
							<input name="namTK" type="number" class="form-control"
								id="inputSuccess">
						</div>

						<div class="form-group col-md-1 ">
							<button type="submit" name="btnTK" class="btn btn-primary">Xem</button>
						</div>
					</form>

					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="panel panel-default">
							<div class="panel-heading">Thống Kê Doanh Thu</div>
							<div class="panel-body">
								<div id="morris-bar-chart-2"></div>
							</div>
						</div>
					</div>


				</div>
				</c:if>
				<!-- /. ROW  -->
				<!-- /. ROW  -->
				<div class="row">
					<div class="col-md-6">
						<!--    Striped Rows Table  -->
						<div class="panel panel-default">
							<div class="panel-heading" style="color: blue;">Top Sản
								Phẩm bán chạy</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>MÃ SP</th>
												<th>TÊN SP</th>
												<th>Xem Chi Tiết</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="x" items="${arraysSP}">

												<tr>
													<td>${x.maSp}</td>
													<td>${x.tenSp}</td>
													<td><a
														href="quanly/qlKhoHang/${x.maSp}.htm?xemThongTin">Xem</a></td>
												</tr>

											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!--  End  Striped Rows Table  -->
					</div>
					<div class="col-md-6">
						<!--    Bordered Table  -->
						<div class="panel panel-default">
							<div class="panel-heading" style="color: blue;">Top Khách
								Hàng tiềm năng trong 5 tháng gần nhất</div>
							<!-- /.panel-heading -->
							<div class="panel-body">
								<div class="table-responsive table-bordered">
									<table class="table">
										<thead>
											<tr>

												<th>MÃ KHÁCH HÀNG - SĐT</th>
												<th>TÊN KHÁCH HÀNG</th>
												<th>TIỀM NĂNG</th>
												<th>thêm</th>
											</tr>
										</thead>
										<tbody>

											<c:forEach var="a" items="${arrays}">
												<tr>
													<td>${a.sdt}</td>
													<td>${a.hoTen}</td>
													<td>${a.danhGiaTiemNang}</td>
													<td><a
														href="quanly/khachhang/${a.sdt}.htm?xemThongTin"
														onclick="document.geElementById('formKhachHang').style.display='none'">Xem</a></td>
												</tr>
											</c:forEach>

										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!--  End  Bordered Table  -->
					</div>
				</div>
				<!-- /. ROW  -->

			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>



	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script type="text/javascript"
		src="<c:url value='/assets/js/jquery-1.10.2.js' />"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script type="text/javascript"
		src="<c:url value='/assets/js/bootstrap.min.js' />"></script>
	<!-- METISMENU SCRIPTS -->
	<script type="text/javascript"
		src="<c:url value='/assets/js/jquery.metisMenu.js' />"></script>
	<!-- MORRIS CHART SCRIPTS -->
	<script type="text/javascript"
		src="<c:url value='/assets/js/morris/raphael-2.1.0.min.js' />"></script>
	<script type="text/javascript"
		src="<c:url value='/assets/js/morris/morris.js' />"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			"use strict";
			var chart_data;

			/*====================================
			METIS MENU 
			======================================*/
			$('#main-menu').metisMenu();

			/*====================================
			  LOAD APPROPRIATE MENU BAR
			======================================*/
			$(window).bind("load resize", function() {
				if ($(this).width() < 768) {
					$('div.sidebar-collapse').addClass('collapse')
				} else {
					$('div.sidebar-collapse').removeClass('collapse')
				}
			});

			/*====================================
			MORRIS BAR CHART
			======================================*/
			var abc = [];
			<c:forEach var="c" items="${doanhthu}">
			var yy = $
			{
				c.thang
			}
			;
			var aa = $
			{
				c.ra
			}
			;
			var bb = $
			{
				c.vao
			}
			;
			abc.push({
				"y" : yy,
				"a" : aa,
				"b" : bb
			});
			</c:forEach>
			console.log(abc);
			Morris.Bar({
				element : 'morris-bar-chart-2',
				data : abc,
				xkey : 'y',
				ykeys : [ 'a', 'b' ],
				labels : [ 'Series A', 'Series B' ],
				hideHover : 'auto',
				resize : true
			});
		});
	</script>

</body>
</html>