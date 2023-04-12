<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<style>
.text-black {
	color: black !important;
}

.form-select-lg {
	padding-top: 0.5rem;
	padding-bottom: 0.5rem;
	padding-left: 0.3rem;
	font-size: 1.1rem;
	border-radius: 0.5rem;
}

</style>

<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-2 text-gray-800"">와인픽업 대시보드</h1>
		<div id="scode"></div>
	</div>

	<!-- Content Row -->
	<div class="row">
		<!-- Earnings (Monthly) Card Example -->
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-info shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div
								class="text-xs font-weight-bold text-info text-uppercase mb-1">오늘
								픽업 예정 건수</div>
							<div class="row no-gutters align-items-center">
								<div class="col-auto">
									<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"
										id="todayTobePickupedTodayPickuped"></div>
								</div>
								<div class="col">
									<div class="progress progress-sm mr-2">
										<div class="progress-bar bg-info" role="progressbar"
											aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Earnings (Monthly) Card Example -->
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-primary shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div
								class="text-xs font-weight-bold text-primary text-uppercase mb-1">
								신규 픽업 예약 건수</div>
							<div class="h5 mb-0 font-weight-bold text-gray-800"
								id="newPickup"></div>
						</div>
						<div class="col-auto">
							<i class="fas fa-calendar fa-2x text-gray-300"></i>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Earnings (Monthly) Card Example -->
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-success shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div
								class="text-xs font-weight-bold text-success text-uppercase mb-1">
								오늘 픽업 취소 건수</div>
							<div class="h5 mb-0 font-weight-bold text-gray-800"
								id="todayCancel"></div>
						</div>
						<div class="col-auto">
							<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Pending Requests Card Example -->
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-warning shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div
								class="text-xs font-weight-bold text-warning text-uppercase mb-1">
								내일 픽업 예정 건수</div>
							<div class="h5 mb-0 font-weight-bold text-gray-800"
								id="tomorrowPickup"></div>
						</div>
						<div class="col-auto">
							<i class="fas fa-comments fa-2x text-gray-300"></i>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Content Row -->

		<div class="row"
			style="width: 100%; flex: 100%; margin-left: 0px; margin-right: 0px;">

			<!-- Area Chart -->
			<div class="col-xl-8 col-lg-7" style="max-width: 100%; flex: 100%;">
				<div class="card shadow mb-4">
					<!-- Card Header - Dropdown -->
					<div
						class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
						<h6 class="m-0 font-weight-bold text-primary">오늘 예약 건수</h6>
						<div class="dropdown no-arrow">
							<a class="dropdown-toggle" href="#" role="button"
								id="dropdownMenuLink" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> <i
								class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
							</a>
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
								aria-labelledby="dropdownMenuLink">
								<a class="dropdown-item" href="/admin/order/controll">픽업예약
									리스트</a>
							</div>
						</div>
					</div>
					<!-- Card Body -->
					<div class="card-body">
						<table class="table table-hover" id="todayResvs">
							<thead class="thead-light">
								<tr>
									<th scope="col">#</th>
									<th scope="col">픽업번호</th>
									<th scope="col">이메일(픽업자)</th>
									<th scope="col">픽업주문날짜</th>
									<th scope="col" class="mx-auto">상태</th>
									<th scope="col">픽업금액</th>
									<th scope="col">픽업상품 (개수)</th>
								</tr>
							</thead>
							<tbody id="todayPickups-tbody">

							</tbody>
						</table>
					</div>
				</div>
			</div>

			<!-- Pie Chart -->

		</div>



	</div>
	<!-- /.container-fluid -->

	<script type="text/javascript">
	
function getYmd20(date) {
		//yyyy-mm-dd 포맷 날짜 생성
	let d = new Date(date);
	return d.getFullYear() + "/" + ((d.getMonth() + 1) > 9 ? (d.getMonth() + 1).toString() : "0" + (d.getMonth() + 1)) + "/" + (d.getDate() > 9 ? d.getDate().toString() : "0" + d.getDate().toString());
}

function printWithCommasRegex(number) {
	let numString = String(number); // convert number to string
	let result = numString.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	  
	return result;
}

function formatPhoneNumber(phoneNumber) {
   var formattedNumber = phoneNumber.replace(/^(\d{3})(\d{4})(\d{4})$/, '$1-$2-$3');
   return formattedNumber;
 }

function isEmpty(str){
	if(typeof str == "undefined" || str == null || str == "")
		return true;
	else
		return false ;
}
	
	function loadOrderList() {
		$.ajax({
			url : '/admin/order/main/list',
			type : 'GET',
			success : function(data) {
				console.log("ajax 성공");
				console.log(data);
				$("#todayTobePickupedTodayPickuped").text(data.todayPickuped + '/' + data.todayToBePickuped + ' 건');
				$("#newPickup").text(data.newPickup + ' 건');
				$("#todayCancel").text(data.todayCanceledPickup + ' 건');
				$("#tomorrowPickup").text(data.tomorrowPickup + ' 건');
				$("#todayPickups-tbody").empty();
				let width = Math.ceil((data.todayPickuped / data.todayToBePickuped * 100));
				console.log(width);
				$(".progress-bar.bg-info").attr('style', 'width:' + width + '%');
				$("#scode").empty();
				sscode = '';
				for (var i = 0; i < data.role.length; i++) {
					if (data.role[i].role.includes('TOTAL')) {
						sscode += `
							<select class="form-select form-select-lg" id="admin_scode">
								<option value='scode3'>전체보기</option>
								<option value='scode1'>와인웍스 더현대 서울점</option>
								<option value='scode2'>와인웍스 더현대 대구점</option>
							</select>
								`;
					}
				}
				$("#scode").append(sscode);
				str = '';
				for (var i = 0; i < data.todayList.length; i++) {
					var order = data.todayList[i];
					str +=
							`<tr class="today-pickup">
								<th scope="row">\${i + 1}</th>
								<td>\${order.po_id}</td>
								<td>\${order.m_email} (\${order.po_name})</td>
								<td>\${getYmd20(order.po_register_date)}</td>
							`;
					if (order.po_status == 2) {
						str += `
								<td><span class="badge badge-secondary w-50 py-2">취소</span></td>
								`;
					}
					else if (order.po_status == 3) {
						str += `
								<td><span class="badge badge-warning w-50 py-2  text-dark">예정</span></td>
								`;
					}
					else if (order.po_status == 4) {
						str += `
							<td><span class="badge badge-success w-50 py-2  text-dark">완료</span></td>
							`;
					}
					str += `
							<td>\${printWithCommasRegex(order.po_total_price)} 원</td>
							<td>
							`;
					for (var j = 0; j < order.items.length; j++) {
						var item = order.items[j];
						if (j == order.items.length -1) {
							str += `
								\${item.productDetail.w_name_kor} (\${item.poi_quantity} 개)
								`;
						}
						else {
							str += `
								\${item.productDetail.w_name_kor} (\${item.poi_quantity} 개) <br><br>
								`;
						}
						
					}
					str += `</tr>`;
							
				}
				$("#todayPickups-tbody").append(str);
			},
			error : function() {
				console.log("ajax 에러 발생");
			}
		});
	}

	$(document).ready(function() {
		$(".modal-backdrop").removeClass("show");
	    $(".modal-backdrop").attr("style", 'z-index:0');
		loadOrderList();
	});
	
	$(document).on("change", "#admin_scode", function() {
		const selectedValue = $(this).val();
		console.log(selectedValue);
			$.ajax({
				url : '/admin/order/main/list/scode?s_code='+selectedValue,
				type : 'GET',
				success : function(data) {
					$("#todayTobePickupedTodayPickuped").text(data.todayPickuped + '/' + data.todayToBePickuped + ' 건');
					$("#newPickup").text(data.newPickup + ' 건');
					$("#todayCancel").text(data.todayCanceledPickup + ' 건');
					$("#tomorrowPickup").text(data.tomorrowPickup + ' 건');
					let width = Math.ceil((data.todayPickuped / data.todayToBePickuped * 100));
					console.log(width);
					$(".progress-bar.bg-info").attr('style', 'width:' + width + '%');
					console.log(data);
					str = '';
					$("#todayPickups-tbody").empty();
					for (var i = 0; i < data.todayList.length; i++) {
						var order = data.todayList[i];
						str +=
								`<tr class="today-pickup">
									<th scope="row">\${i + 1}</th>
									<td>\${order.po_id}</td>
									<td>\${order.m_email} (\${order.po_name})</td>
									<td>\${getYmd20(order.po_register_date)}</td>
								`;
						if (order.po_status == 2) {
							str += `
									<td><span class="badge badge-secondary w-50 py-2">취소</span></td>
									`;
						}
						else if (order.po_status == 3) {
							str += `
									<td><span class="badge badge-warning w-50 py-2  text-dark">예정</span></td>
									`;
						}
						else if (order.po_status == 4) {
							str += `
								<td><span class="badge badge-success w-50 py-2  text-dark">완료</span></td>
								`;
						}
						str += `
								<td>\${printWithCommasRegex(order.po_total_price)} 원</td>
								<td>
								`;
						for (var j = 0; j < order.items.length; j++) {
							var item = order.items[j];
							if (j == order.items.length -1) {
								str += `
									\${item.productDetail.w_name_kor} (\${item.poi_quantity} 개)
									`;
							}
							else {
								str += `
									\${item.productDetail.w_name_kor} (\${item.poi_quantity} 개) <br><br>
									`;
							}
							
						}
						str += `</tr>`;
								
					}
					$("#todayPickups-tbody").append(str);
				},
				error : function() {
					console.log("ajax 에러 발생");
				}
			});
		
	});
</script>
</html>