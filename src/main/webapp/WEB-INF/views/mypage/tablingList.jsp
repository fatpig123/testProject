<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html lang="ko">
<head>
<link rel="stylesheet"
	href="/resources/asset/css/shop/tabling/tabling.css" />
<link rel="stylesheet"
	href="/resources/asset/css/shop/tabling/styles.css" />
<link rel="stylesheet"
	href="/resources/asset/css/shop/tabling/theme.css" />
<link rel="shortcut icon"
	href="${RESOURCES_PATH}/images/shop/default/favicon.ico"
	type="image/x-icon">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<style>
body {
	font-family: 'NotoSansCJKkr', sans-serif;
}

.disable-user-select {
	user-select: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
}
</style>

<style>
.initLoader {
	position: absolute;
	width: 100px;
	height: 100px;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.circular {
	animation: rotate 2s linear infinite;
	height: 100px;
	position: relative;
	width: 100px;
}

.path {
	stroke-dasharray: 1, 100;
	stroke-dashoffset: 0;
	stroke: #ff3d00; /* ff3d00 */
	animation: dash 1.5s ease-in-out infinite, 6s ease-in-out infinite;
	stroke-linecap: round;
}

@
keyframes rotate { 100% {
	transform: rotate(360deg);
}

}
@
keyframes dash { 0% {
	stroke-dasharray: 1, 200;
	stroke-dashoffset: 0;
}
50
















%
{
stroke-dasharray
















:
















89
,
200














;
stroke-dashoffset
















:
















-35














;
}
100
















%
{
stroke-dasharray
















:
















89
,
200














;
stroke-dashoffset
















:
















-124














;
}
}
</style>

<style data-jss="" data-meta="MuiDrawer">
.MuiDrawer-docked {
	flex: 0 0 auto;
}

.MuiDrawer-paper {
	top: 0;
	flex: 1 0 auto;
	height: 100%;
	display: flex;
	outline: 0;
	z-index: 1200;
	position: fixed;
	overflow-y: auto;
	flex-direction: column;
	-webkit-overflow-scrolling: touch;
}

.MuiDrawer-paperAnchorLeft {
	left: 0;
	right: auto;
}

.MuiDrawer-paperAnchorRight {
	left: auto;
	right: 0;
}

.MuiDrawer-paperAnchorTop {
	top: 0;
	left: 0;
	right: 0;
	bottom: auto;
	height: auto;
	max-height: 100%;
}

.MuiDrawer-paperAnchorBottom {
	top: auto;
	left: 0;
	right: 0;
	bottom: 0;
	height: auto;
	max-height: 100%;
}

.MuiDrawer-paperAnchorDockedLeft {
	border-right: 1px solid rgba(0, 0, 0, 0.12);
}

.MuiDrawer-paperAnchorDockedTop {
	border-bottom: 1px solid rgba(0, 0, 0, 0.12);
}

.MuiDrawer-paperAnchorDockedRight {
	border-left: 1px solid rgba(0, 0, 0, 0.12);
}

.MuiDrawer-paperAnchorDockedBottom {
	border-top: 1px solid rgba(0, 0, 0, 0.12);
}
</style>
<style data-jss="" data-meta="makeStyles">
.jss5 {
	background-color: rgba(0, 0, 0, 0);
}
</style>
<style data-jss="" data-meta="MuiDialog">
@media print {
	.MuiDialog-root {
		position: absolute !important;
	}
}

.MuiDialog-scrollPaper {
	display: flex;
	align-items: center;
	justify-content: center;
}

.MuiDialog-scrollBody {
	overflow-x: hidden;
	overflow-y: auto;
	text-align: center;
}

.MuiDialog-scrollBody:after {
	width: 0;
	height: 100%;
	content: "";
	display: inline-block;
	vertical-align: middle;
}

.MuiDialog-container {
	height: 100%;
	outline: 0;
}

@media print {
	.MuiDialog-container {
		height: auto;
	}
}

.MuiDialog-paper {
	margin: 32px;
	position: relative;
	overflow-y: auto;
}

@media print {
	.MuiDialog-paper {
		box-shadow: none;
		overflow-y: visible;
	}
}

.MuiDialog-paperScrollPaper {
	display: flex;
	max-height: calc(100% - 64px);
	flex-direction: column;
}

.MuiDialog-paperScrollBody {
	display: inline-block;
	text-align: left;
	vertical-align: middle;
}

.MuiDialog-paperWidthFalse {
	max-width: calc(100% - 64px);
}

.MuiDialog-paperWidthXs {
	max-width: 444px;
}

@media ( max-width :507.95px) {
	.MuiDialog-paperWidthXs.MuiDialog-paperScrollBody {
		max-width: calc(100% - 64px);
	}
}

.MuiDialog-paperWidthSm {
	max-width: 600px;
}

@media ( max-width :663.95px) {
	.MuiDialog-paperWidthSm.MuiDialog-paperScrollBody {
		max-width: calc(100% - 64px);
	}
}

.MuiDialog-paperWidthMd {
	max-width: 960px;
}

@media ( max-width :1023.95px) {
	.MuiDialog-paperWidthMd.MuiDialog-paperScrollBody {
		max-width: calc(100% - 64px);
	}
}

.MuiDialog-paperWidthLg {
	max-width: 1280px;
}

@media ( max-width :1343.95px) {
	.MuiDialog-paperWidthLg.MuiDialog-paperScrollBody {
		max-width: calc(100% - 64px);
	}
}

.MuiDialog-paperWidthXl {
	max-width: 1920px;
}

@media ( max-width :1983.95px) {
	.MuiDialog-paperWidthXl.MuiDialog-paperScrollBody {
		max-width: calc(100% - 64px);
	}
}

.MuiDialog-paperFullWidth {
	width: calc(100% - 64px);
}

.MuiDialog-paperFullScreen {
	width: 100%;
	height: 100%;
	margin: 0;
	max-width: 100%;
	max-height: none;
	border-radius: 0;
}

.MuiDialog-paperFullScreen.MuiDialog-paperScrollBody {
	margin: 0;
	max-width: 100%;
}
</style>
<style data-jss="" data-meta="makeStyles">
.jss4 {
	background-color: rgba(0, 0, 0, 0);
}
</style>
<style data-jss="" data-meta="MuiSnackbar">
.MuiSnackbar-root {
	left: 8px;
	right: 8px;
	display: flex;
	z-index: 1400;
	position: fixed;
	align-items: center;
	justify-content: center;
}

.MuiSnackbar-anchorOriginTopCenter {
	top: 8px;
}

@media ( min-width :600px) {
	.MuiSnackbar-anchorOriginTopCenter {
		top: 24px;
		left: 50%;
		right: auto;
		transform: translateX(-50%);
	}
}

.MuiSnackbar-anchorOriginBottomCenter {
	bottom: 8px;
}

@media ( min-width :600px) {
	.MuiSnackbar-anchorOriginBottomCenter {
		left: 50%;
		right: auto;
		bottom: 24px;
		transform: translateX(-50%);
	}
}

.MuiSnackbar-anchorOriginTopRight {
	top: 8px;
	justify-content: flex-end;
}

@media ( min-width :600px) {
	.MuiSnackbar-anchorOriginTopRight {
		top: 24px;
		left: auto;
		right: 24px;
	}
}

.MuiSnackbar-anchorOriginBottomRight {
	bottom: 8px;
	justify-content: flex-end;
}

@media ( min-width :600px) {
	.MuiSnackbar-anchorOriginBottomRight {
		left: auto;
		right: 24px;
		bottom: 24px;
	}
}

.MuiSnackbar-anchorOriginTopLeft {
	top: 8px;
	justify-content: flex-start;
}

@media ( min-width :600px) {
	.MuiSnackbar-anchorOriginTopLeft {
		top: 24px;
		left: 24px;
		right: auto;
	}
}

.MuiSnackbar-anchorOriginBottomLeft {
	bottom: 8px;
	justify-content: flex-start;
}

@media ( min-width :600px) {
	.MuiSnackbar-anchorOriginBottomLeft {
		left: 24px;
		right: auto;
		bottom: 24px;
	}
}
</style>
<style data-jss="" data-meta="makeStyles">
.jss6 {
	z-index: 100002;
}

.jss7 {
	bottom: 52px;
	z-index: 100002;
}
</style>
</head>

<body class="disable-user-select">
	<noscript>
		You need to enable JavaScript to run this app.<br /> 자바스크립트를 활성화해주시기
		바랍니다.
	</noscript>
	<section id="myt" style="min-height: 350px;">
		<div class="lnb mypage_lnb lnb_wrap">
			<div class="pc_hidden">
				<a class="prev">이전</a>
				<div class="select_brand js_select" id="select_brand">
					<button type="button" class="my_value js_selectBtn"
						onclick="$(this).toggleClass('on')">
						<span>테이블링 내역</span>
					</button>
					<ul class="mb_lnb_lists">
						<li><a href="/mypage">마이페이지</a></li>
						<li><a href="/mypage/orderList">픽업내역</a></li>
						<li><a href="/mypage/wineTastingCard">시음권내역</a></li>
						<li><a href="/decanting/bookList">나의 디켄팅북</a></li>
						<li><a href="/decanting/followList">나의 H-믈리</a></li>
					</ul>
				</div>
			</div>
			<div class="mypage_link mb_hidden">
				<ul class="depth_01">
					<li><a href="/shop/mypage/shopping/mypage">나의 쇼핑</a>
						<ul class="depth_02">
							<li class="on"><a href="/shop/mypage/shopping/order_lists">주문내역</a></li>
							<li><a href="/shop/mypage/shopping/return_order_lists">교환/반품내역</a></li>
							<li><a href="/shop/mypage/note/wish_lists">위시리스트</a></li>
							<li><a href="/shop/cart/cart_lists">장바구니</a></li>
							<!-- <li ><a href="/shop/mypage/shopping/order_pre_lists">이전주문 내역</a></li>
                    <li ><a href="/shop/mypage/shopping/order_shop_lists">오프라인 주문내역</a></li> -->
						</ul></li>
					<li><a href="#none">쇼핑수첩</a>
						<ul class="depth_02">
							<li><a href="/shop/mypage/note/giftcard_lists">나의 기프트카드</a></li>
							<!-- <li ><a href="/shop/mypage/note/balance_lists">나의 예치금</a></li> -->
							<li><a href="/shop/mypage/note/mileage_lists">나의 마일리지</a></li>
							<li><a href="/shop/mypage/note/coupon_lists">나의 쿠폰</a></li>
						</ul></li>
					<li><a href="#none">나의 활동</a>
						<ul class="depth_02">
							<li><a href="/shop/mypage/recommand/recommand_expert_lists">와인추천신청</a></li>
							<!-- <li ><a href="/shop/mypage/recommand/keeping_lists">보관내역</a></li> -->
							<li><a href="/shop/mypage/action/tasting_lists">나의 리뷰관리</a></li>
						</ul></li>
					<li><a href="#none">개인정보</a>
						<ul class="depth_02">
							<li><a href="/shop/mypage/action/qna_lists">문의내역확인</a></li>
							<li><a href="/shop/mypage/account/password_cert">회원정보수정</a></li>
							<li><a href="/shop/mypage/account/sns_connect">SNS 연동관리</a></li>
							<li><a href="/shop/mypage/account/change_password">비밀번호
									변경</a></li>
							<li><a href="/shop/mypage/account/withdrawal">회원탈퇴</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<main id="main">
			<hr class="separator" style="height: 1px;">
			<div class="mb-30"></div>
			<section class="section mb-30">
				<div class="container gutter-sm" style="margin: 15px;">
					<div class="tag-radio-group mt--10">
						<label><input type="radio" name="type" value="planned"
							checked=""><span class="label">방문예정</span></label><label
							style="position: relative;"><input type="radio"
							name="type" value="done"><span class="label">방문완료</span></label><label><input
							type="radio" name="type" value="cancel"><span
							class="label">취소/노쇼</span></label>
					</div>
				</div>
				<div class="container gutter-sm mt-24">
					<div class="section-header">
						<h3 id="totalCnt" class="section-title section-title-sm"
							style="margin-left: 0.5em;">총 1건</h3>
						<div class="utils">
							<a href="#?" class="btn-sort desc">예약일자</a>
						</div>
					</div>
					<div class="section-body">
						<div class="my-dining-list">
							<div class="section-body">
								<div class="mypage-reservation-list">
									<div class="my-dining-list">
										<div class="infinite-scroll">
											<ul class="reservation-list">

											</ul>
											<div></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</main>
	</section>
	<script>
		$('.prev').on("click", function(){
			console.log(document.referrer, window.location.href, "<-같아서 메인");
			let url = document.referrer;
			if(document.referrer.indexOf('/tabling/seats') == -1)
				url = '/mypage';
			location.href = document.referrer;	
		});

		function getTablingListByCond(){
			let sort = $('.btn-sort').hasClass('asc') ? 'asc' : 'desc';
			let status = $('input[name="type"]:checked').val();
			//console.log('status sort -> ', status, sort);
			$.ajax({
				url : "/api/tabling/mypage/list/" + status +"/"+sort,
				type : "GET",
				async : true,
				//cache : true,  
				success : function(data, status) {
					
					//필터
					
					//정렬
					if(data.sort === 'asc'){
						$('.btn-sort').removeClass('desc');
						$('.btn-sort').addClass('asc');
					}else{
						$('.btn-sort').removeClass('asc');
						$('.btn-sort').addClass('desc');
					}
					
					//총 개수
					$('#totalCnt').html(`총 \${data.cnt}건`);
					
					//리스트
					let reservations = data.reservations;
					$('ul.reservation-list').empty();
					//console.log("흠", data.status, data.status == 'cancel');
					let status_rev = '<div class="badge danger">완료</div>';
					let status_rev_soon = '<div class="badge noshow">방문예정</div>';
					let status_cancel = '<div class="badge filled common">취소</div>';
					let status_badge = status_rev;
					
					if(data.status == 'cancel')
						status_badge = status_cancel;
					else if(data.status == 'planned')
						status_badge = status_rev_soon;
					
					$.each(reservations, function(key, resv) {
						//console.log(resv);
						let rmsg = resv.rmsg == null ? ' ' : '요청사항: ' + resv.rmsg;
						str = `												<li><div class="my-dining-item-wrap">
							<div class="my-dining-item completed">
							<div class="my-dining-item-header">
								<input type="hidden" name="rid" value="\${resv.rid}" />
								<div class="my-dining-status">
									\${status_badge}
									<div class="desc">\${resv.rregDate} 예약</div>
								</div>
								<div class="restaurant-info">
									<div class="tb">
										<img
											src="\${resv.simgUrl}"
											alt=""
											style="background: url(&quot;data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7&quot;) center center no-repeat transparent;">
									</div>
									<div class="info">
										<h3>\${resv.sname}</h3>
										<div class="meta"></div>
										<div class="date">\${resv.rdate} \${resv.rtime} \${resv.rheadCnt}명</div>
										<div class="meta">\${rmsg}</div>
									</div>
								</div>
							</div>
							`;
							
							if(data.status == 'planned'){
								if(resv.qr){
									str += `<div class="__actions invite">
										<div>
											<button type="button" class="btn_txt btn_dgray qrcode" value="\${resv.rid}">QR코드 확인</button>
										</div>
										</div>`;
								}else{
									str += `<div class="__actions invite">
										<div>
											<button type="button" class="btn_txt btn_bgray cancel" value="\${resv.rid}">예약취소</button>
										</div>
										</div>`;
								}
								
							}
							str += `
						</div>
					</div></li>`;
						$('ul.reservation-list').append(str);
					});
					
					//console.log("부모", $('button.qrcode').parents("div.my-dining-item").addClass('soon'));

					let state = $('input[name="type"]:checked').val();
					if(reservations.length == 0) {
						let situation = '';
						
						if(state == 'cancel'){
							situation = '취소한';
						}else if(state == 'done'){
							situation = '방문완료한';
						}else if(state == 'planned'){
							situation = '방문예정인';
						}
						str = `<p class="txt-center plain-txt font-16 bold mt-70 mb-20" style="color:#786c6c">\${situation} 예약이 없습니다.</p>
							<button type="button" class="btn_txt btn_bgray" onclick="location.href='/tabling/store?store=scode1'">예약하러 가기</button>`;
						$('ul.reservation-list').append(str);
					}
					
				},
				error : function(status, error) {
					alert(error);
				}
			});
			
		}
		
		function cancelResv(rid){
			
			$.ajax({
				url : "/api/tabling/cancel_resv/" + rid ,
				type : "POST",
				async : true,
				beforeSend : function(xhr){
					let header = $("meta[name='_csrf_header']").attr("content");
					let token = $("meta[name='_csrf']").attr("content");
					xhr.setRequestHeader(header, token);
				},
				success : function(data, status) {
					console.log($('#header_tabling'), data, status);
				    Swal.fire(
						      '취소완료',
						      '예약 취소되었습니다.',
						      'info'
					);
				    getTablingListByCond();
				},
				error : function(status, error) {
					console.log(status, error);
					Swal.fire(
						      '취소 실패',
						      '에러가 발생했습니다.',
						      'error'
					);
				}
			});
		}
	
		$('.tag-radio-group>label').on("change", function() {
			getTablingListByCond();
		});
		
		$('a.btn-sort').on("click", function() {
			
			//상태변경
			if($(this).hasClass('desc')){
				$(this).removeClass('desc');
				$(this).addClass('asc');
			}else{
				$(this).removeClass('asc');
				$(this).addClass('desc');
			}
			
			//ajax 요청
			getTablingListByCond();
		});
		
		
		$(document).on("click", "button.cancel", function(){
			console.log('취소버튼', $(this).val());
			
			Swal.fire({
				  title: '예약을 취소하시겠습니까?',
				  text: "되돌릴 수 없습니다.",
				  icon: 'warning',
				  showCancelButton: true,
				  confirmButtonColor: '#46675c',
				  cancelButtonColor: 'lightgray',
				  confirmButtonText: '예약취소',
				  cancelButtonText: '되돌아가기'
				}).then((result) => {
				  if (result.isConfirmed) {
					cancelResv($(this).val());
				  }
				});
		})
		
		$( document ).ready(function() {
			getTablingListByCond();
		});
		
		//qr
	    $(document).on("click", "button.qrcode", function(){
	    	let domain = "http://192.168.0.28";
	    	let url = "/admin/tabling/confirm?rid=";
	    	let rid = window.btoa($('button.qrcode').val());
	    	let qrUrl = domain + url + rid;
	    	console.log("픽업 QR 코드", qrUrl);
			imgAlert(qrUrl);
	    });
	    
	    function imgAlert(qrUrl){
	    	  Swal.fire({
			  title : '와인웍스 테이블링',	    		  
	    	  text: 'QR코드를 직원에게 보여주세요.',
	    	  imageUrl: '/qr?url='+qrUrl,
	    	  imageWidth: 200,
	    	  imageHeight: 200,
	    	  imageAlt: '테이블링 qr코드',
	    	  cofirmButtonColor: '#46675c'
	    	});
	    	}
	
	</script>
</body>
</html>