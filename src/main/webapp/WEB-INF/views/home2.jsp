<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="false"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<link rel="stylesheet" type="text/css"
	href="${RESOURCES_PATH}/css/shop/main.css">
<link rel="stylesheet" type="text/css"
	href="${RESOURCES_PATH}/css/shop/slick.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<html lang="ko">
<body>

	<style>
::-webkit-scrollbar {
	display: none;
}
.swiper-pagination-progressbar-fill{
	background: #46675c !important;
}
</style>
	<div class="mainSlide main-swiper">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<img alt="" src="/resources/asset/banner/mainSlide1.jpg">
			</div>
			<div class="swiper-slide">
				<img alt="" src="/resources/asset/banner/mainSlide2.jpg">
			</div>
			<div class="swiper-slide">
				<img alt="" src="/resources/asset/banner/mainSlide3.jpg">
			</div>
			<div class="swiper-slide">
				<img alt="" src="/resources/asset/banner/mainSlide4.jpg">
			</div>
		</div>
		<div class="swiper-pagination" style="position: relative; margin-top:-5px;"></div>
	</div>
	<!-- header -->
	<div class="layer wine_profile_layer"></div>
	<!-- //와인 프로파일 레이어 -->

	<!-- 알림설정 레이어 -->
	<div class="layer push_layer" id="push_layer">
		<div class="display_table">
			<div class="table_cell">
				<div class="layer_area">
					<button type="button" class="layer_close"
						onclick="commonUI.layer.close()">
						<span>Layer Close</span>
					</button>
					<div class="layer_tit">알림설정</div>
					<div class="layer_con">
						<ul>
							<li>
								<div class="btn switch">
									<strong class="tit">푸시알림</strong>
									<div class="btn_switch_module js_switch css_switch">
										<input type="checkbox" id="btn_switch01"
											class="btn_switch_check" onchange="">
										<div class="btn_switch_area">
											<div class="btn_switch">
												<label class="bar" for="btn_switch01">&nbsp;</label>
											</div>
										</div>
									</div>
								</div>
								<p class="info">와인나라 앱에서 보내는 알림을 받을 수 있습니다.</p>
							</li>
							<li>
								<div class="btn switch">
									<strong class="tit">광고성 정보 수신 동의</strong>
									<div class="btn_switch_module js_switch css_switch">
										<input type="checkbox" id="btn_switch02"
											class="btn_switch_check" onchange="">
										<div class="btn_switch_area">
											<div class="btn_switch">
												<label class="bar" for="btn_switch02">&nbsp;</label>
											</div>
										</div>
									</div>
								</div>
								<p class="info">신규서비스 및 고객 맞춤 혜택 정보를 받을 수 있습니다.</p>
							</li>
							<li>
								<div class="btn switch">
									<strong class="tit">야간 수신 동의</strong>
									<div class="btn_switch_module js_switch css_switch">
										<input type="checkbox" id="btn_switch03"
											class="btn_switch_check" onchange="">
										<div class="btn_switch_area">
											<div class="btn_switch">
												<label class="bar" for="btn_switch03">&nbsp;</label>
											</div>
										</div>
									</div>
								</div>
								<p class="info">야간(오후 9시 ~ 오전8시)에 알림을 받을 수 있습니다.</p>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //알림설정 레이어 -->

	<!-- 알림내역 레이어 -->
	<div class="layer push_lists_layer" id="push_lists_layer">
		<div class="display_table">
			<div class="table_cell">
				<div class="layer_area">
					<button type="button" class="layer_close"
						onclick="commonUI.layer.close()">
						<span>Layer Close</span>
					</button>
					<div class="layer_tit">알림내역</div>
					<div class="layer_con">
						<ul>
							<li><strong class="tit">4월 이달의 와인</strong>
								<p class="info">봄에 어울리는 색, 그리고 향을 테마로 준비한 이달의 와인 5종을 소개합니다.</p>
								<div class="img">
									<img
										src="/resources/asset/images/shop/product/mb_recom_lnb.jpg"
										alt="">
								</div>
								<div class="btn_box">
									<span class="date">2022.04.01</span>
									<button type="button" class="btn_more">자세히보기</button>
								</div></li>
							<li><strong class="tit">아발론 브랜드 기획전</strong>
								<p class="info">최고 가성비 와인, 아바론 브랜드 기획전</p>
								<div class="btn_box">
									<span class="date">2022.04.01</span>
									<button type="button" class="btn_more">자세히보기</button>
								</div></li>
							<li><strong class="tit">아발론 브랜드 기획전</strong>
								<p class="info">최고 가성비 와인, 아바론 브랜드 기획전</p>
								<div class="btn_box">
									<span class="date">2022.04.01</span>
									<button type="button" class="btn_more">자세히보기</button>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //알림내역 레이어 -->

	<!-- 설정 레이어 -->
	<div class="layer set_layer">
		<div class="display_table">
			<div class="table_cell">
				<div class="layer_area">
					<button type="button" class="layer_close btn_close"
						onclick="commonUI.layer.close()">
						<span>Layer Close</span>
					</button>
					<div class="layer_tit">설정</div>
					<div class="layer_con">
						<strong class="tit">푸시설정</strong>
						<div class="set_con">
							<span>알림설정</span>
							<div class="btn_switch_module js_switch css_switch">
								<input type="checkbox" id="btn_alarm" class="btn_switch_check"
									onchange="push_ajax('push',this);">
								<div class="btn_switch_area">
									<div class="btn_switch">
										<!-- <span class="txt left">ON</span> -->
										<label class="bar" for="btn_alarm">&nbsp;</label>
										<!-- <span class="txt right">OFF</span> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //설정 레이어 -->


	<input type="hidden" id="path_gb" value="MOBILE">

	<!-- contents -->
	<section id="contents" style="margin-top: 1px;">

		<div class="content main_page">
			<div class="main_visual">

				<!-- <div class="m_slide slick-initialized slick-slider">
					<div aria-live="polite" class="slick-list draggable">
						<div class="slick-track" role="listbox"
							style="opacity: 1; width: 4167px; transform: translate3d(-2315px, 0px, 0px);">
							<a href="https://www.winenara.com/shop/event/event_view?no=248"
								class="slick-slide slick-cloned" style="width: 463px;"
								data-slick-index="-1" aria-hidden="true" tabindex="-1">
								<div class="slide">
									<picture>
									<img
										data-lazy="/uploads/banner/437fe0f85769e17726783b7b9ed1b4c5.png"
										alt="" class="slick-loading">
										</picture>
									<p class="visual_category"></p>
									<div class="visual_txt">
										<p class="tit"></p>
										<p class="sub_txt"></p>
									</div>
								</div>
							</a>
							<a href="https://www.winenara.com/shop/event/event_view?no=256"
								class="slick-slide" style="width: 463px;" data-slick-index="0"
								aria-hidden="true" tabindex="-1" role="option"
								aria-describedby="slick-slide00">
								<div class="slide">
									<picture>
									<source
										srcset="/uploads/banner/7934b27548675c604a60f6f87a8de537.png"
										media="(min-width:1024px)">
									pc이미지
									<source
										srcset="/uploads/banner/231af4844844cb78e12c13d00e6059c9.png"
										media="(max-width:1023px)">
									mb이미지 <img alt="" class=""
										src="/uploads/banner/7934b27548675c604a60f6f87a8de537.png"
										style="opacity: 1;">pc이미지 </picture>
									<p class="visual_category"></p>
									<div class="visual_txt">
										<p class="tit"></p>
										<p class="sub_txt"></p>
									</div>
								</div>
							</a><a href="https://www.winenara.com/shop/event/event_view?no=255"
								class="slick-slide" style="width: 463px;" data-slick-index="1"
								aria-hidden="true" tabindex="-1" role="option"
								aria-describedby="slick-slide01">
								<div class="slide">
									<picture>
									<source
										srcset="/uploads/banner/807c1866f38fe0f75edb36a5ff76f67c.png"
										media="(min-width:1024px)">
									pc이미지
									<source
										srcset="/uploads/banner/2037d935f31643ea6d0e5166b0d27c1b.png"
										media="(max-width:1023px)">
									mb이미지 <img alt="" class=""
										src="/uploads/banner/807c1866f38fe0f75edb36a5ff76f67c.png"
										style="opacity: 1;">pc이미지 </picture>
									<p class="visual_category"></p>
									<div class="visual_txt">
										<p class="tit"></p>
										<p class="sub_txt"></p>
									</div>
								</div>
							</a><a href="https://www.winenara.com/shop/event/event_view?no=254"
								class="slick-slide" style="width: 463px;" data-slick-index="2"
								aria-hidden="true" tabindex="-1" role="option"
								aria-describedby="slick-slide02">
								<div class="slide">
									<picture>
									<source
										srcset="/uploads/banner/484abae1130858969561cdc6300247a1.png"
										media="(min-width:1024px)">
									pc이미지
									<source
										srcset="/uploads/banner/859657169263b5421ae3db63b304a015.png"
										media="(max-width:1023px)">
									mb이미지 <img alt="" class=""
										src="/uploads/banner/484abae1130858969561cdc6300247a1.png"
										style="opacity: 1;">pc이미지 </picture>
									<p class="visual_category"></p>
									<div class="visual_txt">
										<p class="tit"></p>
										<p class="sub_txt"></p>
									</div>
								</div>
							</a>
							
							<a href="https://www.winenara.com/shop/event/event_view?no=253"
								class="slick-slide" style="width: 463px;" data-slick-index="3"
								aria-hidden="true" tabindex="-1" role="option"
								aria-describedby="slick-slide03">
								<div class="slide">
									<picture>
									<source
										srcset="/uploads/banner/5c59f4ddb3226dce98b59e12cd8abedf.png"
										media="(min-width:1024px)">
									pc이미지
									<source
										srcset="/uploads/banner/6d4df76f4642276efe53c5175b86a939.png"
										media="(max-width:1023px)">
									mb이미지 <img alt="" class=""
										src="/uploads/banner/5c59f4ddb3226dce98b59e12cd8abedf.png"
										style="opacity: 1;">pc이미지 </picture>
									<p class="visual_category"></p>
									<div class="visual_txt">
										<p class="tit"></p>
										<p class="sub_txt"></p>
									</div>
								</div>
							</a>
							
							<a href="https://www.winenara.com/shop/event/event_view?no=252"
								class="slick-slide slick-current slick-active"
								style="width: 463px;" data-slick-index="4" aria-hidden="false"
								tabindex="-1" role="option" aria-describedby="slick-slide04">
								<div class="slide">
									<picture>
									<source
										srcset="/uploads/banner/d71546f91e1075f17a0788c3b3307ad0.png"
										media="(min-width:1024px)">
									pc이미지
									<source
										srcset="/uploads/banner/db170d798f25e056ea39cdb6ac235c26.png"
										media="(max-width:1023px)">
									mb이미지 <img alt="" class=""
										src="/uploads/banner/d71546f91e1075f17a0788c3b3307ad0.png"
										style="opacity: 1;">pc이미지 </picture>
									<p class="visual_category"></p>
									<div class="visual_txt">
										<p class="tit"></p>
										<p class="sub_txt"></p>
									</div>
								</div>
							</a>
							
							<a href="https://www.winenara.com/shop/event/event_view?no=251"
								class="slick-slide" style="width: 463px;" data-slick-index="5"
								aria-hidden="true" tabindex="-1" role="option"
								aria-describedby="slick-slide05">
								<div class="slide">
									<picture>
									<source
										srcset="/uploads/banner/60ec7a3b0143b34d3a7667d227e1363f.png"
										media="(min-width:1024px)">
									pc이미지
									<source
										srcset="/uploads/banner/be5e3aee83ed475b78576acb2cbfae42.png"
										media="(max-width:1023px)">
									mb이미지 <img
										data-lazy="/uploads/banner/60ec7a3b0143b34d3a7667d227e1363f.png"
										alt="" class="slick-loading">pc이미지 </picture>
									<p class="visual_category"></p>
									<div class="visual_txt">
										<p class="tit"></p>
										<p class="sub_txt"></p>
									</div>
								</div>
							</a><a href="https://www.winenara.com/shop/event/event_view?no=248"
								class="slick-slide" style="width: 463px;" data-slick-index="6"
								aria-hidden="true" tabindex="-1" role="option"
								aria-describedby="slick-slide06">
								<div class="slide">
									<picture>
									<source
										srcset="/uploads/banner/437fe0f85769e17726783b7b9ed1b4c5.png"
										media="(min-width:1024px)">
									pc이미지
									<source
										srcset="/uploads/banner/f494388d1442dee753dc45ce58cc216a.png"
										media="(max-width:1023px)">
									mb이미지 <img
										data-lazy="/uploads/banner/437fe0f85769e17726783b7b9ed1b4c5.png"
										alt="" class="slick-loading">pc이미지 </picture>
									<p class="visual_category"></p>
									<div class="visual_txt">
										<p class="tit"></p>
										<p class="sub_txt"></p>
									</div>
								</div>
							</a><a href="https://www.winenara.com/shop/event/event_view?no=256"
								class="slick-slide slick-cloned" style="width: 463px;"
								data-slick-index="7" aria-hidden="true" tabindex="-1">
								<div class="slide">
									<picture>
									<source
										srcset="/uploads/banner/7934b27548675c604a60f6f87a8de537.png"
										media="(min-width:1024px)">
									pc이미지
									<source
										srcset="/uploads/banner/231af4844844cb78e12c13d00e6059c9.png"
										media="(max-width:1023px)">
									mb이미지 <img alt="" class=""
										src="/uploads/banner/7934b27548675c604a60f6f87a8de537.png"
										style="opacity: 1;">pc이미지 </picture>
									<p class="visual_category"></p>
									<div class="visual_txt">
										<p class="tit"></p>
										<p class="sub_txt"></p>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div> -->

				<!-- <div class="control_box">
                <button type="button" class="prev">이전</button>
                <p class="page_count"><span class="current">01</span> / <span class="total"></span></p>
                <button type="button" class="next">다음</button>
            </div> -->
			</div>
			<div class="main_category pc_hidden">
				<ul>
					<li class="ico_wine"><a href="/product/list">WINE</a></li>
					<li class="ico_new"><a href="/product/list">NEW</a></li>
					<li class="ico_newBest"><a href="/product/list">BEST</a></li>
				</ul>
			</div>

			<div class="main_visual">
				<!-- 메인 이미지 베너 -->
				<div class="m_slide slick-initialized slick-slider">
					<div aria-live="polite" class="slick-list draggable">
						<div class="slick-track" role="listbox"
							style="opacity: 1; width: 4185px; transform: translate3d(-1860px, 0px, 0px); transition: transform 500ms ease 0s;">
							<a href="https://www.winenara.com/shop/event/event_view?no=248"
								class="slick-slide slick-cloned" style="width: 465px;"
								data-slick-index="-1" aria-hidden="true" tabindex="-1">
								<div class="slide">
									<picture>
									<source
										srcset="/uploads/banner/f494388d1442dee753dc45ce58cc216a.png"
										media="(max-width:1023px)">
									<!-- mb이미지 --> <img alt="" class=""
										src="/uploads/banner/437fe0f85769e17726783b7b9ed1b4c5.png"
										style="opacity: 1;"><!-- pc이미지 --> </picture>
									<p class="visual_category"></p>
									<div class="visual_txt">
										<p class="tit"></p>
										<p class="sub_txt"></p>
									</div>
								</div>
							</a><a href="https://www.winenara.com/shop/event/event_view?no=256"
								class="slick-slide" style="width: 465px;" data-slick-index="0"
								aria-hidden="true" tabindex="-1" role="option"
								aria-describedby="slick-slide00">
								<div class="slide">
									<picture>
									<source
										srcset="/uploads/banner/231af4844844cb78e12c13d00e6059c9.png"
										media="(max-width:1023px)">
									<!-- mb이미지 --> <img alt="" class=""
										src="/uploads/banner/7934b27548675c604a60f6f87a8de537.png"
										style="opacity: 1;"><!-- pc이미지 --> </picture>
									<p class="visual_category"></p>
									<div class="visual_txt">
										<p class="tit"></p>
										<p class="sub_txt"></p>
									</div>
								</div>
							</a><a href="https://www.winenara.com/shop/event/event_view?no=255"
								class="slick-slide" style="width: 465px;" data-slick-index="1"
								aria-hidden="true" tabindex="-1" role="option"
								aria-describedby="slick-slide01">
								<div class="slide">
									<picture>
									<source
										srcset="/uploads/banner/2037d935f31643ea6d0e5166b0d27c1b.png"
										media="(max-width:1023px)">
									<!-- mb이미지 --> <img alt="" class=""
										src="/uploads/banner/807c1866f38fe0f75edb36a5ff76f67c.png"
										style="opacity: 1;"><!-- pc이미지 --> </picture>
									<p class="visual_category"></p>
									<div class="visual_txt">
										<p class="tit"></p>
										<p class="sub_txt"></p>
									</div>
								</div>
							</a> <a href="https://www.winenara.com/shop/event/event_view?no=254"
								class="slick-slide" style="width: 465px;" data-slick-index="2"
								aria-hidden="true" tabindex="-1" role="option"
								aria-describedby="slick-slide02">
								<div class="slide">
									<picture>
									<source
										srcset="/uploads/banner/859657169263b5421ae3db63b304a015.png"
										media="(max-width:1023px)">
									<!-- mb이미지 --> <img alt="" class=""
										src="/uploads/banner/484abae1130858969561cdc6300247a1.png"
										style="opacity: 1;"><!-- pc이미지 --> </picture>
									<p class="visual_category"></p>
									<div class="visual_txt">
										<p class="tit"></p>
										<p class="sub_txt"></p>
									</div>
								</div>
							</a> <a href="https://www.winenara.com/shop/event/event_view?no=252"
								class="slick-slide" style="width: 465px;" data-slick-index="4"
								aria-hidden="true" tabindex="-1" role="option"
								aria-describedby="slick-slide04">
								<div class="slide">
									<picture>
									<source
										srcset="/uploads/banner/db170d798f25e056ea39cdb6ac235c26.png"
										media="(max-width:1023px)">
									<!-- mb이미지 --> <img alt="" class=""
										src="/uploads/banner/d71546f91e1075f17a0788c3b3307ad0.png"
										style="opacity: 1;"><!-- pc이미지 --> </picture>
									<p class="visual_category"></p>
									<div class="visual_txt">
										<p class="tit"></p>
										<p class="sub_txt"></p>
									</div>
								</div>
							</a> <a href="https://www.winenara.com/shop/event/event_view?no=251"
								class="slick-slide" style="width: 465px;" data-slick-index="5"
								aria-hidden="true" tabindex="-1" role="option"
								aria-describedby="slick-slide05">
								<div class="slide">
									<picture>
									<source
										srcset="/uploads/banner/be5e3aee83ed475b78576acb2cbfae42.png"
										media="(max-width:1023px)">
									<!-- mb이미지 --> <img alt="" class=""
										src="/uploads/banner/60ec7a3b0143b34d3a7667d227e1363f.png"
										style="opacity: 1;"><!-- pc이미지 --> </picture>
									<p class="visual_category"></p>
									<div class="visual_txt">
										<p class="tit"></p>
										<p class="sub_txt"></p>
									</div>
								</div>
							</a><a href="https://www.winenara.com/shop/event/event_view?no=248"
								class="slick-slide" style="width: 465px;" data-slick-index="6"
								aria-hidden="true" tabindex="-1" role="option"
								aria-describedby="slick-slide06">
								<div class="slide">
									<picture>
									<source
										srcset="/uploads/banner/f494388d1442dee753dc45ce58cc216a.png"
										media="(max-width:1023px)">
									<!-- mb이미지 --> <img alt="" class=""
										src="/uploads/banner/437fe0f85769e17726783b7b9ed1b4c5.png"
										style="opacity: 1;"><!-- pc이미지 --> </picture>
									<p class="visual_category"></p>
									<div class="visual_txt">
										<p class="tit"></p>
										<p class="sub_txt"></p>
									</div>
								</div>
							</a> <a href="https://www.winenara.com/shop/event/event_view?no=256"
								class="slick-slide slick-cloned" style="width: 465px;"
								data-slick-index="7" aria-hidden="true" tabindex="-1">
								<div class="slide">
									<picture>
									<source
										srcset="/uploads/banner/231af4844844cb78e12c13d00e6059c9.png"
										media="(max-width:1023px)">
									<!-- mb이미지 --> <img alt="" class=""
										src="/uploads/banner/7934b27548675c604a60f6f87a8de537.png"
										style="opacity: 1;"><!-- pc이미지 --> </picture>
									<p class="visual_category"></p>
									<div class="visual_txt">
										<p class="tit"></p>
										<p class="sub_txt"></p>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>

			</div>
			<sec:authorize access="isAuthenticated()">
			<c:if test="${recPro.length > 0 }">
				<!-- 신상품 -->
				<div class="prd_wrap slide_prd section newarrivals">
					<h2>
						<sec:authentication property="principal.mnickname" />
						의 취향에 맞을 만한 와인
					</h2>
					<a href="/product/list" class="btn_more">더보기</a>
					<!-- <span class="sub_tit"></span> -->
					<div class="prd_wrap swiper">
						<ul class="n_prd_list swiper-wrapper" style="overflow: visible;">
							<c:forEach items="${recProList}" var="recPro">
								<li class="swiper-slide">
									<div class="item">
										<div class="main_img">
											<a href="/product/item?w_id=${recPro.w_id}"
												class="prd_img table_box"> <picture> <img
													src="${recPro.w_img }" loading="lazy" alt=""> </picture>
											</a>
											<%-- <p class="vivino">평균평점<em>${new123.avg_db_rating }</em></p> --%>
										</div>
										<div class="info">
											<div class="more_info">
												<p class="prd_name">
													<a href="/product/item?w_id=${recPro.w_id}"> <span>${recPro.w_name_kor }</span>
														<span class="en">${recPro.w_name }</span>
													</a>
												</p>
											</div>
											<div class="cate_label">
												<span style="background: #F6EC9C">${recPro.w_type }</span> <span
													style="background: #E0D8EA">${recPro.wr_nation_kor }</span>
												<span style="background: #C8D792">${recPro.wv_variety }</span>
											</div>
											<div class="price_area" style="margin-right: 18px;">
												<p class="price">
													<ins>
														<strong> <fmt:formatNumber
																value="${recPro.w_price }" pattern="#,###" />
														</strong>원
													</ins>
												</p>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
				</c:if>
			</sec:authorize>
			<!-- 베스트 -->
			<div class="section slide_prd product_lists_page">
				<h2>
					<div
						style="display: flex; justify-content: space-between; margin-bottom: 20px;">
						<span style="font-size: 25px; font-weight: 500;">BEST</span> <a
							href="/product/list" class="btn_more">더보기</a>
					</div>
					<div class="prd_wrap swiper">
						<ul class="n_prd_list se_list swiper-wrapper"
							style="overflow: visible;">
							<c:forEach items="${bestProduct6 }" var="best">
								<li class="swiper-slide">
									<div class="item">
										<div class="main_img">
											<a href="/product/item?w_id=${best.w_id }"
												class="prd_img table_box"> <picture> <img
													src="${best.w_img }" loading="lazy" alt=""> </picture>
											</a>
											<p class="vivino">
												평균평점<em>${best.avg_db_rating }</em>
											</p>
										</div>
										<div class="info">
											<div class="more_info">
												<p class="prd_name" style="font-size: 14px;">
													<a href="/product/item?w_id=${best.w_id }"> <span>${best.w_name_kor }</span>
														<span class="en">${best.w_name }</span>
													</a>
												</p>
											</div>
											<div class="cate_label">
												<span style="background: #F6EC9C">${best.w_type }</span> <span
													style="background: #E0D8EA">${best.wr_nation_kor }</span> <span
													style="background: #C8D792">${best.wv_variety }</span>
											</div>
											<div class="price_area" style="margin-right: 18px;">
												<p class="price" style="font-size: 14px;">
													<ins>
														<strong> <fmt:formatNumber
																value="${best.w_price }" pattern="#,###" />
														</strong>원
													</ins>
												</p>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
			</div>

			<!-- 신상품 -->
			<div class="prd_wrap slide_prd section newarrivals">
				<h2>NEW ARRIVALS</h2>
				<a href="/product/list" class="btn_more">더보기</a>
				<!-- <span class="sub_tit"></span> -->
				<div class="prd_wrap swiper">
					<ul class="n_prd_list swiper-wrapper" style="overflow: visible;">
						<c:forEach items="${newProduct6}" var="new123">
							<li class="swiper-slide">
								<div class="item">
									<div class="main_img">
										<a href="/product/item?w_id=${new123.w_id}"
											class="prd_img table_box"> <picture> <img
												src="${new123.w_img }" loading="lazy" alt=""> </picture>
										</a>
										<p class="vivino">
											평균평점<em>${new123.avg_db_rating }</em>
										</p>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="/product/item?w_id=${new123.w_id}"> <span>${new123.w_name_kor }</span>
													<span class="en">${new123.w_name }</span>
												</a>
											</p>
										</div>
										<div class="cate_label">
											<span style="background: #F6EC9C">${new123.w_type }</span> <span
												style="background: #E0D8EA">${new123.wr_nation_kor }</span>
											<span style="background: #C8D792">${new123.wv_variety }</span>
										</div>
										<div class="price_area" style="margin-right: 18px;">
											<p class="price">
												<ins>
													<fmt:formatNumber value="${new123.w_price }"
														pattern="#,###" />
													</strong>원
												</ins>
											</p>
										</div>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>

		<!-- 휴면계정안내 -->
		<div class="layer dormant_layer" id="dormant_layer"
			style="display: none;">
			<div class="display_table">
				<div class="table_cell">
					<div class="layer_area">
						<button type="button" class="layer_close"
							onclick="dormant_close()">닫기</button>
						<div class="layer_con">
							<h3 class="tit">휴면 계정 안내</h3>
							<p class="sub_tit">
								회원님의 계정이 1년이상 로그인하지 않아 관련 <br class="pc_hidden">법령에 따라 <br
									class="mb_hidden">휴면 상태로 전환되었습니다.
							</p>
							<div class="user_year">
								<p>
									<span>최근 접속일</span> : <span></span>
								</p>
								<p>
									<span>휴면 전환일</span> : <span></span>
								</p>
							</div>
							<p class="sub_txt">
								모든 서비스를 다시 이용하고 싶을 경우에는, <br class="pc_hidden"> <span>휴면
									해제하기</span>를 선택해 주세요.
							</p>
							<ul class="mem_lists">
							</ul>
							<div class="btn_area col2">
								<button type="button" class="btn_txt" onclick="dormant_close()">취소</button>
								<button type="button" class="btn_txt btn_black"
									onclick="dormant_submit();">휴면 해제하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //휴면계정안내 -->

		<!-- 리뷰 레이어 (유형 퍼블 추가) -->
		<div class="layer review_img_layer">
			<div class="display_table">
				<div class="table_cell">
					<div class="layer_area">
						<button type="button" class="layer_close"
							onclick="commonUI.layer.close()">
							<span>Layer Close</span>
						</button>
						<div class="layer_tit">리뷰 보기</div>
						<div class="layer_con" id="review_div"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- //리뷰 레이어 (유형 퍼블 추가) -->


		<!-- //page_script -->
	</section>
	<script type="text/javascript">
		const swiper = new Swiper('.swiper', {
			slidesPerView : 3,
			spaceBetween : 10,
		});
		const mainSwiper = new Swiper('.main-swiper', {
			slidesPerView : 1,
			autoplay : {
				delay : 5000,
			},
		      pagination: {
		          el: ".swiper-pagination",
		          type: "progressbar",
		        },
		        loop:true,
		});
	</script>
	<!-- //contents -->