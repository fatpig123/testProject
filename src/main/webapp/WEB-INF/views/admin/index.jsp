<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>

<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800">대시보드</h1>
	</div>

	<!-- Content Row -->
	<div class="row">

		<!-- Earnings (Monthly) Card Example -->
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-primary shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div
								class="text-xs font-weight-bold text-success text-uppercase mb-1">
								오늘 픽업</div>
							<div class="h5 mb-0 font-weight-bold text-gray-800">${todayPickup }
								건</div>
						</div>
						<div class="col-auto">
							<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
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
								class="text-xs font-weight-bold text-primary text-uppercase mb-1">
								오늘 매출</div>
							<div class="h5 mb-0 font-weight-bold text-gray-800">
								<fmt:formatNumber value="${todaySales }" pattern="#,###" />
								원
							</div>
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
			<div class="card border-left-info shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div
								class="text-xs font-weight-bold text-info text-uppercase mb-1">오늘
								회원가입</div>
							<div class="row no-gutters align-items-center">
								<div class="col-auto">
									<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">${todaySignup }
										건</div>
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

		<!-- Pending Requests Card Example -->
		<div class="col-xl-3 col-md-6 mb-4">
			<a href="/admin/tabling" class="text-decoration-none">
				<div class="card border-left-warning shadow h-100 py-2">
					<div class="card-body">
						<div class="row no-gutters align-items-center">
							<div class="col mr-2">
								<div
									class="text-xs font-weight-bold text-warning text-uppercase mb-1">
									테이블링</div>
								<div class="h5 mb-0 font-weight-bold text-gray-800"
									id="todayTabling">0</div>
							</div>
							<div class="col-auto">
								<i class="fas fa-comments fa-2x text-gray-300"></i>
							</div>
						</div>
					</div>
				</div>
			</a>
		</div>
	</div>

	<!-- Content Row -->

	<div class="row ordReq" style="idth: 100%; margin: 0 auto;">

		<!-- Area Chart -->
		<div class="card shadow mb-4" style="width: 100%;">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary"
					style="display: inline-block; vertical-align: middel;">발주 필요
					상품 리스트</h6>
				<sec:authorize access="hasRole('ROLE_ADMIN_TOTAL')">
					<label style="float: right; margin-bottom: 0;"><select
						name="dataTable_length" aria-controls="dataTable"
						class="custom-select custom-select-sm form-control form-control-sm"
						id="Depart">
							<option value="1" selected>더현대 서울점</option>
							<option value="2">더현대 대구점</option>
					</select> </label>
				</sec:authorize>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr style="color: grey;">
								<th>상품ID</th>
								<th>상품명</th>
								<th>상품 가격</th>
								<th>상품 재고(<sec:authentication
										property="principal.admin_region" />)
								</th>
								<th>상품 발주</th>
								<th>상품 월간 평균 판매량</th>
								<th>관리</th>
							</tr>
						</thead>
						<tbody class="reqOrdList">
							<c:forEach items="${reqOrdList}" var="list">
								<tr
									<c:if test="${list.sws_stock < list.year_order_avg and list.sws_order < list.year_order_avg}"> style="background:rgba(246, 194, 62, 0.5); "</c:if>>
									<td>${list.w_id }</td>
									<td>${list.w_name_kor }</td>
									<td><fmt:formatNumber value="${list.w_price }"
											pattern="#,###" />원</td>
									<td>${list.sws_stock }</td>
									<td>${list.sws_order }</td>
									<td>${list.year_order_avg }</td>
									<td><a a href="/admin/product/update?w_id=${list.w_id}"
										id="modal-button" class="btn btn-success btn-sm">상품 관리</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>

	</div>
	<div class="row">

		<div class="col-xl-8 col-lg-7">
			<!-- Bar Chart -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary"
						style="display: inline-block; margin: auto 0; vertical-align: middle;">기간별
						판매량</h6>
					<label style="float: right; margin-bottom: 0;"><select
						name="dataTable_length" aria-controls="dataTable"
						class="custom-select custom-select-sm form-control form-control-sm"
						id="salesDur">
							<option value="0" selected>연도별</option>
							<option value="1">월별</option>
							<option value="2">일별</option>
					</select> </label> <label style="float: right; margin-bottom: 0;"> <select
						name="dataTable_length" aria-controls="dataTable"
						class="custom-select custom-select-sm form-control form-control-sm"
						id="salesCnt">
							<option value="0" selected>금액 별</option>
							<option value="1">횟수 별</option>
					</select>
					</label>
				</div>
				<div class="card-body">
					<div class="chart-bar">
						<div class="chartjs-size-monitor">
							<div class="chartjs-size-monitor-expand">
								<div class=""></div>
							</div>
							<div class="chartjs-size-monitor-shrink">
								<div class=""></div>
							</div>
						</div>
						<canvas id="myAreaChart" width="964" height="640"
							style="display: block; width: 482px; height: 320px;"
							class="chartjs-render-monitor"></canvas>
					</div>
				</div>
			</div>
			<!-- Area Chart -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary"
						style="display: inline-block; margin: auto 0; vertical-align: middle;">카테고리별
						판매량</h6>
					<label style="float: right; margin-bottom: 0;"> <select
						name="dataTable_length" aria-controls="dataTable"
						class="custom-select custom-select-sm form-control form-control-sm"
						id="ctgrDur">
							<option value="0" selected>전체</option>
							<option value="1">당년</option>
							<option value="2">당월</option>
					</select>
					</label> <label style="float: right; margin-bottom: 0;"> <select
						name="dataTable_length" aria-controls="dataTable"
						class="custom-select custom-select-sm form-control form-control-sm"
						id="ctgrCnt">
							<option value="0" selected>금액 별</option>
							<option value="1">횟수 별</option>
					</select>
				</div>
				<div class="card-body">
					<div class="chart-area">
						<div class="chartjs-size-monitor">
							<div class="chartjs-size-monitor-expand">
								<div class=""></div>
							</div>
							<div class="chartjs-size-monitor-shrink">
								<div class=""></div>
							</div>
						</div>
						<canvas id="myBarChart"
							style="display: block; width: 482px; height: 320px;" width="964"
							height="640" class="chartjs-render-monitor"></canvas>
					</div>
				</div>
			</div>
			<div class="card shadow mb-4" style="height: 425px;">
				<!-- Card Header - Dropdown -->
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary"
						style="display: inline-block; margin: auto 0; vertical-align: middle;">연령/성 별
						구매자 비율</h6>
					<label style="float: right; margin-bottom: 0;"> <select
						name="dataTable_length" aria-controls="dataTable"
						class="custom-select custom-select-sm form-control form-control-sm"
						id="genderAgeDur">
							<option value="0" selected>전체</option>
							<option value="1">당년</option>
							<option value="2">당월</option>
					</select>
					</label> <label style="float: right; margin-bottom: 0;"> <select
						name="dataTable_length" aria-controls="dataTable"
						class="custom-select custom-select-sm form-control form-control-sm"
						id="genderAgeCnt">
							<option value="0" selected>금액 별</option>
							<option value="1">횟수 별</option>
					</select>
				</div>
				<!-- Card Body -->
				<div class="card-body">
					<div class="chart-pie pt-4">
						<div class="chartjs-size-monitor">
							<div class="chartjs-size-monitor-expand">
								<div class=""></div>
							</div>
							<div class="chartjs-size-monitor-shrink">
								<div class=""></div>
							</div>
						</div>
						<canvas id="myPieChart3" width="652" height="506"
							style="display: block; width: 326px; height: 253px;"
							class="chartjs-render-monitor"></canvas>
					</div>
				</div>
			</div>
		</div>


		<div class="col-xl-4 col-lg-5">
			<div class="card shadow mb-4" style="height: 425px;">
				<!-- Card Header - Dropdown -->
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary"
						style="display: inline-block; margin: auto 0; vertical-align: middle;">성별
						구매자 비율</h6>
					<label style="float: right; margin-bottom: 0;"> <select
						name="dataTable_length" aria-controls="dataTable"
						class="custom-select custom-select-sm form-control form-control-sm"
						id="genderDur">
							<option value="0" selected>전체</option>
							<option value="1">당년</option>
							<option value="2">당월</option>
					</select>
					</label> <label style="float: right; margin-bottom: 0;"> <select
						name="dataTable_length" aria-controls="dataTable"
						class="custom-select custom-select-sm form-control form-control-sm"
						id="genderCnt">
							<option value="0" selected>금액 별</option>
							<option value="1">횟수 별</option>
					</select>
				</div>
				<!-- Card Body -->
				<div class="card-body">
					<div class="chart-pie pt-4">
						<div class="chartjs-size-monitor">
							<div class="chartjs-size-monitor-expand">
								<div class=""></div>
							</div>
							<div class="chartjs-size-monitor-shrink">
								<div class=""></div>
							</div>
						</div>
						<canvas id="myPieChart" width="652" height="506"
							style="display: block; width: 326px; height: 253px;"
							class="chartjs-render-monitor"></canvas>
					</div>
				</div>
			</div>
			<div class="card shadow mb-4" style="height: 425px;">
				<!-- Card Header - Dropdown -->
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary"
						style="display: inline-block; margin: auto 0; vertical-align: middle;">연령별
						구매자 비율</h6>
					<label style="float: right; margin-bottom: 0;"> <select
						name="dataTable_length" aria-controls="dataTable"
						class="custom-select custom-select-sm form-control form-control-sm"
						id="ageDur">
							<option value="0" selected>전체</option>
							<option value="1">당년</option>
							<option value="2">당월</option>
					</select>
					</label> <label style="float: right; margin-bottom: 0;"> <select
						name="dataTable_length" aria-controls="dataTable"
						class="custom-select custom-select-sm form-control form-control-sm"
						id="ageCnt">
							<option value="0" selected>금액 별</option>
							<option value="1">횟수 별</option>
					</select>
				</div>
				<!-- Card Body -->
				<div class="card-body">
					<div class="chart-pie pt-4">
						<div class="chartjs-size-monitor">
							<div class="chartjs-size-monitor-expand">
								<div class=""></div>
							</div>
							<div class="chartjs-size-monitor-shrink">
								<div class=""></div>
							</div>
						</div>
						<canvas id="myPieChart2" width="652" height="506"
							style="display: block; width: 326px; height: 253px;"
							class="chartjs-render-monitor"></canvas>
					</div>
				</div>
			</div>
			
		</div>

	</div>

</div>
<!-- /.container-fluid -->
<script>


Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

function number_format(number, decimals, dec_point, thousands_sep) {
  // *     example: number_format(1234.56, 2, ',', ' ');
  // *     return: '1 234,56'
  number = (number + '').replace(',', '').replace(' ', '');
  let n = !isFinite(+number) ? 0 : +number,
    prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
    sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
    dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
    s = '',
    toFixedFix = function(n, prec) {
      let k = Math.pow(10, prec);
      return '' + Math.round(n * k) / k;
    };
  // Fix for IE parseFloat(0.55).toFixed(0) = 0;
  s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
  if (s[0].length > 3) {
    s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
  }
  if ((s[1] || '').length < prec) {
    s[1] = s[1] || '';
    s[1] += new Array(prec - s[1].length + 1).join('0');
  }
  return s.join(dec);
}
// Area Chart Example
let ctx = document.getElementById("myAreaChart");
let myAreaChart = new Chart(ctx, {
  type: 'line',
  data: {
	  labels: ["${salesChart[0].x}" <c:forEach items="${salesChart}" var="chart" begin="1">,"${chart.x}"</c:forEach>],
    datasets: [{
      lineTension: 0.3,
      backgroundColor: "rgba(78, 115, 223, 0.05)",
      borderColor: "rgba(78, 115, 223, 1)",
      pointRadius: 3,
      pointBackgroundColor: "rgba(78, 115, 223, 1)",
      pointBorderColor: "rgba(78, 115, 223, 1)",
      pointHoverRadius: 3,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 10,
      pointBorderWidth: 2,
      data: ["${salesChart[0].y}" <c:forEach items="${salesChart}" var="chart" begin="1">,"${chart.y}"</c:forEach>],	
    }],
  },
  options: {
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false,
          drawBorder: false
        },
        ticks: {
          maxTicksLimit: 7
        }
      }],
      yAxes: [{
        ticks: {
          maxTicksLimit: 5,
          padding: 10,
          // Include a dollar sign in the ticks
          callback: function(value, index, values) {
            return number_format(value);
          }
        },
        gridLines: {
          color: "rgb(234, 236, 244)",
          zeroLineColor: "rgb(234, 236, 244)",
          drawBorder: false,
          borderDash: [2],
          zeroLineBorderDash: [2]
        }
      }],
    },
    legend: {
      display: false
    },
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      titleMarginBottom: 10,
      titleFontColor: '#6e707e',
      titleFontSize: 14,
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      intersect: false,
      mode: 'index',
      caretPadding: 10,
      callbacks: {
        label: function(tooltipItem, chart) {
          let datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
          return datasetLabel + ': ₩' + number_format(tooltipItem.yLabel);
        }
      }
    }
  }
});


//Bar Chart Example
let ctx2 = document.getElementById("myBarChart");
let myBarChart = new Chart(ctx2, {
type: 'bar',
data: {
	 labels: ["${ctgrChart[0].x}" <c:forEach items="${ctgrChart}" var="chart" begin="1">,"${chart.x}"</c:forEach>],
 
 datasets: [{
   backgroundColor: "#4e73df",
   hoverBackgroundColor: "#2e59d9",
   borderColor: "#4e73df",
   data: ["${ctgrChart[0].y}" <c:forEach items="${ctgrChart}" var="chart" begin="1">,"${chart.y}"</c:forEach>],
  
 }],
},
options: {
 maintainAspectRatio: false,
 layout: {
   padding: {
     left: 10,
     right: 25,
     top: 25,
     bottom: 0
   }
 },
 scales: {
   xAxes: [{
     time: {
       unit: 'month'
     },
     gridLines: {
       display: false,
       drawBorder: false
     },
     ticks: {
       maxTicksLimit: 6
     },
     maxBarThickness: 25,
   }],
   yAxes: [{
     ticks: {
       min: 0,
       maxTicksLimit: 10,
       padding: 10,
       // Include a dollar sign in the ticks
       callback: function(value, index, values) {
         return number_format(value);
       }
     },
     gridLines: {
       color: "rgb(234, 236, 244)",
       zeroLineColor: "rgb(234, 236, 244)",
       drawBorder: false,
       borderDash: [2],
       zeroLineBorderDash: [2]
     }
   }],
 },
 legend: {
   display: false
 },
 tooltips: {
   titleMarginBottom: 10,
   titleFontColor: '#6e707e',
   titleFontSize: 14,
   backgroundColor: "rgb(255,255,255)",
   bodyFontColor: "#858796",
   borderColor: '#dddfeb',
   borderWidth: 1,
   xPadding: 15,
   yPadding: 15,
   displayColors: false,
   caretPadding: 10,
   callbacks: {
     label: function(tooltipItem, chart) {
       let datasetLabel2 = chart.datasets[tooltipItem.datasetIndex].label || '';
       return datasetLabel + ': ₩' + number_format(tooltipItem.yLabel);
     }
   }
 },
}
});

let ctx3 = document.getElementById("myPieChart");
let myPieChart = new Chart(ctx3, {
  type: 'doughnut',
  data: {
    labels: ["${genderChart[0].x}" <c:forEach items="${genderChart}" var="chart" begin="1">,"${chart.x}"</c:forEach>],
    datasets: [{
      data: ["${genderChart[0].y}" <c:forEach items="${genderChart}" var="chart" begin="1">,"${chart.y}"</c:forEach>],
      backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc'],
      hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: true,
      caretPadding: 10,
    },
    legend: {
      display: true
    },
    cutoutPercentage: 80,
  },
});

let ctx4 = document.getElementById("myPieChart2");
let myPieChart2 = new Chart(ctx4, {
  type: 'doughnut',
  data: {
    labels: ["${ageChart[0].x}" <c:forEach items="${ageChart}" var="chart" begin="1">,"${chart.x}"</c:forEach>],
    datasets: [{
      data: ["${ageChart[0].y}" <c:forEach items="${ageChart}" var="chart" begin="1">,"${chart.y}"</c:forEach>],
      backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc'],
      hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: true,
      caretPadding: 10,
    },
    legend: {
      display: true
    },
    cutoutPercentage: 80,
  },
});

let ctx5 = document.getElementById("myPieChart3");
let myPieChart3 = new Chart(ctx5, {
  type: 'doughnut',
  data: {
    labels: ["${genderAgeChart[0].x}" <c:forEach items="${genderAgeChart}" var="chart" begin="1">,"${chart.x}"</c:forEach>],
    datasets: [{
      data: ["${genderAgeChart[0].y}" <c:forEach items="${genderAgeChart}" var="chart" begin="1">,"${chart.y}"</c:forEach>],
      backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc'],
      hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: true,
      caretPadding: 10,
    },
    legend: {
      display: true
    },
    cutoutPercentage: 80,
  },
});
</script>
<script>
	$(function() {

		//오늘 테이블링 예약건수
		$.ajax({
			url : "/api/admin/tabling/todaycnt",
			type : "GET",
			contentType : "application/json", // 요청 컨텐트 타입 
			beforeSend : function(xhr) {
				let header = $("meta[name='_csrf_header']").attr("content");
				let token = $("meta[name='_csrf']").attr("content");
				xhr.setRequestHeader(header, token);
			},
			success : function(data, status) {
				$("#todayTabling").html(data + "건");
			},
			error : function(status, error) {
				console.log(error);
			}
		});
	});
	let salesDur = $('#salesDur').val();
	let salesCnt = $('#salesCnt').val();
	let ctgrDur = $('#ctgrDur').val();
	let ctgrCnt = $('#ctgrCnt').val();
	let genderDur = $('#genderDur').val();
	let genderCnt = $('#genderCnt').val();
	let ageDur = $('#ageDur').val();
	let ageCnt = $('#ageCnt').val();
	$('#salesDur').change(function(e){
		salesDur = $('#salesDur').val();
		let prefix = '';
		if(parseInt(salesDur) == 2){
			prefix = '일'
		}
		else if(parseInt(salesDur) == 0){
			prefix ='년';
		}
		else{
			prefix = '월';
		}
		$.ajax({
			url : "/admin/product/salesChart",
			type : "GET",
			contentType : "application/json", // 요청 컨텐트 타입 
			data:{
				type : salesDur,
				sumCount : salesCnt
			},
			context : this,
			beforeSend : function(xhr) {
				let header = $("meta[name='_csrf_header']").attr("content");
				let token = $("meta[name='_csrf']").attr("content");
				xhr.setRequestHeader(header, token);
			},
			success : function(data, status) {
				 myAreaChart.data.labels = [];
				 myAreaChart.data.datasets.forEach((dataset) => {
			        dataset.data = [];
			    });
				 for(var i = 0; i < data.length; i ++){
					 myAreaChart.data.labels.push(data[i].x+prefix);
				 }
				 myAreaChart.data.datasets.forEach((dataset) => {
					 for(var i = 0; i < data.length; i ++){
						 dataset.data.push(data[i].y);
					 }
			    });
				 myAreaChart.update();
			},
			error : function(status, error) {
				console.log(error);
			}
		});
	})
		$('#salesCnt').change(function(e){
			salesCnt = $('#salesCnt').val();
		let prefix = '';
		if(parseInt(salesDur) == 2){
			prefix = '일'
		}
		else if(parseInt(salesDur) == 0){
			prefix ='년';
		}
		else{
			prefix = '월';
		}
		$.ajax({
			url : "/admin/product/salesChart",
			type : "GET",
			contentType : "application/json", // 요청 컨텐트 타입 
			data:{
				type : salesDur,
				sumCount : salesCnt
			},
			context : this,
			beforeSend : function(xhr) {
				let header = $("meta[name='_csrf_header']").attr("content");
				let token = $("meta[name='_csrf']").attr("content");
				xhr.setRequestHeader(header, token);
			},
			success : function(data, status) {
				 myAreaChart.data.labels = [];
				 myAreaChart.data.datasets.forEach((dataset) => {
			        dataset.data = [];
			    });
				 for(var i = 0; i < data.length; i ++){
					 myAreaChart.data.labels.push(data[i].x + prefix);
				 }
				 myAreaChart.data.datasets.forEach((dataset) => {
					 for(var i = 0; i < data.length; i ++){
						 dataset.data.push(data[i].y);
					 }
			    });
				 myAreaChart.update();
			},
			error : function(status, error) {
				console.log(error);
			}
		});
	})
	$('#ctgrDur').change(function(e){
		ctgrDur = $('#ctgrDur').val();
		$.ajax({
			url : "/admin/product/ctgrChart",
			type : "GET",
			contentType : "application/json", // 요청 컨텐트 타입 
			data:{
				type : ctgrDur,
				sumCount : ctgrCnt
			},
			context : this,
			beforeSend : function(xhr) {
				let header = $("meta[name='_csrf_header']").attr("content");
				let token = $("meta[name='_csrf']").attr("content");
				xhr.setRequestHeader(header, token);
			},
			success : function(data, status) {
				 myBarChart.data.labels = [];
				 myBarChart.data.datasets.forEach((dataset) => {
			        dataset.data = [];
			    });
				 for(var i = 0; i < data.length; i ++){
					 myBarChart.data.labels.push(data[i].x);
				 }
				myBarChart.data.datasets.forEach((dataset) => {
					 for(var i = 0; i < data.length; i ++){
						 dataset.data.push(data[i].y);
					 }
			    });
				myBarChart.update();
			},
			error : function(status, error) {
				console.log(error);
			}
		});
	})
		$('#ctgrCnt').change(function(e){
			ctgrCnt = $('#ctgrCnt').val();
			$.ajax({
				url : "/admin/product/ctgrChart",
				type : "GET",
				contentType : "application/json", // 요청 컨텐트 타입 
				data:{
					type : ctgrDur,
					sumCount : ctgrCnt
				},
				context : this,
				beforeSend : function(xhr) {
					let header = $("meta[name='_csrf_header']").attr("content");
					let token = $("meta[name='_csrf']").attr("content");
					xhr.setRequestHeader(header, token);
				},
				success : function(data, status) {
					 myBarChart.data.labels = [];
					 myBarChart.data.datasets.forEach((dataset) => {
				        dataset.data = [];
				    });
					 for(var i = 0; i < data.length; i ++){
						 myBarChart.data.labels.push(data[i].x);
					 }
					myBarChart.data.datasets.forEach((dataset) => {
						 for(var i = 0; i < data.length; i ++){
							 dataset.data.push(data[i].y);
						 }
				    });
					myBarChart.update();
				},
				error : function(status, error) {
					console.log(error);
				}
		});
	})
			$('#genderDur').change(function(e){
				genderDur = $('#genderDur').val();
				$.ajax({
					url : "/admin/product/memberChart",
					type : "GET",
					contentType : "application/json", // 요청 컨텐트 타입 
					data:{
						type : genderDur,
						genderAge : 0,
						sumCount : genderCnt
					},
					context : this,
					beforeSend : function(xhr) {
						let header = $("meta[name='_csrf_header']").attr("content");
						let token = $("meta[name='_csrf']").attr("content");
						xhr.setRequestHeader(header, token);
					},
					success : function(data, status) {
						myPieChart.data.labels = [];
						myPieChart.data.datasets.forEach((dataset) => {
					        dataset.data = [];
					    });
						 for(var i = 0; i < data.length; i ++){
							 myPieChart.data.labels.push(data[i].x);
						 }
						 myPieChart.data.datasets.forEach((dataset) => {
							 for(var i = 0; i < data.length; i ++){
								 dataset.data.push(data[i].y);
							 }
					    });
						 myPieChart.update();
					},
					error : function(status, error) {
						console.log(error);
					}
			});
		})
 			$('#genderCnt').change(function(e){
				genderDur = $('#genderCnt').val();
				$.ajax({
					url : "/admin/product/memberChart",
					type : "GET",
					contentType : "application/json", // 요청 컨텐트 타입 
					data:{
						type : genderDur,
						genderAge : 0,
						sumCount : genderCnt
					},
					context : this,
					beforeSend : function(xhr) {
						let header = $("meta[name='_csrf_header']").attr("content");
						let token = $("meta[name='_csrf']").attr("content");
						xhr.setRequestHeader(header, token);
					},
					success : function(data, status) {

						myPieChart.data.labels = [];
						myPieChart.data.datasets.forEach((dataset) => {
					        dataset.data = [];
					    });
						 for(var i = 0; i < data.length; i ++){
							 myPieChart.data.labels.push(data[i].x);
						 }
						 myPieChart.data.datasets.forEach((dataset) => {
							 for(var i = 0; i < data.length; i ++){
								 dataset.data.push(data[i].y);
							 }
					    });
						 myPieChart.update();
					},
					error : function(status, error) {
						console.log(error);
					}
			});
		}) 
		$('#ageDur').change(function(e){
			ageDur = $('#ageDur').val();
				$.ajax({
					url : "/admin/product/memberChart",
					type : "GET",
					contentType : "application/json", // 요청 컨텐트 타입 
					data:{
						type : ageDur,
						genderAge : 1,
						sumCount : ageCnt
					},
					context : this,
					beforeSend : function(xhr) {
						let header = $("meta[name='_csrf_header']").attr("content");
						let token = $("meta[name='_csrf']").attr("content");
						xhr.setRequestHeader(header, token);
					},
					success : function(data, status) {
						myPieChart2.data.labels = [];
						myPieChart2.data.datasets.forEach((dataset) => {
					        dataset.data = [];
					    });
						 for(var i = 0; i < data.length; i ++){
							 myPieChart2.data.labels.push(data[i].x);
						 }
						 myPieChart2.data.datasets.forEach((dataset) => {
							 for(var i = 0; i < data.length; i ++){
								 dataset.data.push(data[i].y);
							 }
					    });
						 myPieChart2.update();
					},
					error : function(status, error) {
						console.log(error);
					}
			});
		})
 			$('#ageCnt').change(function(e){
 				ageCnt = $('#ageCnt').val();
				$.ajax({
					url : "/admin/product/memberChart",
					type : "GET",
					contentType : "application/json", // 요청 컨텐트 타입 
					data:{
						type : ageDur,
						genderAge : 1,
						sumCount : ageCnt
					},
					context : this,
					beforeSend : function(xhr) {
						let header = $("meta[name='_csrf_header']").attr("content");
						let token = $("meta[name='_csrf']").attr("content");
						xhr.setRequestHeader(header, token);
					},
					success : function(data, status) {

						myPieChart2.data.labels = [];
						myPieChart2.data.datasets.forEach((dataset) => {
					        dataset.data = [];
					    });
						 for(var i = 0; i < data.length; i ++){
							 myPieChart2.data.labels.push(data[i].x);
						 }
						 myPieChart2.data.datasets.forEach((dataset) => {
							 for(var i = 0; i < data.length; i ++){
								 dataset.data.push(data[i].y);
							 }
					    });
						 myPieChart2.update();
					},
					error : function(status, error) {
						console.log(error);
					}
			});
		}) 
		$('#genderAgeDur').change(function(e){
			genderAgeDur = $('#genderAgeDur').val();
				$.ajax({
					url : "/admin/product/memberChart",
					type : "GET",
					contentType : "application/json", // 요청 컨텐트 타입 
					data:{
						type : genderAgeDur,
						genderAge : 2,
						sumCount : ageCnt
					},
					context : this,
					beforeSend : function(xhr) {
						let header = $("meta[name='_csrf_header']").attr("content");
						let token = $("meta[name='_csrf']").attr("content");
						xhr.setRequestHeader(header, token);
					},
					success : function(data, status) {

						myPieChart3.data.labels = [];
						myPieChart3.data.datasets.forEach((dataset) => {
					        dataset.data = [];
					    });
						 for(var i = 0; i < data.length; i ++){
							 myPieChart3.data.labels.push(data[i].x);
						 }
						 myPieChart3.data.datasets.forEach((dataset) => {
							 for(var i = 0; i < data.length; i ++){
								 dataset.data.push(data[i].y);
							 }
					    });
						 myPieChart3.update();
					},
					error : function(status, error) {
						console.log(error);
					}
			});
		}) 
		 			$('#genderAgeCnt').change(function(e){
		 				genderAgeCnt = $('#genderAgeCnt').val();
				$.ajax({
					url : "/admin/product/memberChart",
					type : "GET",
					contentType : "application/json", // 요청 컨텐트 타입 
					data:{
						type : genderAgeDur,
						genderAge : 2,
						sumCount : genderAgeCnt
					},
					context : this,
					beforeSend : function(xhr) {
						let header = $("meta[name='_csrf_header']").attr("content");
						let token = $("meta[name='_csrf']").attr("content");
						xhr.setRequestHeader(header, token);
					},
					success : function(data, status) {

						myPieChart3.data.labels = [];
						myPieChart3.data.datasets.forEach((dataset) => {
					        dataset.data = [];
					    });
						 for(var i = 0; i < data.length; i ++){
							 myPieChart3.data.labels.push(data[i].x);
						 }
						 myPieChart3.data.datasets.forEach((dataset) => {
							 for(var i = 0; i < data.length; i ++){
								 dataset.data.push(data[i].y);
							 }
					    });
						 myPieChart3.update();
					},
					error : function(status, error) {
						console.log(error);
					}
			});
		}) 
 			$('#Depart').change(function(e){
 				scode = $('#Depart').val();
				$.ajax({
					url : "/admin/product/reqPro",
					type : "GET",
					contentType : "application/json", // 요청 컨텐트 타입 
					data:{
						scode : scode
					},
					context : this,
					beforeSend : function(xhr) {
						let header = $("meta[name='_csrf_header']").attr("content");
						let token = $("meta[name='_csrf']").attr("content");
						xhr.setRequestHeader(header, token);
					},
					success : function(data, status) {
						console.log(data);
						let html = "";
						for(var i = 0; i < data.length; i++){
							html += `
								<tr`  
							if(data[i].sws_stock < data[i].year_order_avg && data[i].sws_order < data[i].year_order_avg){
								html += ` style="background:rgba(246, 194, 62, 0.5); "`
							}
							html += `>
								<td>\${data[i].w_id }</td>
								<td>\${data[i].w_name_kor }</td>
								<td>`
								html += parseInt(data[i].w_price).toLocaleString('ko-KR');
								html += `원</td>
								<td>\${data[i].sws_stock }</td>
								<td>\${data[i].sws_order }</td>
								<td>\${data[i].year_order_avg }</td>
								<td><a a href="/admin/product/update?w_id=\${data[i].w_id}"
									id="modal-button" class="btn btn-success btn-sm">상품 관리</a></td>
							</tr>`;
						}

						
						$('.reqOrdList').html(html);
					},
					error : function(status, error) {
						console.log(error);
					}
			});
		}) 
</script>

</html>