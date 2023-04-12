<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html lang="ko">
<style>
.form-row-regi-regi {
	flex-wrap: wrap;
}

.txt {
	font-size: large;
	font-weight: 600;
}

#aroma-checkboxes label {
	margin-right: 6px;
}

#food-checkboxes label {
	margin-right: 6px;
}
</style>

<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<div class="container">
		<!-- Outer Row -->
		<div class="container-fluid">
			<input type="hidden" name="userAuthorities" id="rolerole"
				value=<sec:authentication property="principal.authorities"/> />
			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">상품 수정</h6>
				</div>
				<div class="card-body" style="padding-bottom: 0;">
					<form>
						<div class="form-row-regi">
							<div style="display: flex;">
								<div class="form-group col-md-6">
									<img style="width: 70%; margin-left: 40px; margin-top: 20px;"
										data-src="/uploads/product/550/c5729ae85ce559950658fb4487df567d.png"
										class="lozad" src="${item.w_img}" data-loaded="true">
									<!-- <button class="btn btn-primary" >이미지 변경</button> -->
								</div>
								<div style="display: flex; flex-direction: column;">
									<div class="" style="margin-bottom: 10px; display: flex;">
										<label style="width: 150px; margin: auto 0;"
											for="inputPassword4">상품명</label> <input type="text"
											class="form-control" id="name_kor"
											value="${item.w_name_kor }" disabled="disabled"
											style="border: none;"> <input type="hidden"
											class="form-control" id="wineId" value="${item.w_id }">
									</div>
									<div class="" style="margin-bottom: 10px; display: flex;">
										<label style="width: 150px; margin: auto 0;"
											for="inputAddress2">용량</label> <input type="text"
											class="form-control" id="volume" value="${item.w_volume }"
											disabled="disabled">
									</div>
									<div class="" style="margin-bottom: 10px; display: flex;">
										<label style="width: 150px; margin: auto 0;"
											for="inputPassword4">가격</label> <input type="text" min="0"
											max="1000" class="form-control" id="price"
											value="${item.w_price }" disabled="disabled">
									</div>
									<label style="width: 150px;" for="inputZip">재고량</label>
									<sec:authorize
										access="hasAnyRole('ROLE_ADMIN_SEOUL', 'ROLE_ADMIN_TOTAL')">
										<div class="" style="margin-bottom: 10px; display: flex;">
											<label style="width: 150px; margin: auto 0;" for="inputZip">서울</label>
											<input type="number" min="0" max="10000" class="form-control"
												id="seoulStock"
												value="${item.aromaNameList[0].foodNameList[0].stockList[0].sws_stock }">
										</div>
									</sec:authorize>
									<sec:authorize
										access="hasAnyRole('ROLE_ADMIN_DAEGU', 'ROLE_ADMIN_TOTAL')">
										<div class="" style="margin-bottom: 10px; display: flex;">
											<label style="width: 150px; margin: auto 0;" for="inputZip">대구</label>
											<input type="number" min="0" max="10000" class="form-control"
												id="daeguStock"
												value="${item.aromaNameList[0].foodNameList[0].stockList[1].sws_stock }">
										</div>
									</sec:authorize>
									<div class="" style="margin-bottom: 10px; display: flex;">
										<label style="width: 150px; margin: auto 0;" for="inputEmail4">타입</label>
										<input type="text" class="form-control" id="type"
											value="${item.w_type }" disabled="disabled">
									</div>
									<div class="" style="margin-bottom: 10px; display: flex;">
										<label style="width: 150px; margin: auto 0;"
											for="inputAddress">품종</label> <input type="text"
											class="form-control" id="variety_kor"
											value="${item.wv_variety_kor }" disabled="disabled">
									</div>
									<div class="" style="margin-bottom: 10px; display: flex;">
										<label style="width: 150px; margin: auto 0;"
											for="inputAddress">원산지</label> <input type="text"
											class="form-control" id="variety_kor"
											value="${item.wr_nation_kor } (${item.wr_area_kor })"
											disabled="disabled">
									</div>
									<div class="" style="margin-bottom: 10px; display: flex;">
										<label style="width: 150px; margin: auto 0;"
											for="inputAddress">와인 생산자</label> <input type="text"
											class="form-control" id="variety_kor"
											value="${item.wm_maker_kor }" disabled="disabled">
									</div>
									<div class="" style="margin-bottom: 10px; display: flex;">
										<label style="width: 150px; margin: auto 0;"
											for="inputAddress">음용 온도</label> <input type="text"
											class="form-control" id="variety_kor"
											value="${item.w_temperature }" disabled="disabled">
									</div>
									<div class="" style="margin-bottom: 10px; display: flex;">
										<label style="width: 150px; margin: auto 0;"
											for="inputAddress">알콜 도수</label> <input type="text"
											class="form-control" id="variety_kor"
											value="${item.w_alcohol }" disabled="disabled">
									</div>
								</div>
							</div>

						</div>
						<div class="form-row-regi">
							<div
								style="display: flex; margin-left: 88px; margin-right: 125px;">
								<div class="form-group col-md-3">
									<label for="inputZip">당도</label> <input type="text"
										class="form-control" id="sw" value="${item.w_sweetness }"
										disabled="disabled">
								</div>
								<div class="form-group col-md-3">
									<label for="inputZip">산도</label> <input type="text"
										class="form-control" id="aci" value="${item.w_acidity }"
										disabled="disabled">
								</div>
								<div class="form-group col-md-3">
									<label for="inputZip">탄닌</label> <input type="text"
										class="form-control" id="aci" value="${item.w_tannin }"
										disabled="disabled">
								</div>
								<div class="form-group col-md-3">
									<label for="inputZip">바디</label> <input type="text"
										class="form-control" id="bd" value="${item.w_body }"
										disabled="disabled">
								</div>
							</div>
						</div>

						<div class="form-row-regi"
							style="padding-left: 11px; margin-left: 88px; margin-right: 125px;">
							<label for="inputZip">음식 매칭</label>
							<div class="form-group col-md-12"
								style="display: flex; margin-right: 10px; overflow: hidden;">
								<c:forEach items="${item.aromaNameList[0].foodNameList }"
									var="food">
									<div
										style="display: flex; flex-direction: column; align-items: center; margin-right: 10px;">
										<span class="label" style="margin-bottom: 3px;"><img
											style="width: 50px" src="${food.wf_img_url }" /></span> <input
											type="text" style="margin-right: 10px; width: 100px;"
											class="form-control" id="inputZip" value="${food.wfs_name }"
											disabled="disabled" />
									</div>
								</c:forEach>
							</div>
							<label for="inputZip">아로마 매칭</label>
							<div class="form-group col-md-12"
								style="display: flex; margin-right: 10px; overflow: hidden;">
								<c:forEach items="${item.aromaNameList }" var="aroma">
									<div
										style="display: flex; flex-direction: column; align-items: center; margin-right: 10px;">
										<span class="label" style="margin-bottom: 3px;"><img
											style="width: 50px" src="${aroma.wa_img_url }" /></span> <input
											type="text" style="margin-right: 10px; width: 100px;"
											class="form-control" id="inputZip" value="${aroma.was_name }"
											disabled="disabled" />
									</div>
								</c:forEach>
							</div>
						</div>
						<hr>
				</div>
				<div
					style="display: flex; justify-content: space-around; margin: 20px 200px;">
					<button style="width: 100px; height: 40px;" type="button"
						class="btn btn-primary" id="updateBtn">수정</button>
				</div>
				</form>
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
	</div>
</div>
</div>
<style>
</style>
<script type="text/javascript">
	let w_id=" ";
	let w_name_kor;
	let w_name="" ;
	let w_img;
	let w_price=0;
	
	let w_ferment;
	let w_temperature;
	let w_volume ;
	let w_type;
	
	let wv_variety;
	let wv_variety_kor; 
	let wr_nation;
	let wr_nation_kor;
	let wr_area;
	let wr_area_kor;
	
	let wm_maker_kor;
	let wm_maker;
	
	let w_alcohol;
	let w_sweetness;
	let w_acidity;
	let w_body;
	let w_tannin;
	
	let wa_name;
	let wa_img_url;
	let was_name = [];
	let wf_name;
	let wf_img_url;
	let wfs_name = [];
	
	let s_code;
	let sws_stock;
	let s_name;
	
	$(document).ready(function() {
		w_id=$("#wineId").val();
		//alert(w_id);
		$('#seoulStock').change(function(){
			sws_stock = $(this).val();
			s_code="scode1";
			s_name="와인웍스 더현대 서울";
		   //alert(sws_stock); 
		});
		$('#daeguStock').change(function(){
			sws_stock = $(this).val();
			s_code="scode2";
			s_name="와인웍스 더현대 대구";
		   //alert(sws_stock); 
		});
		$('#image').change(function(){
			var w_img = $(this).val();
		    //alert(w_img); 
		});
		$('#price').change(function(){
			var w_price = $(this).val();
		    //alert(w_img); 
		});
		
		
    	let selectedValue = "";
    	//alert($("#rolerole").val());
    	let select = $("#rolerole").val().replace(/\[/g, "").replace(/\]/g, "").replace(/\s/g, "").replace(/ROLE_ADMIN/g, "").replace(/_/g, "").replace(/,/g, "");
    	//alert(select);
		
		  $("#updateBtn").on('click',function () {
			  
			  
			  console.log("s_code" + s_code);
			  console.log("s_name" + s_name);
			  console.log("sws_stock" + sws_stock)
					 
			    Swal.fire({
			      text: '상품을 수정하시겠습니까?',
			      icon: 'question',
			      showCancelButton: true,
			      confirmButtonColor: '#46675c',
			      cancelButtonColor: 'lightgrey',
			      confirmButtonText: '수정',
			      cancelButtonText: '취소',
			      reverseButtons: true,
			      
			    }).then((result) => {
			    
			      if (result.isConfirmed) {
			    	  let w_price = $("#price").val();
			    	  if(s_code=="scode1"){
			    		  sws_stock=$("#seoulStock").val();
			    	  } else {
			    	  	 sws_stock=$("#daeguStock").val();
			    	  }
			    	 
			    	  let w_id=$("#wineId").val();
			    	  let data = {
			    			  	"w_id": w_id,
				  				"w_price": w_price,
				  	    		"sws_stock": sws_stock,
				  	    		"s_code": s_code,
				  	    		"s_name": s_name,
				  				} 
			    	  
		               let header = $("meta[name='_csrf_header']").attr("content");
		               let token = $("meta[name='_csrf']").attr("content");
			    	  $.ajax({
							url : "/admin/product/update", 
							type : 'post', 
							data : data,
							dataType : "text",
							beforeSend : function(xhr){
					               xhr.setRequestHeader(header, token);
							},
							success : function(data) {
						        Swal.fire({							          
						        	text: '수정이 완료되었습니다!',
								    confirmButtonColor: '#46675c'
						        }).then((result) => {
									location.href="/admin/product/list";
						        });
							},
						     error:function(request,status,error){
						         alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
						     }
						});
			      }
			    })
			  });
	});
	
		 $("#deleteBtn").on('click',function () {
			    Swal.fire({
			      text: '상품을 삭제하시겠습니까?',
			      icon: 'question',
			      showCancelButton: true,
			      confirmButtonColor: '#46675c',
			      cancelButtonColor: 'lightgrey',
			      confirmButtonText: '삭제',
			      cancelButtonText: '취소',
			      reverseButtons: true,
			      
			    }).then((result) => {
			      if (result.isConfirmed) {
			    	  $.ajax({
							url : "/admin/product/delete", 
							type : 'DELETE', 
							data : {
								w_id: wineId
							},
							dataType : "text",
							beforeSend : function(xhr){
								   let header = $("meta[name='_csrf_header']").attr("content");
					               let token = $("meta[name='_csrf']").attr("content");
					               xhr.setRequestHeader(header, token);
							},
							success : function(data) {
						        Swal.fire({							          
						        	text: '삭제가 완료되었습니다!',
								    confirmButtonColor: '#46675c'
						        }).then((result) => {
									location.href="/admin/product/list";
						        });
							},
						     error:function(request,status,error){
						         alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
						     }
						     
						});

			      }
			    })
			  });

</script>
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
				sumCount : salesCnt,
				w_id : "${item.w_id }",
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
				sumCount : salesCnt,
				w_id : "${item.w_id }",
				
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
			$('#genderDur').change(function(e){
				genderDur = $('#genderDur').val();
				$.ajax({
					url : "/admin/product/memberChart",
					type : "GET",
					contentType : "application/json", // 요청 컨텐트 타입 
					data:{
						type : genderDur,
						genderAge : 0,
						sumCount : genderCnt,
						w_id : "${item.w_id }",
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
						sumCount : genderCnt,
						w_id : "${item.w_id }",
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
						sumCount : ageCnt,
						w_id : "${item.w_id }",
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
						sumCount : ageCnt,
						w_id : "${item.w_id }",
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
						sumCount : ageCnt,
						w_id : "${item.w_id }",
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
						type : genderAgeCnt,
						genderAge : 2,
						sumCount : ageCnt,
						w_id : "${item.w_id }",
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