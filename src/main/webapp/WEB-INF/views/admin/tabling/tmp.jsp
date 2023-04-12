<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<style>
.text-black {
	color: black !important;
}
</style>
<body>

	<!-- Begin Page Content -->
	<div class="container-fluid">

		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">테이블링 예약 확인</h1>
		<p class="mb-4"></p>

		<!-- Modal start -->
		<div class="modal fade text-black" id="checkModal"
			data-backdrop="static" data-keyboard="false" tabindex="-1"
			aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-lg">
				<div class="modal-content p-3">
					<div class="modal-body">
						<div class="row mb-3">
							<div class="col-11"></div>
							<div class="col-1">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
						</div>
						<div class="row">
							<div class="col-2 p-1 bg-secondary">이미지</div>
							<div class="col-8 bg-primary">
								<div class="row p-1">
									<strong>와인웍스 QR코드 확인</strong>
								</div>
								<div class="row p-1" id="#rid">숫자들</div>
								<div class="row p-1">상태?</div>
							</div>
							<div class="col-2 bg-warning p-1">버튼</div>
						</div>
						<div class="row mt-2 p-2" style="background: #FFF0D3;">노란띠
							부분</div>
						<div class="row mt-3 mb-1 ml-2">
							<h3>상세</h3>
						</div>
						<div class="">
							<table class="table table-hover text-black">
								<tbody>
									<tr>
										<th scope="row">예약자</th>
										<td id="#member">Mark</td>
									</tr>
									<tr>
										<th scope="row">예약인수</th>
										<td id="#headcount">Thornton</td>
									</tr>
									<tr>
										<th scope="row">테이블 번호</th>
										<td id="#table">Larry the Bird</td>
									</tr>
									<tr>
										<th scope="row">예약일시</th>
										<td id="#visitDateTime">Larry the Bird</td>
									</tr>
									<tr>
										<th scope="row">예약지점</th>
										<td id="#scode">Larry the Bird</td>
									</tr>
									<tr>
										<th scope="row">고객 요청사항</th>
										<td id="#memberMsg">Larry the Bird</td>
									</tr>
									<tr>
										<th scope="row">관리자 메모</th>
										<td id="#adminNote">Larry the Bird</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="modal-footer">
						
					</div>
				</div>
			</div>
		</div>
		<!-- Modal end -->
	</div>
	<!-- /.container-fluid -->

	<script>
	
	$(document).ready(function(){
		
		//const urlParams = new URLSearchParams(window.location.search);

		// Get the value of the "param" parameter
		//const rid = urlParams.get('rid');
						let ridd = '${rid}';
		// Output the value to the console
		console.log(ridd, "+++++++++++++++++");
		
	    $(".qr").click();
	    loadQRInfo(ridd);
	});
	
	function clickBtn(){
		$(".qr").on("click", function() {
			loadQRInfo($(this).data('rid'));
			//$('#checkModal').modal('show');
		});
	}
		
	function confirmResv(ridd, scodee){

		let confirm = $('#confirm').val().trim();
		
		if(confirm == null || confirm.length == 0){
			Swal.fire({
				  title: '관리자 확인 번호를 입력해주세요.',
				  icon: 'warning',
				  showCancelButton: false,
				  confirmButtonColor: '#46675c',
				  confirmButtonText: '닫기'
				});
			return;
		}
			
		
		let confirm_data = {
				"rid": ridd,
				"confirm": confirm,
				"scode": scodee,
		};
		
		console.log("확인333", confirm_data);
		
		$.ajax({
			url : "/api/admin/tabling/confirm",
			type : "POST",
			contentType : "application/json",
			data: JSON.stringify(confirm_data),
			beforeSend : function(xhr) {
				let header = $("meta[name='_csrf_header']").attr("content");
				let token = $("meta[name='_csrf']").attr("content");
				xhr.setRequestHeader(header, token);
			},
			success : function(res, status) {
				console.log(res, status);
				
				Swal.fire({
				  title: '예약 확인되었습니다.',
				  text: "창이 닫힙니다.",
				  icon: 'success',
				  showCancelButton: false,
				  confirmButtonColor: '#46675c',
				  timer: 1500,
				  confirmButtonText: '닫기'
				}).then((result) => {
					$('#checkModal').modal('hide');
					location.href = '/admin/tabling';
				});
			},
			error : function(error, status) {
				console.log(error, status, error.responseJSON);
				
				let txt = '오류가 발생했습니다.';
				if(error.responseJSON.code == "NOT_THIS_PLACE_ADMIN"){
					txt = error.responseJSON.message;
					error.responseJSON.message = '처리 권한이 없습니다.';
				}
				Swal.fire({
					  icon: 'error',
					  title: error.responseJSON.message,
					  text: txt,
					  confirmButtonText: '닫기'
					});
			}
		});
	}
	
	function loadQRInfo(resvId) {
		$.ajax({
			url : "/api/admin/tabling/qr_show/" + resvId,
			type : "GET",
			beforeSend : function(xhr) {
				let header = $("meta[name='_csrf_header']").attr("content");
				let token = $("meta[name='_csrf']").attr("content");
				xhr.setRequestHeader(header, token);
			},
			success : function(res, status) {
				console.log(res, status);
				
				let customer_msg = res.memberMsg == null ? '(요청사항 없음)' : res.memberMsg;
				let admin_note = res.adminNote == null ? '(메모 없음)' : res.adminNote;
				let rid = "'"+res.rid+"'";
				let scode = "'"+res.scode+"'";
				let table = res.table.split('_')[1].substring(2);
				
				let input = `
					<div class="row">
					<div class="col-11"></div>
					<div class="col-1">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close" onclick="location.href = '/admin/tabling';">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
				</div>
				<div class="row">
					<div class="col-2 text-center"><img src="/resources/asset/images/shop/table/reservation.png" class="img-responsive"  style="max-width:50px"></div>
					<div class="col-8">
						<div class="row">
							<h3><strong>와인웍스 QR코드 확인</strong></h3>
						</div>
						<div class="row pl-1" id="#rid" data-resv="\${res.rid}">예약번호 | \${res.rid}</div>
					</div>
				</div>
				<div class="row mt-2 p-3" style="background: #FFF0D3;" id="currentTime">현재시각: </div>
				<div class="row mt-3 mb-1 ml-2">
					<h5><strong>예약 정보</strong></h5>
				</div>
				<div class="">
					<table class="table table-hover text-black">
						<tbody>
							<tr>
								<th scope="row">예약자</th>
								<td id="#member">\${res.member}</td>
							</tr>
							<tr>
								<th scope="row">예약인수</th>
								<td id="#headcount">\${res.headcount}명</td>
							</tr>
							<tr>
								<th scope="row">테이블 번호</th>
								<td id="#table" data-resv="\${res.table}">\${table}번</td>
							</tr>
							<tr>
								<th scope="row">예약일시</th>
								<td id="#visitDateTime">\${res.visitDateTime}</td>
							</tr>
							<tr>
								<th scope="row">예약지점</th>
								<td id="#scode" data-resv="\${res.scode}">\${res.storename}</td>
							</tr>
							<tr>
								<th scope="row">고객 요청사항</th>
								<td id="#memberMsg">\${customer_msg}</td>
							</tr>
							<tr>
								<th scope="row">관리자 메모</th>
								<td id="#adminNote" data-resv="\${res.adminNote}">\${admin_note}</td>
							</tr>
						</tbody>
					</table>
				</div>
					  <div class="form-group">
					    <label for="confirm"><h6><strong>확인번호</strong></h6></label>
					    <input type="confirm" class="form-control mt-n2" id="confirm" aria-describedby="help" placeholder="관리자용 확인 번호를 입력해주세요.">
					  </div>
				  `;

				$('.modal-body').empty();
				$('.modal-body').append(input);
				startTime();
				$('.modal-footer').html(`<button type="button" class="btn btn-secondary"
							data-dismiss="modal">닫기</button>
						<button type="button" class="btn btn-primary" onclick="confirmResv(\${rid}, \${scode});">확인</button>`);
				$('#checkModal').modal('show');
			},
			error : function(status, error) {
				console.log(error);
			}
		});
	}
	
	function startTime() {
		  const today = new Date();
		  
		  let year = today.getFullYear();
		  let month = today.getMonth()+1;
		  let day = today.getDate();
		  
		  let h = today.getHours();
		  let m = today.getMinutes();
		  let s = today.getSeconds();
		  m = checkTime(m);
		  s = checkTime(s);
		  $('#currentTime').html("현재시각: " + year +"년 " + month + "월 " + day + "일 " +  h + "시 " + m + "분 " + s + "초 ");
		  setTimeout(startTime, 1000);
		}

	function checkTime(i) {
		if (i < 10) 
			{i = "0" + i};  // add zero in front of numbers < 10
		return i;
	}
	
	$('.close').on("click", function(){
		 $(".modal-backdrop").removeClass("show");
	     $(".modal-backdrop").attr("style", 'z-index:0');
	});
	
	</script>
</html>