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

.form-select-lg {
	padding-top: 0.5rem;
	padding-bottom: 0.5rem;
	padding-left: 0.3rem;
	font-size: 1.1rem;
	border-radius: 0.5rem;
}

</style>
<body>

	<!-- Begin Page Content -->
	<div class="container-fluid text-black">
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
			<h1 class="h3 mb-2 text-gray-800">테이블링 예약 내역</h1>
				
						<c:forEach items="${admin.authList}" var="auth">
							<c:if test="${auth.role eq 'ROLE_ADMIN_TOTAL'}">
								<select class="form-select form-select-lg" id="admin_scode">
									<option value="scode">전체보기</option>
									<option value="scode1">와인웍스 더현대 서울점</option>
									<option value="scode2">와인웍스 더현대 대구점</option>
								</select>
							</c:if>
						</c:forEach>
		</div>
		<p class="mb-4">해당 지점의 예약 내역을 기간별, 정렬 기준에 따라 조회하실 수 있습니다.</p>
		<div id="realBody">
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">픽업 내역 상세</h6>
			</div>
			<div class="card-body" id="bodyPickup">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable"
						style="width: 100%; text-align: center;" cellspacing="0">
						<thead>
							<tr>
								<th>주문번호</th>
								<th>주문아이디(이름)</th>
								<th>주문상태</th>
								<th>픽업날짜</th>
								<th>주문날짜</th>
								<th>픽업지점</th>
								<th>관리</th>
							</tr>
						</thead>
						<tbody class="tbodyPickup">
							<c:forEach items="${list}" var="vo">
								<tr>
									<td class="po_id"><c:out value="${vo.po_id}"></c:out></td>
									<td class="m_email">${vo.m_email}(${vo.po_name})</td>
									<c:if test="${vo.po_status == 1}">
										<td>결제완료</td>
									</c:if>
									<c:if test="${vo.po_status == 2}">
										<td>주문취소</td>
									</c:if>
									<c:if test="${vo.po_status == 3}">
										<td>상품준비완료</td>
									</c:if>
									<c:if test="${vo.po_status == 4}">
										<td>픽업완료</td>
									</c:if>
									<td><fmt:formatDate value="${vo.po_booking_date}"
											pattern="yyyy-MM-dd" /></td>
									<td><fmt:formatDate value="${vo.po_register_date}"
											pattern="yyyy-MM-dd" /></td>
									<c:if test="${vo.s_code eq 'scode1'}">
										<td>와인웍스 더현대 서울</td>
									</c:if>
									<c:if test="${vo.s_code eq 'scode2'}">
										<td>와인웍스 더현대 대구</td>
									</c:if>
									<td><a id="modal-button" class="btn btn-success btn-sm"
										href="#">내역확인</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
		</div>
		<div id="modal" class="modal">
			<div class="modal-content" style="font-weight: 700;">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">픽업 관리 상세</h6>
				</div>
				<div class="p-3 m-0 border-0 bd-example"></div>
			</div>
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
		// Get the modal element
		var modal = document.getElementById("modal");

		// Get the button that opens the modal
		var btn = document.getElementById("modal-button");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks on the button, open the modal
		$(document).on(
				"click", ".btn-success.btn-sm",
				function() {
					console.log(this);
					let po_id = $(this).closest('tr').find('.po_id').text();
					let m_email = $(this).closest('tr').find('.m_email').text().match(/([^()]+)/)[1].trim();
					console.log(po_id);
					console.log(m_email);
					$.ajax({
						type : "GET",
						url : "/admin/order/controll/detail?po_id=" + po_id
								+ "&m_email=" + m_email,
						success : function(response) {
							console.log("ajax 통신 성공");
							let order = response.order;
							let user = response.user;
							console.log(order);
							console.log(user);
							modal.style.display = "block";
							$(".p-3.m-0.border-0.bd-example").empty();
							let str = '';
							str += `
								<div class="row g-3">
								<div class="col">
									<span>픽업번호</span> <input type="text" class="form-control"
										value="\${order.po_id}" readonly="readonly" id="po_id">
								</div>
								<div class="col">
									<span>픽업주문날짜</span> <input type="text" class="form-control"
										value="\${getYmd20(order.po_register_date)}" readonly="readonly" id="po_register_date">
								</div>
								<div class="col">
									<span>방문예정날짜</span> <input type="text" class="form-control"
										value="\${getYmd20(order.po_booking_date)}" readonly="readonly" id="po_booking_date">
								</div>
								<div class="col">
									<span>픽업상태</span>
									<div class="dropdown mb-4">
										<button class="btn btn-primary dropdown-toggle" type="button"
											id="dropdownMenuButton" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false" style="width: 100%;text-align: center;
									`;
							if(order.po_status == 1) {
								str += `
										">결제완료</button>
										<div class="dropdown-menu animated--fade-in"
										aria-labelledby="dropdownMenuButton" style="width: 100%;text-align: center;">
										<a class="dropdown-item" href="#" id="productDone">상품준비완료</a> <a
										class="dropdown-item" href="#" id="pickupDone">픽업완료</a> <a
										class="dropdown-item" href="#" id="pickupCancel">픽업취소</a>
										`;
							}
							else if (order.po_status == 2) {
								str += `
										" disabled>픽업취소</button>
										`;
							}
							else if (order.po_status == 3) {
								str += `
										">상품준비완료</button>
										<div class="dropdown-menu animated--fade-in"
										aria-labelledby="dropdownMenuButton" style="width: 100%;text-align: center;">
										<a class="dropdown-item" href="#" id="pickupDone">픽업완료</a>
										<a class="dropdown-item" href="#" id="pickupCancel">픽업취소</a>
										`;
							}
							else {
								str += `
										" disabled>픽업완료</button>
										`;
							}
							str += `
									
										</div>
									</div>
								</div>
							</div>
							<div class="row g-3">
								<div class="col">
									<span>픽업금액</span> <input type="text" class="form-control"
										value="\${order.po_total_price.toLocaleString()} 원" readonly="readonly" id="po_total_price">
								</div>
								<div class="col">
									<span>사용 마일리지</span> <input type="text" class="form-control"
										value="\${order.po_mileage.toLocaleString()} 마일리지" readonly="readonly" id="po_mileage">
								</div>
								<div class="col">
									<span>이메일(이름)</span> <input type="text" class="form-control"
										value="\${user.memail} (\${order.po_name})" readonly="readonly" id="m_email">
								</div>
								<div class="col">
									<span>핸드폰번호</span> <input type="text" class="form-control"
										value="\${order.po_phone}" readonly="readonly" id="po_phone">
								</div>
								<div class="col">
									<span>픽업지점</span> <input type="text" class="form-control"
										value="\${order.payment.pm_company}" readonly="readonly" id="s_code">
								</div>
							</div>
							<br>
							<div class="row g-3">
							<div class="col">
							<span>주문 상품 정보 (갯수)</span> 
									`;
							for (var i = 0; i < order.items.length; i++) {
								str += `
										<input type="text" class="form-control"
												value="상품 이름 : \${order.items[i].productDetail.w_name_kor} / 상품 가격 : \${printWithCommasRegex(order.items[i].productDetail.w_price)} 원 / 상품 갯수 : \${order.items[i].poi_quantity} 개" readonly="readonly">
										<br>
										`;
							}
							str += `
								</div>
							</div>
									`;
							if (order.po_status == 1 || order.po_status == 3) {
								str += `
									<div style="display: flex; justify-content: flex-end;">
									<a href="#" class="btn btn-info btn-icon-split"
										style="margin-right: 50px;"> <span class="icon text-white-50">
											<i class="fas fa-info-circle"></i>
									</span> <span class="text">수정하기</span>
									</a> <a href="#" class="btn btn-secondary btn-icon-split"> <span
										class="icon text-white-50"> <i class="fas fa-arrow-right"></i>
									</span> <span class="text">닫기</span>
									</a>
								</div>
										`;
							}
							else {
								str += `
									<div style="display: flex; justify-content: flex-end;">
									<a href="#" class="btn btn-secondary btn-icon-split"> <span
										class="icon text-white-50"> <i class="fas fa-arrow-right"></i>
									</span> <span class="text">닫기</span>
									</a>
								</div>
										`;
							}
							$(".p-3.m-0.border-0.bd-example").append(str);
							
						},
						error : function(error) {
							console.log("Error retrieving data:", error);
						}
					});
				});

		// When the user clicks on <span> (x), close the modal
		$(document).on("click", ".btn.btn-secondary.btn-icon-split", function() {
			modal.style.display = "none";
		});
		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
		
		$(document).on("click", "#pickupDone", function() {
			console.log("안녕");
			console.log(this);
			$('#dropdownMenuButton').text('픽업완료');
		});
		
		$(document).on("click", "#productDone", function() {
			console.log("안녕");
			console.log(this);
			$('#dropdownMenuButton').text('상품준비완료');
		});
		
		$(document).on("click", "#pickupCancel", function() {
			console.log("안녕");
			console.log(this);
			$('#dropdownMenuButton').text('픽업취소');
		});
		
		$(document).on("click", ".btn.btn-info.btn-icon-split", function() {
			let csrfHeaderName = "${_csrf.headerName}";
			let csrfTokenValue = "${_csrf.token}";
			
			let po_id = $("#po_id").val();
			let m_email = $("#m_email").val();
			let emailRegex = /([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z0-9_-]+)/;
			m_email = m_email.match(emailRegex)[0];
			let po_mileage =$("#po_mileage").val();
			po_mileage = po_mileage.replace(/,/g, '').match(/\d+/g);
			let status = $("#dropdownMenuButton").text();
			let po_status;
			
			if (status == '픽업취소') po_status = 2;
			else if (status == '상품준비완료') po_status = 3;
			else if (status == '픽업완료') po_status = 4;
		
			
			console.log("po_id : " + po_id + " m_email : " + m_email + " po_mileage : " + po_mileage + " po_status : " + po_status);
			
			let url = '/admin/order/update/pickup';
	    	console.log(url);
	    	Swal.fire({
	            title: '정말 변경하시겠습니까 ?',
	            icon: 'question',
	            showCancelButton: true,
	            confirmButtonColor: '#46675c',
	            confirmButtonText: '확인',
	            cancelButtonText: '취소',
	        }).then((result) => {
	            if (result.isConfirmed) {
	                Swal.fire(
	                    '정상적으로 변경되었습니다.',
	                    '',
	                    'success'
	                );
	                console.log("주문 상태 변경");
	                $.ajax({
	                	type : 'post',
	                	url : url,
	                	beforeSend : function(xhr) {
							xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
						},
						data : JSON.stringify({
							po_id : po_id,
							po_mileage : po_mileage,
							m_email : m_email,
							po_status : po_status
						}),
	                	contentType : "application/json",
	                	success : function() {
	                		if (po_status == 3) {
	                			let po_name = $("#m_email").val();
	                			var extractedString = po_name.match(/\(([^)]+)\)/);
	                			po_name = extractedString ? extractedString[1] : '';
	                			let po_phone = $("#po_phone").val();
	                			let dto = {
	    								pickupId : po_id,
	    								pickupName : po_name,
	    								to : po_phone,
	    								status : true,
	    								result : "상품준비완료문자전송",
	    								orderStatus : 4
	    							};
	    							$.ajax ({
	                    				  url	: "/api/order/msg",
	                    				  type	: "POST",
	                    				  contentType : "application/json",
	                    				  data: JSON.stringify(dto),
	                    				  beforeSend : function(xhr){
	                    		               xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
	                    					},
	                    				  success : function(data, status) {
	                    						console.log(data); 
	                    				  },
	                    				  error	: function(status, error) {
	                    					  console.log('문자 전송 에러');
	                    					  return false;
	                    				  }
	                    			});
	                		}
							console.log("주문 취소함");
							document.location.reload();
						},	
						error : function(e) {
							console.log(e);
						}
	                });
	                
	            }
	        });
			
		});
	</script>
	<script>
	
	/* $(document).ready(function() {
		$(".qr").click();
	}); */
	
// 	$(document).ready(function() {
// 		$.ajax({
// 			url : '/admin/order/controll/scode?s_code=all',
// 			type : 'GET',
// 			success : function(data) {
// 				console.log(data);
// 				$("#bodyPickup").empty();
// 				let str = '';
// 				str += `
// 					<div class="table-responsive">
// 					<table class="table table-bordered" id="dataTable"
// 						style="width: 100%; text-align: center;" cellspacing="0">
// 						<thead>
// 							<tr>
// 								<th>주문번호</th>
// 								<th>주문아이디(이름)</th>
// 								<th>주문상태</th>
// 								<th>픽업날짜</th>
// 								<th>주문날짜</th>
// 								<th>픽업지점</th>
// 								<th>관리</th>
// 							</tr>
// 						</thead>
// 						<tbody class="tbodyPickup">
// 						`;
// 				for (var i = 0; i < data.list.length; i++) {
// 					var vo = data.list[i];
// 					str += `
// 							<tr>
// 								<td class="po_id">\${vo.po_id}</td>
// 								<td class="m_email">\${vo.m_email}(\${vo.po_name})</td>
// 							`;
// 					if (vo.po_status == 1) {
// 						str += `<td>결제완료</td>`;
// 					}
// 					else if (vo.po_status == 2) {
// 						str += `<td>주문취소</td>`;
// 					}
// 					else if (vo.po_status == 3) {
// 						str += `<td>상품준비완료</td>`;
// 					}
// 					else {
// 						str += `<td>픽업완료</td>`;
// 					}
// 					str += `
// 							<td>\${getYmd20(vo.po_booking_date)}</td>
// 							<td>\${getYmd20(vo.po_register_date)}</td>
// 							`;
// 					if (vo.store.s_code === 'scode1') {
// 						str += `<td>와인웍스 더현대 서울</td>`;
// 					}
// 					else {
// 						str += `<td>와인웍스 더현대 대구</td>`;
// 					}
// 					str += `
// 							<td><a id="modal-button" class="btn-success btn-sm" href="#">내역확인</a></td>
// 							</tr>
// 							`;
// 				}
// 				str += `
// 							</tbody>
// 						</table>
// 					</div>
// 					`;
// 				$("#bodyPickup").append(str);
// 			},
// 			error : function() {
// 				console.log("ajax 실패");
// 			}
// 		});
// 	});
	
	$(document).on("change", "#admin_scode", function() {
		console.log($(this).val());
		const s_code = $(this).val();
		
		$.ajax({
			url : '/admin/order/controll/scode?s_code='+s_code,
			type : 'GET',
			success : function(data) {
				$("#realBody").empty();
				console.log(data);
				let str = '';
				str += `
					<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">픽업 내역 상세</h6>
					</div>
					<div class="card-body" id="bodyPickup">
					<div class="table-responsive">
					<table class="table table-bordered" id="dataTable"
						style="width: 100%; text-align: center;" cellspacing="0">
						<thead>
							<tr>
								<th>주문번호</th>
								<th>주문아이디(이름)</th>
								<th>주문상태</th>
								<th>픽업날짜</th>
								<th>주문날짜</th>
								<th>픽업지점</th>
								<th>관리</th>
							</tr>
						</thead>
						<tbody class="tbodyPickup">
						`;
				for (var i = 0; i < data.list.length; i++) {
					var vo = data.list[i];
					str += `
							<tr>
								<td class="po_id">\${vo.po_id}</td>
								<td class="m_email">\${vo.m_email}(\${vo.po_name})</td>
							`;
					if (vo.po_status == 1) {
						str += `<td>결제완료</td>`;
					}
					else if (vo.po_status == 2) {
						str += `<td>주문취소</td>`;
					}
					else if (vo.po_status == 3) {
						str += `<td>상품준비완료</td>`;
					}
					else {
						str += `<td>픽업완료</td>`;
					}
					str += `
							<td>\${getYmd20(vo.po_booking_date)}</td>
							<td>\${getYmd20(vo.po_register_date)}</td>
							`;
					if (vo.store.s_code === 'scode1') {
						str += `<td>와인웍스 더현대 서울</td>`;
					}
					else {
						str += `<td>와인웍스 더현대 대구</td>`;
					}
					str += `
							<td><a id="modal-button" class="btn-success btn-sm" href="#">내역확인</a></td>
							</tr>
							`;
				}
				str += `
					</tbody>
					</table>
				</div>
				</div>
				</div>
				`; 
				$("#realBody").append(str);
			},
			error : function() {
				console.log("ajax 실패");
			}
		});
	});
   
	function startTime() {
        const today = new Date();

        let year = today.getFullYear();
        let month = today.getMonth() + 1;
        let day = today.getDate();

        let h = today.getHours();
        let m = today.getMinutes();
        let s = today.getSeconds();
        m = checkTime(m);
        s = checkTime(s);
        $('#currentTime').html("현재시각 : " + year + "년 " + month + "월 " + day + "일 " + h + "시 " + m + "분 " + s + "초 ");
        setTimeout(startTime, 1000);
     }

     function checkTime(i) {
        if (i < 10) { i = "0" + i };  // add zero in front of numbers < 10
        return i;
     }
	
	
   function getYmd20(date) {
  		//yyyy-mm-dd 포맷 날짜 생성
   	let d = new Date(date);
   	return d.getFullYear() + "-" + ((d.getMonth() + 1) > 9 ? (d.getMonth() + 1).toString() : "0" + (d.getMonth() + 1)) + "-" + (d.getDate() > 9 ? d.getDate().toString() : "0" + d.getDate().toString());
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
   
   function loadQRInfo(po_id) {
	   $.ajax({
		   url : "/admin/order/confirm/detail?po_id="+po_id,
		   type : "GET",
           success : function(data) {
        	   console.log(data);
        	   let order = data.order;
        	   let str = '';
        	   $(".modal-body").empty();
        	   str += `
                      <div class="row">
                         <div class="col-11"></div>
                         <div class="col-1">
                            <button type="button" class="close" data-dismiss="modal"
                               aria-label="Close">
                               <span aria-hidden="true">&times;</span>
                            </button>
                         </div>
                      </div>
                      <div class="row">
                      	<div class="col-2 text-center"><img src="/resources/asset/images/shop/table/reservation.png" class="img-responsive"  style="max-width:50px"></div>
                         <div class="col-8">
                            <div class="row">
                               <h3><strong>와인픽업 QR코드 확인</strong></h3>
                            </div>
                            <div class="row p-1">픽업번호 | \${order.po_id}</div>
                            <input type="hidden" value="\${order.po_id}" id="po_id">
                         </div>
                      </div>
                      <div class="row mt-2 p-3" style="background: #FFF0D3;" id="currentTime">현재시각: </div>
                      <div class="row mt-3 mb-1 ml-2">
                         <h4><strong>픽업 정보</strong></h4>
                      </div>
                      <div class="">
                         <table class="table table-hover text-black">
                            <tbody>
                               <tr>
                                  <th scope="row">픽업자</th>
                                  <td>\${order.po_name}</td>
                               </tr>
                               <tr>
                                  <th scope="row">주문날짜</th>
                                  <td>\${getYmd20(order.po_register_date)}</td>
                               </tr>
                               <tr>
                                  <th scope="row">픽업날짜</th>
                                  <td colspan="2">\${getYmd20(order.po_booking_date)}</td>
                               </tr>
                               <tr>
                                  <th scope="row">핸드폰번호</th>
                                  <td colspan="2">\${formatPhoneNumber(order.po_phone)}</td>
                               </tr>
                               <tr>
                                  <th scope="row">픽업지점</th>
                                  <td colspan="2">\${order.store.s_name}</td>
                               </tr>
                               <tr>
                                  <th scope="row">픽업상품</th>
                            `;
                           for (var i = 0; i < order.items.length; i++) {
                        	   str += `
                        		   <td colspan="2">\${order.items[i].productDetail.w_name_kor}</td>
                        		   		`;
                           }
                           str += `   
                               </tr>
                            </tbody>
                         </table>
                      </div>
                      <div class="form-group">
                      	<label for="confirm"><h4><strong>관리자 확인번호</strong></h4></label>
                      	<input type="password" class="form-control mt-n2" id="confirm" aria-describedby="help" placeholder="관리자용 확인 번호를 입력해주세요.">
                    </div>
                		`;
                $(".modal-body").append(str);
                startTime();
                $('.modal-footer').html(`<button type="button" class="btn btn-secondary"
                        data-dismiss="modal">닫기</button>
                     <button type="button" class="btn btn-primary" id="confirmButton">확인</button>`);
           },
           error: function (error) {
               console.log(error);
           }
	   });
   }
   
   $(".qr").on("click", function() {
      loadQRInfo($(this).data('rid'));
      $('#checkModal').modal('show');
      $(".modal-backdrop").removeClass("show");
      $(".modal-backdrop").attr("style", 'z-index:0');
      $(".modal-content.p-3").attr("style", "z-index:10");
   });
   
   $(document).on("click", "#confirmButton", function() {
	   console.log("안녕");
	   let po_confirm_admin = $("#confirm").val();
		   let po_id = $("#po_id").val();
		   let csrfHeaderName = "${_csrf.headerName}";
		   let csrfTokenValue = "${_csrf.token}";
		   console.log(po_confirm_admin);
		   console.log(po_id);
		   $.ajax({
			  url : '/admin/order/confirm/detail/ok',
			  type : 'POST',
			  beforeSend : function(xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			  },
			  data : JSON.stringify({
					po_id : po_id,
					po_confirm_admin : po_confirm_admin 
			  }),
	      	  contentType : "application/json",
	      	  success : function(data) {
					console.log(data);
					if (data == 0) {
						console.log("일치하는 아이디가 없음");
						Swal.fire({
			                 icon: 'error',
			                 text: '처리 권한이 없습니다.',
			                 confirmButtonText: '닫기'
			            });
					}
					else {
						console.log("일치하는 아이디 있음");
						Swal.fire({
				              title: '픽업이 확인되었습니다.',
				              text: "창이 닫힙니다.",
				              icon: 'success',
				              showCancelButton: false,
				              confirmButtonColor: '#46675c',
				              timer: 1500,
				              confirmButtonText: '닫기'
				        }).then((result) => {
				               $('#checkModal').modal('hide');
				               window.location.href="/admin/order/controll"
				        });
					}
			  },	
			  error : function(e) {
					console.log(e);
			  }
		   });
	   
	  
   });
   
   
   </script>
</html>