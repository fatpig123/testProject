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
<div class="container-fluid text-black">

	<!-- Page Heading -->
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800">테이블링 DashBoard</h1>
		<c:if test="${admin.totalAdmin}">
			<c:set var="select_store" value="${select_store}" />
			<select class="form-select form-select-lg" id="admin_scode">
				<c:forEach items="${fn:split(admin.region, '|') }" var="item"
					varStatus="status">
					<option value='scode${status.count}'>와인웍스 더현대 ${item}점</option>
				</c:forEach>
			</select>
		</c:if>
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
								class="text-xs font-weight-bold text-secondary text-uppercase mb-1">오늘
								예약 건수</div>
							<div class="row no-gutters align-items-center">
								<div class="col-auto">
									<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"
										class="counts">${info.completeCnt}/${info.counts[0]}건</div>
								</div>
								<div class="col">
									<div class="progress progress-sm mr-2">
										<div class="progress-bar bg-info" role="progressbar"
											style="width: ${Math.ceil(info.completeCnt / info.counts[0] * 100)}%"
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
			<div class="card border-left-warning shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div
								class="text-xs font-weight-bold text-warning text-uppercase mb-1">
								한 시간 뒤 예약 건수</div>
							<div class="h5 mb-0 font-weight-bold text-gray-800"
								class="counts">${info.counts[1]}건</div>
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
			<div class="card border-left-secondary shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div
								class="text-xs font-weight-bold text-secondary text-uppercase mb-1">오늘
								노쇼 건수</div>
							<div class="row no-gutters align-items-center">
								<div class="col-auto">
									<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"
										class="counts">${info.counts[2]}건</div>
								</div>
								<div class="col"></div>
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
			<div class="card border-left-info shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div
								class="text-xs font-weight-bold text-info text-uppercase mb-1">신규
								예약건수</div>
							<div class="row no-gutters align-items-center">
								<div class="col-auto">
									<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"
										class="counts">${info.counts[3]}건</div>
								</div>
								<div class="col"></div>
							</div>
						</div>
						<div class="col-auto">
							<i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Content Row -->

	<div class="row mt-4">
		<div class="col-xl-12 col-lg-12">
			<div class="card shadow mb-4">
				<!-- Card Header - Dropdown -->
				<div
					class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
					<h6 class="m-0 font-weight-bold text-black">오늘
						예약건수(${fn:length(info.todayReservations)}건)</h6>
					<div class="dropdown no-arrow">
						<a class="dropdown-toggle" href="#" role="button"
							id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i
							class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
						</a>
						<div
							class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
							aria-labelledby="dropdownMenuLink">
							<a class="dropdown-item" href="/admin/tabling/list">예약 내역 리스트</a>
						</div>
					</div>
				</div>
				<!-- Card Body -->
				<div class="card-body">
					<table class="table table-hover" id="todayResvs">
						<thead class="thead-light">
							<tr>
								<th scope="col">#</th>
								<th>예약번호(접수시간)</th>
								<th scope="col">방문시간</th>
								<th scope="col">인원</th>
								<th scope="col" class="mx-auto">상태</th>
								<th scope="col">테이블</th>
								<th scope="col">회원아이디</th>
							</tr>
						</thead>
						<tbody id="todayResvs-tbody">
							<c:forEach items="${info.todayReservations}" var="resv"
								varStatus="status">
								<c:if test="${resv.radminNote != null}">
									<tr class="today-resv" data-resv="${resv.rid}"
										data-toggle="tooltip" title="메모: ${resv.radminNote}">
										<th scope="row">${status.count}</th>
										<td>${resv.rid}</td>
										<td>${resv.rtime}시</td>
										<td>${resv.headcnt}명</td>
										<td><c:if test="${resv.rstatus eq 0}">
												<span class="badge badge-secondary w-50 py-2">취소</span>
											</c:if> <c:if test="${resv.rstatus eq 1}">
												<span class="badge badge-warning w-50 py-2  text-dark">예정</span>
											</c:if> <c:if test="${resv.rstatus eq 2}">
												<span class="badge badge-success w-50 py-2  text-dark">완료</span>
											</c:if> <c:if test="${resv.rstatus eq -1}">
												<span class="badge badge-danger w-50 py-2 text-black">노쇼</span>
											</c:if></td>
										<td>${resv.stid}</td>
										<td>${resv.member}</td>
									</tr>
								</c:if>
								<c:if test="${resv.radminNote == null}">
									<tr class="today-resv" data-resv="${resv.rid}">
										<th scope="row">${status.count}</th>
										<td>${resv.rid}</td>
										<td>${resv.rtime}시</td>
										<td>${resv.headcnt}명</td>
										<td><c:if test="${resv.rstatus eq 0}">
												<span class="badge badge-secondary w-50 py-2">취소</span>
											</c:if> <c:if test="${resv.rstatus eq 1}">
												<span class="badge badge-warning w-50 py-2  text-dark">예정</span>
											</c:if> <c:if test="${resv.rstatus eq 2}">
												<span class="badge badge-success w-50 py-2  text-dark">완료</span>
											</c:if> <c:if test="${resv.rstatus eq -1}">
												<span class="badge badge-danger w-50 py-2 text-black">노쇼</span>
											</c:if></td>
										<td>${resv.stid}</td>
										<td>${resv.member}</td>
									</tr>
								</c:if>

							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<!--<div class="row">

		<div class="col-xl-11 col-lg-11">
			<div class="card shadow mb-4">
				<div
					class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
					<h6 class="m-0 font-weight-bold text-black">오늘 예약건수</h6>
					<div class="dropdown no-arrow">
						<a class="dropdown-toggle" href="#" role="button"
							id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i
							class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
						</a>
						<div
							class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
							aria-labelledby="dropdownMenuLink">
							<div class="dropdown-header">Dropdown Header:</div>
							<a class="dropdown-item" href="#">Action</a> <a
								class="dropdown-item" href="#">Another action</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Something else here</a>
						</div>
					</div>
				</div>
				<div class="card-body">
					<div class="chart-area">
						<canvas id="myAreaChart"></canvas>
					</div>
				</div>
			</div>
		</div>
	</div>
	<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
		data-target="#form">Open Modal</button>-->

	<div class="modal fade text-black" id="form" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header border-bottom-1 modal-title">
					<h5 class="modal-title text-dark" id="exampleModalLabel">테이블링
						예약 상세</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<hr>
				<form>
					<div class="modal-body">
						<div class="row">
							<div class="form-group col-8">
								<label for="rid">예약번호(예약일자)</label> <input type="text"
									name="rid" class="form-control text-black" id="rid"
									aria-describedby="emailHelp" readonly> <small
									id="emailHelp" class="form-text text-muted">예약번호의
									'RESV_' 다음부터 예약일시 입니다.</small>
							</div>
							<div class="form-group col-3"
								style="display: flex; flex-direction: column;">
								<label for="rstatus" class="label">방문상태</label> <select
									class="custom-select" id="rstatus" name="rstatus">
									<option value="1">방문예정</option>
									<option value="2">방문완료</option>
									<option value="-1">노쇼</option>
									<option value="0">취소</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label for="member">예약자</label> <input type="text" name="member"
								class="form-control text-black" id="member" placeholder="회원정보"
								readOnly>
						</div>

						<div class="row">
							<div class="form-group col">
								<label for="rdate">방문예정일</label> <input type="text" name="rdate"
									class="form-control" id="rdate" placeholder="예정일" readonly>
							</div>
							<div class="form-group col">
								<label for="rtime">방문예정시간</label> <input type="text"
									name="rtime" class="form-control id="
									rtime"
									placeholder="예정시간" readonly>
							</div>
							<div class="form-group col">
								<label for="headcnt">방문인원</label> <input type="text"
									name="headcnt" class="form-control" id="headcnt"
									placeholder="인원" readonly>
							</div>
						</div>

						<div class="form-group">
							<label for="stid">테이블</label> <input type="text" name="stid"
								class="form-control" id="stid" placeholder="테이블번호" readonly>
						</div>
						<div class="form-group">
							<label for="rmsg">요청사항</label>
							<textarea class="form-control" id="rmsg" name="rmsg" rows="2"
								placeholder="(메모 없음)" readonly></textarea>
						</div>
						<div class="form-group">
							<label for="radminNote">관리자 메모</label>
							<textarea class="form-control" id="radminNote" name="radminNote"
								rows="3" placeholder="(메모 없음)"></textarea>
						</div>
					</div>
					<div
						class="modal-footer border-top-0 d-flex justify-content-center">
						<div class="row">
							<button type="button" class="btn btn-secondary mr-1"
								data-dismiss="modal">닫기</button>
							<button type="button" class="btn btn-primary"
								onclick="updateResv();">수정</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- /.container-fluid -->

<script>
	function getResvDetail(resvId) {

		$.ajax({
			url : "/api/admin/tabling/detail/" + resvId,
			type : "GET",
			beforeSend : function(xhr) {
				let header = $("meta[name='_csrf_header']").attr("content");
				let token = $("meta[name='_csrf']").attr("content");
				xhr.setRequestHeader(header, token);
			},
			success : function(res, status) {
				
				console.log(res);
				let rdate = res.rdate[0] + '년 ' + res.rdate[1] + '월 '
						+ res.rdate[2] + '일';

				$('input[name=rid]').val(res.rid);
				$('input[name=member]').val(res.member);
				$('input[name=rdate]').val(rdate);
				$('input[name=rtime]').val(res.rtime + '시');
				$('input[name=headcnt]').val(res.headcnt + "명");
				$('input[name=stid]').val(res.stid);
				$('#rmsg').val(res.rmsg);
				$('#radminNote').val(res.radminNote);
				$("#rstatus").val(res.rstatus).prop("selected", true);
				
				$("#rstatus").data('before', res.rstatus);
				$("#radminNote").data('before', res.radminNote);
				
				$('#form').modal('show');
			},
			error : function(status, error) {
				console.log(error);
			}
		});
	}
	
	function updateResv() {
		let radminNote = $('#radminNote').val().trim();
		let rstatus = $("#rstatus").val();
		let rid = $('input[name="rid"]').val();
		console.log("업데이트", radminNote.length, rstatus, rid, $("#radminNote").data('before'));
		console.log("업2", $("#rstatus").data('before') == rstatus, $("#radminNote").data('before') == radminNote);
		
		let admin_flag = radminNote == $("#rstatus").data('before') || radminNote.length == 0;
		let status_flag = rstatus == $("#rstatus").data('before');
		
		//TODO: 상태 유효성 검사
		
		if(admin_flag && status_flag){
			Swal.fire({
				  icon: 'warning',
				  title: '변경사항이 없습니다.',
				  timer: 1500,
				  confirmButtonText: '닫기'
				})
			return;
		}else{
			
			let formdata = {
				"rid" : rid,
				"radminNote" : radminNote,
				"rstatus" : rstatus 
			};
			
			$.ajax({
				url : "/api/admin/tabling/modify",
				type : "POST",
				contentType : "application/json",
				data: JSON.stringify(formdata),
				beforeSend : function(xhr) {
					let header = $("meta[name='_csrf_header']").attr("content");
					let token = $("meta[name='_csrf']").attr("content");
					xhr.setRequestHeader(header, token);
				},
				success : function(res, status) {
					console.log(res, status);
	
					Swal.fire({
					  title: '수정되었습니다.',
					  text: "창이 닫힙니다.",
					  icon: 'success',
					  showCancelButton: false,
					  confirmButtonColor: '#46675c',
					  confirmButtonText: '닫기'
					}).then((result) => {
					  if (result.isConfirmed) {
						  location.reload();
					  }
					});
				},
				error : function(status, error) {
					console.log(error);
					Swal.fire({
						  icon: 'error',
						  title: '오류가 발생했습니다.',
						  timer: 1500,
						  confirmButtonText: '닫기'
						});
				}
			});
		}
	}

	$(".today-resv").on("click", function() {
		getResvDetail($(this).data('resv'));
	});
	
	$('#admin_scode').on("change", function() {
		location.href = '/admin/tabling?scode=' + $(this).val();
	});
	
	$(function() {
		$('[data-toggle="tooltip"]').tooltip();  
		const select_store = '${select_store}';
	    if(select_store.length){
	    	$("#admin_scode").find("option").each(function(idx) {
	    		 if(this.value == select_store){
	    			 console.log(this.value, this);
	    			 $("#admin_scode option:eq("+idx+")").prop("selected",true);
	    			 return false;
	    		 }
	    	});
	    }else{
	    	console.log("없다냥");
	    }
	});
</script>
</html>