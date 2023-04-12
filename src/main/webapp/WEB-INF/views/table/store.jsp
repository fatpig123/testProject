<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html lang="ko">
<head>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="/resources/asset/js/tabling/calendar.js"></script>
<link rel="stylesheet"
	href="/resources/asset/css/shop/tabling/tabling.css" />
<link rel="stylesheet"
	href="/resources/asset/css/shop/tabling/style.css" />
<link rel="stylesheet"
	href="/resources/asset/css/shop/tabling/theme.css" />

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />
<link rel="shortcut icon"
	href="${RESOURCES_PATH}/images/shop/default/favicon.ico"
	type="image/x-icon">
<style>
.r_header {
	
}

body {
	line-height: 1;
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

#root {
	width: 100vw;
	height: 100vh;
	background-color: white;
	max-width: 465px;
	right: 0;
	left: 0;
	margin: 0 auto;
	overflow: scroll;
}

.content>.btn {
	margin: 60px;
	padding: 20px 40px;
	font-size: 30px;
	border-radius: 40px;
}

.modal_background {
	position: fixed;
	top: 0;
	left: 0;
	bottom: 0;
	right: 0;
	background: rgba(0, 0, 0, 0.5);
	z-index: 10000;
}

.modal>.header {
	padding: 5px 5px 0 0;
	position: relative;
	color: black;
	background-color: white;
	height: 4%;
	border-bottom: 0 none;
	border-top: 0 none;
}

.modal>.body {
	display: block;
	padding: 2.2em 1em 1em 0em;
	margin: 0 auto;
	font-size: large;
	color: black;
	background-color: white;
	height: 100%;
	width: 100%;
	overflow-y: scroll;
}

.modal>.body::-webkit-scrollbar {
	display: none;
}

.tmp {
	padding: 0 1em;
}

.tmp>.resv_btn {
	background: #46675c;
	color: white;
	padding: 0.7em;
	border: solid 1px;
	transition: all .4s ease;
	cursor: pointer;
	width: 100%;
	text-align: center;
	border-radius: 5px;
	/*font-size: larger;*/
}

.modal-open .modal {
	top: 10%;
}

/************/
.calendar-container {
	padding: 0 1em;
}

/************/
.headCount-container {
	padding: 0.5em;
	margin: 0 auto;
}

.headCount-box {
	display: flex;
	justify-content: space-evenly;
	width: 100%;
	text-align: center;
	/* background-color: orange; */
}

.headCount-box>label {
	width: calc(100%/ 6);
}

.headCount-box>label>span {
	font-size: medium;
	/* min-width: 70px; */
}

.time-container {
	padding: 0.5em 1em 1em 1em;
}

.times-box {
	display: flex;
	justify-content: space-evenly;
	width: 100%;
	overflow: scroll;
	/* background-color: orange; */
}

/* .time-btn {
            min-width: 70px;
            margin: 0 5px;
        }

        .time-btn>span {
            font-size: medium;
            min-width: 70px;
        } */
.close-modal-btn {
	float: right;
	width: 24px;
	height: 24px;
	margin: 1%;
	background: url(/resources/asset/images/shop/default/mb_icon_close.png)
		no-repeat 50%;
	overflow: hidden;
	text-indent: -9999px;
}

/* 바디에 스크롤 막는 방법 */
.not_scroll {
	position: fixed;
	overflow: hidden;
	width: 100%;
	height: 100%
}

.not_scroll .root {
	position: relative;
	top: 0;
}

button.timetable-list-item.ttnot {
	border-radius: 6px;
	border: solid 1px #aaa;
	overflow: hidden;
	width: 76px;
	text-align: center;
}

button.timetable-list-item.ttnot .time {
	background-color: #aaa;
	/*margin-bottom: auto;
    margin-top: auto;
    min-width: 70px;*/
}

.cZCUiB {
	background-color: rgb(255, 255, 255);
	overflow: hidden;
	margin: 0px -20px 20px;
}

.cZCUiB .addr {
	padding: 20px 20px 0px;
	display: flex;
	flex-direction: column;
}

.cZCUiB .addr p {
	position: relative;
	font-size: 16px;
	line-height: 1.6;
}

.cZCUiB .addr .btn-copy {
	font-weight: 500;
	font-size: 12px;
	text-decoration: underline;
	color: rgb(102, 102, 102);
	line-height: 16px;
	display: flex;
	margin-bottom: 8px;
}

.cZCUiB .addr .btn-copy::before {
	background: url(/resources/asset/images/shop/table/copy.svg) 50% 50%/contain
		no-repeat;
	width: 18px;
	height: 18px;
	margin-right: 2px;
	content: "";
}

.swal2-container {
	z-index: 20000 !important;;
}
</style>




















<!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d74766eb9a51dd06e73b5f4173d03601=services"></script> -->
<!-- <script src="kakao.js"></script> -->
<!-- <script src="https://d1il53drs2cmia.cloudfront.net/resources/js/appleid.auth.js"></script>
    <script src="https://d1il53drs2cmia.cloudfront.net/resources/js/naverLogin_implicit-1.0.3.js"
        charset="utf-8"></script> -->

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="referrer" content="same-origin">

<style>
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
	stroke: #ff3d00;
	/* ff3d00 */
	animation: dash 1.5s ease-in-out infinite, 6s ease-in-out infinite;
	stroke-linecap: round;
}
</style>

<link rel="stylesheet" type="text/css"
	href="/resources/asset/css/shop/tabling/styles.css">

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
.jss2 {
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
.jss1 {
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
.jss3 {
	z-index: 100002;
}

.jss4 {
	bottom: 52px;
	z-index: 100002;
}
</style>
<meta property="og:type" content="website" data-react-helmet="true">
<meta property="og:url"
	content="https://app.catchtable.co.kr/ct/shop/wineworks_thehyundai"
	data-react-helmet="true">
<meta property="og:site_name" content="와인웍스-더현대서울점"
	data-react-helmet="true">
<meta property="og:title" content="와인웍스-더현대서울점" data-react-helmet="true">
<meta property="og:image"
	content="https://image.toast.com/aaaaaqx/catchtable/shopinfo/s25872/25872_226816340817840.png"
	data-react-helmet="true">
<meta property="og:description" content="차별화된 와인 컨텐츠를 즐길 수 있는 복합 문화 공간"
	data-react-helmet="true">
<meta name="keywords" content="와인, 여의도" data-react-helmet="true">
<meta name="description" content="차별화된 와인 컨텐츠를 즐길 수 있는 복합 문화 공간"
	data-react-helmet="true">
<style data-styled="active" data-styled-version="5.3.5"></style>
<!-- <script charset="utf-8" src="https://t1.daumcdn.net/mapjsapi/js/main/4.4.8/kakao.js"></script> -->
<!-- <script charset="utf-8" src="https://t1.daumcdn.net/mapjsapi/js/libs/services/1.0.2/services.js"></script> -->
<!-- <script charset="utf-8" src="https://t1.daumcdn.net/mapjsapi/js/libs/clusterer/1.0.9/clusterer.js"></script> -->
</head>

<body class="disable-user-select">
	<noscript>
		You need to enable JavaScript to run this app.<br /> 자바스크립트를 활성화해주시기
		바랍니다.
	</noscript>

	<div id="root">
		<div class="wrapper" id="wrapperDiv">
			<header id="header" class="opaque hide">
				<div class="container">
					<div class="header-left">
						<a href="#" class="btn-back">뒤로</a><a href="#" class="btn-home">홈</a>
					</div>
					<div class="header-right">
						<a href="#" class="btn-share">공유</a>
					</div>
				</div>
			</header>
			<main id="main">
				<section class="restaurant-detail-header mb-40">
					<div class="video-swiper-wrapper" style="position: relative;">
						<div class="swiper-container store_img_swiper">
							<div class="swiper-wrapper"
								style="transition-duration: 0ms; transform: translate3d(-466px, 0px, 0px);">
								<c:set var="urls" value="${fn:split(info.imgUrls,'|')}" />
								<c:forEach var="item" items="${urls}" varStatus="status">
									<div class="swiper-slide" style="width: 466px;">
										<div class="img-container">
											<div class="img swiper-lazy swiper-lazy-loaded"
												style="background-image: url(&quot;${item}&quot;);">
												<img src="${item}" class="guide-img">
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
							<div class="swiper-pagination center "></div>
						</div>
						<a href="#" class="btn-location">위치</a>
					</div>
				</section>
				<section class="section">
					<div class="container gutter-sm">
						<div class="restaurant-summary mb-20">
							<h2 class="name">${info.sname}</h2>
							<p class="slogan" style="line-height: 1.5;">${info.ssimpledesc}</p>
						</div>
					</div>
				</section>
				<hr class="separator">
				<div class="tab-menu sticky">
					<ul>
						<li id="tab_home" class="active"><a><span>홈</span></a></li>
						<li id="tab_menu" class=""><a><span>메뉴</span></a></li>
					</ul>
				</div>
				<section class="section pb-30 pt-20 ">
					<div class="container gutter-sm">
						<div class="section-body">
							<div class="mb-8 resv">
								<a href="#"
									class="btn btn-lg btn-outline btn-cta full-width arrowdown"><span><span
										class="label calendar"></span></span></a>
							</div>
							<div class="section-time-slot mb-24"></div>
							<div class="btn-centered resv">
								<a href="#" class="btn btn-rounded btn-outline-red"><span
									class="label arrow">예약가능 날짜 찾기</span></a>
							</div>
						</div>
					</div>
				</section>
				<hr class="separator">
				<section class="section pt-30">
					<div class="container gutter-sm">
						<div class="section-header mb-16">
							<h3 class="section-title __sm">편의시설</h3>
						</div>
						<div class="section-body">
							<div class="restaurant-features mb-20">
								<span class="feature-item"><img
									src="https://d1il53drs2cmia.cloudfront.net/resources/img/icons-mood/ic_parking.svg"
									alt="" class="icon"
									style="background: url(&quot;data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7&quot;) center center no-repeat transparent;"><span
									class="label">주차 가능</span></span><span class="feature-item"><img
									src="https://d1il53drs2cmia.cloudfront.net/resources/img/icons-mood/ic_corkage_free.svg"
									alt="" class="icon"
									style="background: url(&quot;data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7&quot;) center center no-repeat transparent;"><span
									class="label">콜키지 프리</span></span><span class="feature-item"><img
									src="https://d1il53drs2cmia.cloudfront.net/resources/img/icons-mood/ic_corkage.svg"
									alt="" class="icon"
									style="background: url(&quot;data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7&quot;) center center no-repeat transparent;"><span
									class="label">콜키지 가능</span></span><span class="feature-item"><img
									src="https://d1il53drs2cmia.cloudfront.net/resources/img/icons-mood/ic_welcome_kids.svg"
									alt="" class="icon"
									style="background: url(&quot;data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7&quot;) center center no-repeat transparent;"><span
									class="label">웰컴키즈존</span></span><span class="feature-item"><img
									src="https://d1il53drs2cmia.cloudfront.net/resources/img/icons-mood/ic_sommelier.svg"
									alt="" class="icon"
									style="background: url(&quot;data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7&quot;) center center no-repeat transparent;"><span
									class="label">전문 소믈리에</span></span>
							</div>
						</div>
						<div class="__notes ml--20 mr--20"></div>
					</div>
				</section>
				<hr class="separator">
				<section class="section pt-30 pb-16">
					<div class="container gutter-sm">
						<div class="section-header">
							<h3 class="section-title">메뉴</h3>
							<div class="utils">
								<a class="__btn-all menu">전체보기</a>
							</div>
						</div>
						<div class="section-body">
							<div class="menupan-item-list mb-20">
								<c:forEach var="cate" items="${info.menuCategory}">
									<div class="__menupan-item">
										<div class="__name">
											<h4>${cate.category}</h4>

											<div class="__price">
												<fmt:formatNumber type="number" maxFractionDigits="3"
													value="${cate.minPrice}" />
												원 ~
												<fmt:formatNumber type="number" maxFractionDigits="3"
													value="${cate.maxPrice}" />
												원
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
							<div>
								<a class="btn-menupan-photo"><span>메뉴 전체보기</span></a>
							</div>
						</div>
					</div>
				</section>
				<hr class="separator">
				<section class="section map-section mt-30 pb-20">
					<div class="container gutter-sm">
						<div class="section-header">
							<h3 class="section-title">상세 위치 안내</h3>
						</div>
						<div class="section-body">
							<div class="sc-bczRLJ cZCUiB">
								<div class="map" id="mapContainer"
									style="height: 240px; overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/bg_tile.png&quot;);">
									<img
										src="https://d1il53drs2cmia.cloudfront.net/resources/img/icons/location-red.svg"
										class="icon">
								</div>
								<script type="text/javascript"
									src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d74766eb9a51dd06e73b5f4173d03601"></script>
								<script>
									var mapContainer = document.getElementById('mapContainer'), // 지도를 표시할 div 
									    mapOption = { 
									        center: new kakao.maps.LatLng(37.526781, 126.927212), // 지도의 중심좌표
									        level: 3 // 지도의 확대 레벨
									    };
									
									// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
									var map = new kakao.maps.Map(mapContainer, mapOption); 
								</script>
								<div class="addr">
									<a class="btn-copy">매장주소 복사하기</a>
									<p>${info.saddress}</p>
								</div>
							</div>
							<div class="btn-centered">
								<a href="#" class="btn full-width btn-lg"><strong
									class="label arrow">매장 길찾기</strong></a>
							</div>
						</div>
					</div>
				</section>


				<hr class="separator">
				<section class="section pt-30 pb-25">
					<div class="container gutter-sm">
						<div class="section-header">
							<h3 class="section-title">상세정보</h3>
						</div>
						<div class="section-body">
							<div class="desc-blocks" style="word-break: break-word;">
								<div class="desc-block">
									<dl>
										<dt>전화번호</dt>
										<dd>${info.stel}</dd>
									</dl>
								</div>
								<div class="desc-block">
									<dl>
										<dt>매장 소개</dt>
										<dd>${info.sdescription}</dd>
									</dl>
								</div>
							</div>
						</div>
					</div>
				</section>
				<hr class="separator">
			</main>
		</div>

		<aside id="dock">
			<div class="dock-container" style="max-width: 465px;">
				<nav class="dock-menu restaurant-dock-menu">
					<div class="left-menu">
						<a class="btn-back"><i class="back">뒤로</i></a><a href="#"><i
							class="share">공유</i></a>
					</div>
					<div class="right-menu">
						<a class="btn-reservation">예약하기</a>
					</div>
				</nav>
			</div>
		</aside>
	</div>
	<div class="modal_background"
		style="display: none; max-width: 465px; margin: 0 auto;">
		<div class="modal" style="max-width: 465px; margin: 0 auto;">
			<!-- <div class="header">
				<button type="button" class="close-modal-btn">닫기</button>
			</div> -->
			<div class="body">
				<div class="calendar-container"></div>
				<div class="headCount-container">
					<div class="headCount-box option-personnel">
						<label class="swiper-slide"><input type="radio"
							name="headCount" value="1"><span>1명</span></label> <label
							class="swiper-slide"><input type="radio" name="headCount"
							value="2"><span>2명</span></label> <label class="swiper-slide"><input
							type="radio" name="headCount" value="3"><span>3명</span></label> <label
							class="swiper-slide"><input type="radio" name="headCount"
							value="4"><span>4명</span></label> <label class="swiper-slide"><input
							type="radio" name="headCount" value="5"><span>5명</span></label> <label
							class="swiper-slide"><input type="radio" name="headCount"
							value="6"><span>6명</span></label>

					</div>
				</div>
				<div class="time-container"></div>
				<div class="tmp">
					<button class="resv_btn js-resv-modal">예약하기</button>
				</div>

			</div>
		</div>
	</div>

	<script>
	
		//header
		$('.btn-home').on("click", function() {
			window.location.href = '/';
		});
		
		$('.btn-back').on("click", function() {
			console.log('뒤로가기 클릭');
		});
		
		//달력
		$('.calendar-container').calendar({
			date : new Date()
		// today
		});

		//달력 출력
		$('.btn-reservation').click(function() {
			$('.modal_background').css('display', 'block');
			$('.modal_background').css('transition', 'all 0.4s');
			$("html, body").addClass("not_scroll");
		});

		$('.resv').click(function() {
			$('.modal_background').css('display', 'block');
			$('.modal_background').css('transition', 'all 0.4s');
			$("html, body").addClass("not_scroll");
		});

		$(document).click(function (e) {
		    if ($(e.target).is('.modal_background')) {
		        $('.modal_background').fadeOut(250);
		       	$('html').removeClass('not_scroll');
		       	$('body').removeClass('not_scroll');
		    }
		});
		
		$(document).on("click", "button.timetable-list-item", function(){
			
			let selected = $(this);
			let items = $('.timetable-list>button.timetable-list-item.cal');

			//선택불가한 건 넘기기
			if($(this).hasClass('ttnot')){
				Swal.fire({
					  text: "예약가능한 좌석이 없습니다.",
					  showCancelButton: false,
					  confirmButtonColor: '#46675c',
					  confirmButtonText: '확인'
					});
				return false;
			}
			
			$.each(items, function () {
				//이전에 선택된 것 찾아서 빈선택지로 만들기
				//기타의 것들도 빈선택지로 만들기
				if($(this).hasClass('selected')){ 
					$(this).removeClass('selected');
					$(this).children('span').css({"background-color": "white", "color":"black"});
					$(this).css({"border": "solid 1px #aaa"});
				}else if($(this).hasClass('ttnot')){
					return;
				}else if(selected != $(this)){
					$(this).children('span').css({"background-color": "white", "color":"black"});
					$(this).css({"border": "solid 1px #aaa"});
				}
			});
			
			//선택한 것은 색칠하기
			if(!selected.hasClass('ttnot')){
				selected.addClass('selected');
				selected.children('span').css({"background-color": "#46675c", "color":"white"});
				selected.css({"border": "solid 1px #46675c"});
			}
		});
		
		//form 제출(예약)
		$('button.resv_btn').on("click", function() {

			let store = document.location.href.split("?")[1].split("=")[1].substring(0, 6);
			if(store == null){
				Swal.fire({
					  text: "오류가 발생했습니다.",
					  showCancelButton: false,
					  confirmButtonColor: '#46675c',
					  confirmButtonText: '확인'
					});
				return false;
			}
			let d =  new Date(calendar.getSelectedDate());
			d = dateFormatter(d);
			if(d == null){
				Swal.fire({
					  text: "날짜를 선택해주세요.",
					  showCancelButton: false,
					  confirmButtonColor: '#46675c',
					  confirmButtonText: '확인'
					});
				return false;
			}
			let time = $('.timetable-list>button.timetable-list-item.cal.selected>span').attr('value'); 
			if(time == null){
				Swal.fire({
					  text: "시간을 선택해주세요.",
					  showCancelButton: false,
					  confirmButtonColor: '#46675c',
					  confirmButtonText: '확인'
					});
				return false;
			}
			let headcnt = $("input[name='headCount']:checked").val();
			if(headcnt == null){
				Swal.fire({
					  text: "인원을 선택해주세요.",
					  showCancelButton: false,
					  confirmButtonColor: '#46675c',
					  confirmButtonText: '확인'
					});
				return false;
			}
			
			let form = $('<form></form>');
			form.attr("method", "post");
			form.attr("action", "/tabling/seats");
			form.attr("name", "options");
			form.append($('<input/>', {type: 'hidden', name: '${_csrf.parameterName}', value:'${_csrf.token}'}));
			form.append($('<input/>', {type: 'hidden', name: 'storeId', value:store}));
			form.append($('<input/>', {type: 'hidden', name: 'selectedDate', value: d}));
			form.append($('<input/>', {type: 'hidden', name: 'selectedTime', value: time} ));
			form.append($('<input/>', {type: 'hidden', name: 'headCount', value: headcnt}));
			form.appendTo('body');
			form.submit();
		});
		
		//홈_예약판
		$("input[name='headCount']").on("click change", function() {
			storeHomeDateChange();
		});
		
		//sticky menu
		
		//홈
		$('#tab_home').on("click", function() {
			//지우기
			$('.tab-menu.sticky').find('.active').removeClass('active');
			$('.tab-menu.sticky').find('#tab_home').addClass('active');
			
			$.each($('section'), function(){
				$(this).css('display', 'block');
			});
			$.each($('.separator'), function(){
				$(this).css('display', 'block');
			});
			
			$(".menu-collapsed-list").remove();
			$(".menu-collapsed-list").empty();
		});
		
		//메뉴 전체보기
		$('.btn-menupan-photo').on("click", function() { 
			showMenuBoard();
		});
		
		$('.__btn-all.menu').on("click", function() { 
			showMenuBoard();
		});
		
		$('#tab_menu').on("click", function() {
			showMenuBoard();
		}); 
		
		$('.menupan-item-list').on("click", function() {
			showMenuBoard();
		});
		
		$('.btn-back').on("click", function() {
			let referrer = document.referrer;
			console.log("리퍼러", referrer);
			window.location.href = referrer;
		});
		
		//메뉴판에서 카테고리 클릭 시
		$(document).on("click", "div.menu-collapsed-item", function(){
			console.log("이게 클릭", $(this));
			if($(this).hasClass('active'))
				$(this).removeClass('active');
			else
				$(this).addClass('active');
		});
		
		function showMenuBoard() {
			
			if($('#tab_menu').hasClass('active'))
				return;
			let store = document.location.href.split("?")[1].split("=")[1].substring(0, 6);
			$.ajax ({
				  url	: "/api/tabling/menus/" + store, 
				  type	: "GET", 
				  async : true,
				  //cache : true,  
				  success : function(data, status) {

					//지우기
					$('.tab-menu.sticky').find('.active').removeClass('active');
					$('.tab-menu.sticky').find('#tab_menu').addClass('active');
					
					$.each($('section'), function(){
						$(this).css('display', 'none');
					});
					$.each($('.separator'), function(){
						$(this).css('display', 'none');
					});
					
					//생성
					let str = '<div class="menu-collapsed-list"></div>';
					$('#main').append(str);
					let idx = 0;
					$.each(data, function(key, item) {
						str = `<div class="menu-collapsed-item" id="openId_\${idx}"></div>`;
						$('div.menu-collapsed-list').append(str);
						str = `<a class="menu-collapsed-item-header"></a>`;
						$('.menu-collapsed-item').last().append(str);
						
						let thisId = `openId_\${idx}`;
						let min = addComma(item.minPrice);
						let max = addComma(item.maxPrice);
						
						str = `<div class="menu-info">
								<h4 class="name">
									<strong>\${item.category}</strong>
								</h4>
								<span class="price">\${min}원 ~ \${max}원</span>
								</div>`;
						$('.menu-collapsed-item-header').last().append(str);
						
						str = `<div class="menu-collapsed-item-body"></div>`;
						$('#'+thisId).append(str);
						
						$.each(item.menus, function(key, item) {
							let price = addComma(item.menuPrice);
							str = `<a href="#" class="submenu-item"><div class="menu-info">
							<div class="name">
								<h4>\${item.menuName}</h4>`;
							if(`\${item.menuNameEng}` != 'null'){
								str += `<p class="excerpt" style="display: block;">\${item.menuNameEng}</p>`;
							}else{
								str += `<p class="excerpt" style="display: block;"></p>`;
							}
							str += `</div>
								<span class="price">\${price}원</span>
							</div></a>`;
							
							$('.menu-collapsed-item-body').last().append(str);
						});
						idx++;
					});
				  },
				  error	: function(status, error) {
					  alert(error);
				  }
				});
		}
		
		function addComma(value){
			value = String(value).replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		    return value; 
		}
		
		function leftPad(value) {
		    if (value >= 10) {
		        return value;
		    }
		    return '0'+value;
		}
		
		function dateFormatter(date){
			let syear = date.getFullYear(); // 년도
			let smonth = date.getMonth() + 1;  // 월
			let sday = date.getDate();  // 날짜
			
			return syear + '-' + leftPad(smonth) + '-' + leftPad(sday);
		}
		
		function dateFormatterV2(date){
			let smonth = date.getMonth() + 1;  // 월
			let sday = date.getDate();  // 날짜
			const WEEKDAY = ['일', '월', '화', '수', '목', '금', '토'];
			let sweekday = WEEKDAY[date.getDay()];

			return leftPad(smonth) + '월 ' + sday +"일 (" + sweekday +")";
		}

		function selectDate(date) {
			console.log("클릭", date);
			$('.calendar-container').updateCalendarOptions({
				date : date,
			});
			showCalendarItem(date);
		}
		
		function isSelectedDateSameToday(selectedDate) {
			const today = new Date();
			return dateFormatter(selectedDate) == dateFormatter(today);
		}
		
		function storeHomeDateChange(selectedDate) {
			let headCount_val = $("input[name='headCount']:checked").val();
			headCount_val = headCount_val == null ? 2 : headCount_val;

			if(selectedDate == null && $('.day.selected') == null)
				selectedDate = new Date();
			else
				selectedDate = calendar.getSelectedDate();
			
			$('.label.calendar').text(dateFormatterV2(selectedDate) + " / "+ headCount_val +"명");
		}
		
		function showCalendarItem(selectedDate) {
			selectedDate =  new Date(selectedDate);
			console.log("날짜 클릭" , selectedDate, days);
			storeHomeDateChange(selectedDate);
			
			if(isSelectedDateSameToday(selectedDate)){
				$('.headCount-container').css('display', 'none');
				str = '<p class="plain-txt txt-center font-15 color-black bold time-slot-unavailable">당일 예약은 전화로 확인해 주세요.</p>';
				$(".time-container").html(str);
				$('button.resv_btn').css('display', 'none');
			}else{
				$('.headCount-container').css('display', 'block');
				$('button.resv_btn').css('display', 'block');
				const selectedDate_day = selectedDate.getDate();
				const day = days.filter(day => day.date[2] == selectedDate_day)[0];
				str = '<div class="swiper-container time_swiper"></div>';
				$(".time-container").html(str);
				
				str = '<div class="swiper-wrapper timetable-list timetable-list-sm"><div>';
				$(".time_swiper").html(str);
				
				<sec:authentication property="principal.username" var="prc"/>
				let loginUser = `${prc}`;
				console.log('로그인 유저', loginUser, day['reservedEmails']);
				
				let sameFlag = false;
				day['reservedEmails'].forEach(function (item){
					console.log('같은 날 예약?', item, loginUser, item == loginUser);
					if(item == loginUser){
						Swal.fire({
							  text: "해당일에 이미 예약 건이 있습니다.",
							  showCancelButton: false,
							  confirmButtonColor: '#46675c',
							  confirmButtonText: '확인'
							});
						sameFlag = true;
						
						$('.headCount-container').css('display', 'none');
						str = '<p class="plain-txt txt-center font-13 color-silver bold time-slot-unavailable">해당일에 이미 예약 건이 있습니다.</p>';
						$(".time-container").html(str);
						$('button.resv_btn').css('display', 'none');
						
						return;
					}
					
				});
				
				if(sameFlag)
					return;

				day['hours'].forEach(function (item, idx){
				
					str = `<button class="swiper-slide timetable-list-item cal">\${item.hour}</button>`;
					$('.timetable-list').append(str);
					if(!item.available)
						$('.timetable-list-item.cal').last().addClass("ttnot");
						
					let tmp = "";
					if(item.hour == 11){
						tmp = `오전 \${item.hour}시`;
					}else if(item.hour == 12){
						tmp = `오후 \${item.hour}시`;
					}else {
						tmp = `오후 \${item.hour-12}시`;
					}
					str = `<span class="time" value=\${item.hour}>\${tmp}</span>`;
					$('.timetable-list-item').last().html(str);
					
				      let time_swiper = new Swiper(".time_swiper", {
				          spaceBetween: 0,
				          slidesPerView: 'auto',
				          autoplay: false,
				          freeMode: false,
				          resistance : true,
				          autoHeight : true,
				          observer: true,
				          observeParents: true,
				          
				     });
				});
			}
		}
		
		function makeInitCalendar(notAvailableDates) {
			calendar = $('.calendar-container').calendar({
				date : new Date(), //today
				
				myDisabledDates: notAvailableDates,
				onClickNOT: function(warn) {
					Swal.fire('', warn, '');
				},

				disable : function(today) {
					return today < new Date();
				},

				onClickDate : selectDate,

				// text for prev/next buttons
				prevButton : "<img src='/resources/asset/images/shop/main/pc_ico_arrow_prev.png' />",
				nextButton : "<img src='/resources/asset/images/shop/main/pc_ico_arrow_next.png' />",

				// custom separator between the month and the year in the month view.
				monthYearSeparator : " ",

				// false = 4 months in a row
				showThreeMonthsInARow : true,

				// whether to change either month or year
				enableMonthChange : true,

				// whether to disable year view
				enableYearView : true,

				// shows a Today button on the bottom of the calendar
				showTodayButton : true,
				todayButtonContent : "오늘",

				// highlights all other dates with the same week-day
				highlightSelectedWeekday : false,

				// highlights the selected week that contains the selected date
				highlightSelectedWeek : true,

				// whether to enable/disable the year selector
				showYearDropdown : false,

				// min/max dates
				// Date Object or Date String
				min : start,
				max : end,

				// start on Sunday instead
				startOnMonday : false,

				// <a href="https://www.jqueryscript.net/tags.php?/map/">map</a> the month number to a string
				monthMap2 : {
					1 : "january",
					2 : "february",
					3 : "march",
					4 : "april",
					5 : "may",
					6 : "june",
					7 : "july",
					8 : "august",
					9 : "september",
					10 : "october",
					11 : "november",
					12 : "december",
				},

				monthMap : {
					1 : "1월",
					2 : "2월",
					3 : "3월",
					4 : "4월",
					5 : "5월",
					6 : "6월",
					7 : "7월",
					8 : "8월",
					9 : "9월",
					10 : "10월",
					11 : "11월",
					12 : "12월",
				},

				// map the week number to a string
				dayMap : {
					0 : "일",
					1 : "월",
					2 : "화",
					3 : "수",
					4 : "목",
					5 : "금",
					6 : "토",
				},

				dayMap2 : {
					0 : "sunday",
					1 : "monday",
					2 : "tuesday",
					3 : "wednesday",
					4 : "thursday",
					5 : "friday",
					6 : "saturday",
				}
			}); //end calendar
			
			return calendar;
		}

		let today = new Date();
		let start = new Date(today.getFullYear(), today.getMonth(), today
				.getDate() + 1);
		let end = new Date(today.getFullYear(), today.getMonth(), today
				.getDate() + 7);
		let days = null;
		let calendar = null;


		$(function() {
			//가게 이미지 스와이퍼
			let time_swiper = new Swiper(".store_img_swiper", {
				          spaceBetween: 0,
				          initialSlide: 0,
				          autoplay: false,
				          freeMode: false,
				          resistance : true,
				          autoHeight : true,
				          pagination: {
				              el: ".swiper-pagination",
				              type: "fraction",
				         },
			 });
			
			//달력 내용
			let store = document.location.href.split("?")[1].split("=")[1].substring(0, 6);
			$.ajax ({
				  url	: "/api/tabling/calendar/"+store, 
				  type	: "GET", 
				  async : true,
				success : function(data, status) {
					console.log(data);
					days = data;
					let notAvailableDates = [];
					console.log("데이트 : ", notAvailableDates);
					data.forEach(function(item) {
						console.log("\t", item);
						if(!item.available)
							notAvailableDates.push(item.date);
					});
					console.log("데이트 : ", notAvailableDates);
					makeInitCalendar(notAvailableDates);
					showCalendarItem(today);
					
				},
				error	: function(status, error) {
					alert(error);
				}
			});
		});
		
		var x = 0;
		$(document).ready(function(){
		  $("div").scroll(function(){
		        var scroll = $("div").scrollTop();
		        //console.log('scroll', scroll);
		        if(scroll > 335){
		        	$('#header').removeClass('hide');
		        }else{
		        	$('#header').addClass('hide');
		        }
		    });
		});
	</script>
</body>
</html>