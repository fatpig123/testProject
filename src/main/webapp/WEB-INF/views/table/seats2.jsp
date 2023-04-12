<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>

<head>
<meta charset="UTF-8">
<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<link rel="stylesheet"
	href="/resources/asset/css/shop/tabling/style.css" />
<link rel="stylesheet"
	href="/resources/asset/css/shop/tabling/styles.css" />
<link rel="shortcut icon"
	href="${RESOURCES_PATH}/images/shop/default/favicon.ico"
	type="image/x-icon">

<style>
body {
	margin: auto;
	height: 100%;
}

body {
	padding: 0px;
	margin: 0px;
	overflow-y: auto;
	overflow-x: hidden;
	background-image:
		url(https://www.mysool.co.kr/images/background/background.webp);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
	width: 100vw;
	height: 100vh;
	font-family: 'GmarketSansMedium', sans-serif;
}

.prev {
	margin: 10px;
}

.r_header {
	width: 100vw;
	background-color: white;
	max-width: 465px;
	right: 0;
	left: 0;
	color: white;
	margin: 0 auto;
	background-color: rgb(95, 0, 128);
	height: 55px;
	display: flex;
	align-items: center;
}

.cbody {
	width: 100vw;
	height: 100vh;
	background-color: white;
	max-width: 465px;
	right: 0;
	left: 0;
	margin: 0 auto;
	padding: 0.5em 0;
}

.separator {
	width: 100vw;
	height: 100vh;
	background-color: white;
	max-width: 465px;
	right: 0;
	left: 0;
	margin: 0 auto;
}

main {
	min-height: 100%;
	position: relative;
	padding: 3%;
}

.floor {
	display: block;
	width: 94VW;
	height: 35vh;
	margin: auto;
	padding: 1% 0;
	background-color: #FDF9F0;
}

.row1 {
	display: flex;
	justify-content: space-evenly;
	width: calc(70%);
	height: calc(100%/ 6);
	margin: 2% auto;
	padding: 0.6% 7% 1% 0.4%;
	/* border: solid black; */
}

.row1>.area {
	display: flex;
	flex-direction: column;
	width: calc(100%/ 4);
	/* background-color: blue; */
	/* border: solid red 3px; */
}

.row1>.area>.table {
	width: 90%;
	height: calc(100%/ 6 * 3);
	border-radius: 5px;
	margin: 0 auto;
	background-color: #E0DCDC;
}

.row1>.area>.chairs {
	width: 70%;
	height: calc(100%/ 4);
	margin: 0.1em auto;
	display: flex;
	aspect-ratio: 1/1;
	/* background-color: #E0DCDC; */
}

.row1>.area>.chairs>.chair {
	width: 100%;
	margin: 0 1px;
	padding-top: calc(100%/ 3);
	background-color: #E0DCDC;
	border-radius: 3px;
	aspect-ratio: 1/1;
}

/***********/
.cabinet {
	width: calc(90%);
	height: calc(100%/ 11);
	margin: 0 auto;
	margin-top: 2%;
	margin-bottom: 5%;
	background-color: #21222a;
}

/***********/
.row2 {
	height: calc(100%/ 4 + 3%);
	display: flex;
	margin: auto;
	/* border: solid black; */
}

.row2>.area {
	/* background-color: blue; */
	/* border: solid red 3px; */
	margin: 0 1%;
	display: flex;
}

.row2>.area>.area2 {
	/* background-color: white; */
	height: 100%;
	margin: auto;
	display: flex;
	flex-direction: column;
}

.row2>.area>.area4 {
	/* background-color: gray; */
	height: 100%;
	margin: auto;
	display: flex;
	flex-direction: column;
}

.row2>.area>.area6 {
	width: 100%;
	display: flex;
	flex-direction: column;
}

.row2>.area>.area6>.chairs {
	width: 80%;
	height: calc(100%/ 7 * 2);
	margin: 1% auto;
	display: flex;
}

.row2>.area>.area6>.table {
	width: 94%;
	height: calc(100%/ 7 * 4);
	margin: 5% auto;
	border-radius: 5px;
	background-color: #E0DCDC;
}

.row2>.area>.area6>.chairs>.chair {
	width: 90%;
	padding-top: calc(90%/ 3);
	border-radius: 3px;
	background-color: #E0DCDC;
	margin: 0 1px;
}

/***/
.row2>.area>.area2>.chairs {
	width: 65%;
	height: calc(100%/ 7 * 2);
	margin: auto;
	display: flex;
}

.row2>.area>.area2>.table {
	width: 100%;
	height: calc(100%/ 7 * 4);
	margin: 5% auto;
	border-radius: 5px;
	background-color: #E0DCDC;
}

.row2>.area>.area2>.chairs>.chair {
	width: 100%;
	padding-top: calc(100%);
	border-radius: 3px;
	background-color: #E0DCDC;
}

/***/
.row2>.area>.area4>.chairs {
	width: 70%;
	height: calc(100%/ 7 * 2);
	margin: auto;
	display: flex;
}

.row2>.area>.area4>.table {
	width: 100%;
	height: calc(100%/ 7 * 4);
	margin: 5% auto;
	border-radius: 5px;
	background-color: #E0DCDC;
}

.row2>.area>.area4>.chairs>.chair {
	width: 98%;
	padding-top: calc(100%/ 2);
	border-radius: 3px;
	background-color: #E0DCDC;
	margin: 0 1px;
}

/***********/
.row3 {
	display: flex;
	justify-content: space-evenly;
	width: 86%;
	height: calc(100%/ 5);
	margin: 5% auto;
	/* border: solid black; */
}

.row3>.area {
	width: calc(100%/ 4 - 10px);
	height: 100%;
	margin: auto;
	display: flex;
	/* background-color: blue; */
	/* border: solid red 3px; */
}

.row3>.area>.chairs {
	width: calc(100%/ 5 * 2 + 5px);
	height: calc(100%/ 5 * 4);
	margin: auto;
	display: flex;
	flex-direction: column;
	/* background-color: #E0DCDC; */
}

.row3>.area>.table {
	width: calc(100%/ 5 * 4);
	height: calc(100%/ 5 * 4);
	border-radius: 50%;
	margin: auto;
	background-color: #E0DCDC;
}

.row3>.area>.chairs>.chair {
	width: calc(80%);
	height: 40%;
	padding-top: 30%;
	margin: auto;
	border-radius: 3px;
	background-color: #E0DCDC;
	margin: 2px;
}
/************/
.reservation_info {
	margin: 0 3%;
}

.resv_selected {
	margin: 5% auto;
	font-size: medium;
}

.resv_selected>div {
	/*background-color: orange
	margin: 1% 0%;*/
	padding: 0.3em;
}

.resv_selected>.place {
	
}

.resv_selected>.date {
	display: flex;
	justify-content: space-between;
	margin: 0 0 -0.3em 2%;
}

.resv_selected>.cnt {
	display: flex;
	justify-content: space-between;
	margin-left: 2%;
}

/*************/
#floor {
	max-width: 465px;
	width: 95%;
}

.color {
	width: 17px;
	height: 17px;
	margin-top: -3px;
}

.prev {
	left: 17px;
	display: block;
	width: 24.2px;
	height: 24.2px;
	background: url(/resources/asset/images/shop/default/mb_layer_close.png)
		no-repeat center;
	background-size: 19.2px;
	text-indent: -9999px;
	z-index: 10;
}

.place {
	float: left;
	font-size: larger;
	font-weight: 600;
	margin-top: 0.2em;
}

.cbody {
	position: relative;
	min-height: 100%;
}

.footer {
	position: fixed;
	z-index: 10;
	left: 0;
	bottom: 0;
	width: 465px;
	height: fit-content;
	right: 0;
	margin: 0 auto;
}

.btn_txt.btn_black {
	background: #46675c;
	border: 1px solid #46675c;
	color: #fff;
	width: 100%;
	height: 55px;
	text-align: center;
	font-size: larger;
	font-weight: 600;
}

.notification {
	margin: 0 3%;
}

.notification .contents {
	display: flex;
	width: 100%;
	margin: auto;
	justify-content: space-evenly;
}

.notification .content {
	display: flex;
}

.notification>div {
	height: fit-content;
	display: flex;
	flex-direction: column;
}

.notification>div>.color {
	border: solid 0.5px white;
}

hr {
	border: 0;
	margin: 0 auto;
	padding: 0;
}

hr.sep2 {
	height: 1px;
	margin: 3% 0;
	background: #ececec !important;
}

hr.separator {
	height: 8px;
	background-image: linear-gradient(to bottom, #e4e4e4, #f9f9f9 60%);
	background: #ececec !important;
}

.noti-item {
	margin: 4% 0;
}

.ex_mark {
	width: 18px;
	height: 18px;
	margin-right: 2px;
}

.alert_item {
	margin-bottom: 0.5em;
}

.alert_item>ul>li {
	font-size: smaller;
	margin: 0.5em 0em -0.2em 1.6em;
}
</style>

</head>

<body>
	<div class="r_header">
		<a href="javascript:history.go(-1);" class="prev">이전</a>
		<div class="place">&nbsp;와인웍스 더현대서울점</div>
	</div>
	<div class="cbody">
		<main id="main">
			<div class="notification">
				<div class="noti-item">
					<!--  <div style="margin-bottom: 1%; font-weight: 600">좌석안내</div>-->
					<div class="contents">
						<div class="content">
							<div class="color" style="background-color: #46675c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
							&nbsp;선택
						</div>
						<div class="content">
							<div class="color" style="background-color: #E0DCDC">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
							&nbsp;선택가능
						</div>
						<div class="content">
							<div class="color" style="background-color: #e5d6ea">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
							&nbsp;선택불가
						</div>
						<div class="content">
							<div class="color" style="background-color: #9999a3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
							&nbsp;예약완료
						</div>
					</div>
				</div>

			</div>


			<div id="floor" class="floor">
				<div class="row1">
					<div class="area seat" id="sel1_ss0_bar3">
						<div class="table"></div>
						<div class="chairs">
							<div class="chair"></div>
							<div class="chair"></div>
							<div class="chair"></div>
						</div>
					</div>
					<div class="area seat">
						<div class="table" id="sel1_ss1_bar3"></div>
						<div class="chairs">
							<div class="chair"></div>
							<div class="chair"></div>
							<div class="chair"></div>
						</div>
					</div>
					<div class="area seat">
						<div class="table"></div>
						<div class="chairs">
							<div class="chair"></div>
							<div class="chair"></div>
							<div class="chair"></div>
						</div>
					</div>
					<div class="area seat">
						<div class="table"></div>
						<div class="chairs">
							<div class="chair"></div>
							<div class="chair"></div>
							<div class="chair"></div>
						</div>
					</div>
				</div>
				<div class="cabinet"></div>
				<div class="row2">
					<div class="area" style="width: calc(100%/ 6);">
						<div class="area6 seat">
							<div class="chairs">
								<div class="chair"></div>
								<div class="chair"></div>
								<div class="chair"></div>
							</div>
							<div class="table"></div>
							<div class="chairs">
								<div class="chair"></div>
								<div class="chair"></div>
								<div class="chair"></div>
							</div>
						</div>
					</div>
					<div class="area" style="width: calc(100%/ 4);">
						<div class="area2 seat" style="width: calc(100%/ 6 * 2 - 3px);">
							<div class="chairs">
								<div class="chair"></div>
							</div>
							<div class="table"></div>
							<div class="chairs">
								<div class="chair"></div>
							</div>
						</div>
						<div class="area4 seat" style="width: calc(100%/ 6 * 4 - 3px);">
							<div class="chairs">
								<div class="chair"></div>
								<div class="chair"></div>
							</div>
							<div class="table"></div>
							<div class="chairs">
								<div class="chair"></div>
								<div class="chair"></div>
							</div>
						</div>
					</div>
					<div class="area" style="width: calc(100%/ 3.5);">
						<div class="area4 seat" style="width: calc(100%/ 2 - 3px);">
							<div class="chairs">
								<div class="chair"></div>
								<div class="chair"></div>
							</div>
							<div class="table"></div>
							<div class="chairs">
								<div class="chair"></div>
								<div class="chair"></div>
							</div>
						</div>
						<div class="area4 seat" style="width: calc(100%/ 2 - 3px);">
							<div class="chairs">
								<div class="chair"></div>
								<div class="chair"></div>
							</div>
							<div class="table"></div>
							<div class="chairs">
								<div class="chair"></div>
								<div class="chair"></div>
							</div>
						</div>
					</div>
					<div class="area" style="width: calc(100%/ 4);">
						<div class="area4 seat" style="width: calc(100%/ 6 * 4 - 3px);">
							<div class="chairs">
								<div class="chair"></div>
								<div class="chair"></div>
							</div>
							<div class="table"></div>
							<div class="chairs">
								<div class="chair"></div>
								<div class="chair"></div>
							</div>
						</div>
						<div class="area2 seat" style="width: calc(100%/ 6 * 2 - 3px);">
							<div class="chairs">
								<div class="chair"></div>
							</div>
							<div class="table"></div>
							<div class="chairs">
								<div class="chair"></div>
							</div>
						</div>
					</div>
					<div class="area" style="width: calc(100%/ 7);">
						<div class="area4 seat" style="width: 100%">
							<div class="chairs">
								<div class="chair"></div>
								<div class="chair"></div>
							</div>
							<div class="table"></div>
							<div class="chairs">
								<div class="chair"></div>
								<div class="chair"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row3">
					<div class="area seat">
						<div class="chairs">
							<div class="chair"></div>
							<div class="chair"></div>
						</div>
						<div class="table"></div>
						<div class="chairs">
							<div class="chair"></div>
							<div class="chair"></div>
						</div>
					</div>
					<div class="area seat">
						<div class="chairs">
							<div class="chair"></div>
							<div class="chair"></div>
						</div>
						<div class="table"></div>
						<div class="chairs">
							<div class="chair"></div>
							<div class="chair"></div>
						</div>
					</div>
					<div class="area seat">
						<div class="chairs">
							<div class="chair"></div>
							<div class="chair"></div>
						</div>
						<div class="table"></div>
						<div class="chairs">
							<div class="chair"></div>
							<div class="chair"></div>
						</div>
					</div>
					<div class="area seat">
						<div class="chairs">
							<div class="chair"></div>
							<div class="chair"></div>
						</div>
						<div class="table"></div>
						<div class="chairs">
							<div class="chair"></div>
							<div class="chair"></div>
						</div>
					</div>
				</div>
			</div>

			<div class="reservation_info">
				<form id="resvform" name="options" method="post">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" /> <input type="hidden" name="storeId"
						value="${options.storeId}" /> <input type="hidden"
						name="selectedDate" value="${options.selectedDate}" /> <input
						type="hidden" name="selectedTime" value="${options.selectedTime}" />
					<input type="hidden" name="tableId" /> <input type="hidden"
						name="headCount" value="${options.headCount}" />
				</form>
				<div class="resv_selected">
					<h3 class="section-title font-18">예약정보</h3>
					<div class="date">
						<div>일시</div>
						<div>${fn:split(options.selectedDate,'-')[0]}년
							${fn:split(options.selectedDate,'-')[1]}월
							${fn:split(options.selectedDate,'-')[2]}일
							${options.selectedTime}시</div>
					</div>
					<div class="cnt">
						<div>인원</div>
						<div>${options.headCount}명</div>
					</div>
					<div class="container">
						<div class="section-header">
							<h3 class="section-title font-16">고객 요청사항</h3>
						</div>
						<div class="section-body">
							<div class="__select-textarea">
								<textarea class="form-input __active"
									placeholder="레스토랑에 요청하실 내용을 입력해주세요." rows="4"></textarea>
							</div>
						</div>
					</div>
				</div>
				<hr class="sep2" />


				<div class="notification">
					<div class="noti-item">
						<div class="notice-subtitle">
							<div class="notice-subtitle_check"></div>
							유의사항
						</div>
						<div class="alert_item" style="background: #f9f9f9">
							<ul style="list-style: square">
								<li>2인석은 최소 1인, 4인석은 최소 2인, 6인석은 최소 5인부터 선택가능합니다.</li>
								<li>6인 초과 예약 시 매장에 전화하여 예약해주세요.</li>
								<li>매장 상황에 따라 입장시간이 지연될 수 있습니다.</li>
								<li>방문이 어려우신 경우 다른 고객님들을 위해 예약 취소 부탁드립니다.</li>
							</ul>
						</div>
					</div>
				</div>


			</div>

		</main>


	</div>
	<div class="footer">
		<div class="btn_area">
			<button name="submit" class="btn_txt btn_black">예약</button>
		</div>
	</div>

	<script>
		let colors = [ "#E0DCDC", "#9999A3", "#46675c", "#E6E8F9" ]; //avail(default), not_avail, selected, less_head_cnt
		let selected = null;

		function changeStatus(seat, color, status) {
			console.log("색상변경", seat, color);
			seat.children('.table').css({
				"background-color" : color
			});
			seat.find('.chair').css({
				"background-color" : color
			});
			if (status === "already") {
				seat.addClass("already");
			}
		}
		function alreadyReservedAlert() {
			//alert("해당 좌석은 이미 예약되었습니다.");
			Swal.fire('', "해당 좌석은 이미 예약되었습니다.", '');
		}
		function setSingleSelect(current) {
			console.log('singleselect', selected, current);
			//prev
			if (selected != null)
				changeStatus($('#' + selected), colors[0], 'single');
			//current
			changeStatus(current, colors[2], 'success');
			selected = current.attr('id');
		}
		function unselectSeat(seat) {
			changeStatus(seat, colors[0], 'unselect');
			selected = null;
			$("input[name='tableId']").val();
		}
		function checkHeadCountLimitWithAlert(seat, head) {
			let id = seat.attr('id');
			console.log('id', id);
			let limit = id.substring(id.length - 1);
			if (limit < head) {
				Swal.fire('', "선택하신 인원을 모두 수용할 수 없습니다.", '');
				//alert('선택하신 인원을 모두 수용할 수 없습니다.');
				return false;
			}
			if (limit == 6 && head < 5) {
				Swal.fire('', "최소 착석인원보다 적은 인원입니다.", '');
				//alert('최소 착석인원보다 적은 인원입니다');
				return false;
			} else if (limit == 4 && head < 2) {
				Swal.fire('', "최소 착석인원보다 적은 인원입니다", '');
				//alert('최소 착석인원보다 적은 인원입니다');
				return false;
			} else {
				return true;
			}
		}

		function checkHeadCountLimit(seat, head) {
			let id = seat.attr('id');
			let limit = id.substring(id.length - 1);

			if (limit < head) {
				changeStatus(seat, colors[3], '');
				return false;
			}
			if (limit == 6 && head < 5) {
				changeStatus(seat, colors[3], '');
				return false;
			} else if (limit == 4 && head < 2) {
				changeStatus(seat, colors[3], '');
				return false;
			} else {
				return true;
			}
		}

		$(function() {
			$
					.ajax({
						url : "/api/tabling/seatStatus",
						type : "POST",
						async : true,
						cache : true,
						data : $("form[name='options']").serialize(),
						//contentType: "application/json; charset=UTF-8",
						beforeSend : function(xhr) {
							let header = $("meta[name='_csrf_header']").attr(
									"content");
							let token = $("meta[name='_csrf']").attr("content");
							xhr.setRequestHeader(header, token);
						},
						success : function(data, status) {
							console.log('성공', data);
							console.log('seat 개수', $('.seat').length);
							let availables = data;
							let head = $("input[name='headCount']").val();
							for (let i = 0; i < availables.length; i++) {
								if (!availables[i].available) {
									changeStatus($('.seat').eq(i), colors[1],
											"already");
								}
								$('.seat').eq(i).attr('id',
										availables[i].tableId.substring(5));
							}
						},
						error : function(status, error) {
							console.log('실패');
						}
					});
		});
		$('.seat').on(
				"click",
				function() {
					console.log("야", $(this));
					if ($(this).hasClass('already')) {
						console.log('응');
						alreadyReservedAlert();
					} else {
						console.log('아니', $(this).attr('id'));
						$("input[name='tableId']").val(
								'sel1_' + $(this).attr('id'));
						//let options = {"storeId": "SCODE1", "selectedDate": "2023-03-20", "selectedTime" : 11, "tableId" : 'sel1_' + $(this).attr('id')};
						let seat = $(this);
						if (selected === seat.attr('id')) {
							unselectSeat(seat);
						} else {
							if (checkHeadCountLimitWithAlert(seat, $(
									"input[name='headCount']").val())) {
							} else {
								return false;
							}
							$.ajax({
								url : "/api/tabling/checkAvailable",
								type : "POST",
								async : true,
								cache : true,
								data : $("form[name='options']").serialize(),
								//contentType: "application/json; charset=UTF-8",
								beforeSend : function(xhr) {
									let header = $("meta[name='_csrf_header']")
											.attr("content");
									let token = $("meta[name='_csrf']").attr(
											"content");
									xhr.setRequestHeader(header, token);
								},
								success : function(data, status) {
									console.log('=============');
									console.log('성공', data);
									setSingleSelect(seat);
									console.log('=============');
								},
								error : function(status, error) {
									console.log('실패');
									$("input[name='tableId']").val(selected);
								}
							});
						}
					}
				});
		$("button[name='submit']").on(
				"click",
				function() {
					console.log("완료 클릭");
					if ($("input[name='storeId']").val() == '') {
						alert("storeId 확인");
						return false;
					}
					if ($("input[name='selectedDate']").val() == '') {
						alert("selectedDate 확인"
								+ $("input[name='selectedDate']").val());
						return false;
					}
					if ($("input[name='selectedTime']").val() == '') {
						alert("selectedTime 확인"
								+ $("input[name='selectedTime']").val());
						return false;
					}
					if ($("input[name='tableId']").val() == ''
							|| selected == null) {
						//alert("tableId 확인" + $("input[name='tableId']").val());
						Swal.fire('', "테이블을 선택해주세요.", '');
						return false;
					}
					if ($("input[name='headCount']").val() == '') {
						alert("headCount 확인"
								+ $("input[name='headCount']").val());
						return false;
					}
					
					let formdata = $("#resvform").serialize();
					
					let sdate = $("input[name='selectedDate']").val();	
					let stime = $("input[name='selectedTime']").val();	
					let sheadcnt = $("input[name='headCount']").val();	
					let stableId = $("input[name='tableId']").val().split("_")[1].substring(2);
					
					console.log("안녕", formdata);
					let alert_content = `\${sdate} \${stime}시 \n \${sheadcnt}명 \${stableId}번 테이블`;
					
					
					Swal.fire({
						  title: '예약하시겠습니까?',
						  text: alert_content,
						  icon: 'question',
						  showCancelButton: true,
						  confirmButtonColor: '#46675c',
						  cancelButtonColor: 'lightgray',
						  cancelButtonText: '취소',
						  confirmButtonText: '예약'
						}).then((result) => {
						  if (result.isConfirmed) {
							  
				        	$.ajax({
							    url: "/api/tabling/reservation",
							    type: "post",
							    dataType: "json",
							    data: formdata,
							    beforeSend : function(xhr){
									let header = $("meta[name='_csrf_header']").attr("content");
									let token = $("meta[name='_csrf']").attr("content");
									xhr.setRequestHeader(header, token);
								},
							    success: function(json){
							    	 /*swalWithBootstrapButtons.fire(
								              '예약완료!',
								              '예약이 확정되었습니다.',
								              'success'
								            );*/
								            Swal.fire({
								            	  title: '예약완료!',
								            	  text: "예약이 확정되었습니다.",
								            	  icon: 'success',
								            	  showCancelButton: false,
								            	  confirmButtonColor: '#46675c',
								            	  //cancelButtonColor: 'lightgray',
								            	  confirmButtonText: '예약확인'
								            	}).then((result) => {
								            	  if (result.isConfirmed) {
								            		  window.location.href = '/mypage/tabling';
								            	  }
								            	})
								     
							   	},
							    error: function (request, status, error){    
							    	swalWithBootstrapButtons.fire(
								              '예약 실패',
								              '오류가 발생했습니다.',
								              'error'
								            );
							    	
							    }
				          }); //end ajax
						    
						  }
						}); //swal fin
					
					

				});
	</script>
</body>
</html>