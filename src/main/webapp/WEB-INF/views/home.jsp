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
	.wrap .logo{
	    padding-top: 16px;
	    }
::-webkit-scrollbar {
	display: none;
}

.swiper-pagination-progressbar-fill {
	background: #46675c !important;
}

.con_area.con3 {
	padding: 30px 0 0;
	/*background-color: #f2f4f5;*/
}

.main_page .con_area.con3 .inner_box {
	padding: 0 18px 47px;
	font-size: 17px;
	font-weight: 700;
}

.main_page .con_area.con3 .text_wrap {
	padding: 0 12px;
	line-height: 2.1;
	font-size: 34px;
}

.main_page .con_area.con3 .select_wrap {
	position: relative;
	word-break: keep-all;
	margin: 0 auto;
	width: fit-content;
}

.con_area.con3 .select_wrap .inp_select {
	position: static;
}

.con_area.con3 .select_wrap .inp_select .select_list {
	position: absolute;
	left: 0;
	top: 0;
	bottom: 0;
	height: auto;
	padding: 0;
	font-size: 20px;
	font-weight: 700;
	color: #46675c;
	line-height: 2;
	background: none;
	z-index: 1;
	opacity: 0;
}

.con_area.con3 .select_wrap .inp_select option {
	font-size: 20px;
	cursor: pointer;
	padding: 13px 12px;
}

.inp_select .select_list option {
	color: #1b2529;
}

.con_area.con3 .select_wrap .select_box {
	position: relative;
	display: inline-flex;
	align-items: center;
	width: 50%;
	border: none;
	border-bottom: 3px solid #46675c;
	color: #46675c;
	font-weight: 600;
	justify-content: center;
}

.con_area.con3 .select_wrap .select_box span {
	padding-right: 26px;
}

.con_area.con3 .select_wrap .select_box span::after {
	position: absolute;
	left: auto;
	bottom: 26px;
	flex-shrink: 0;
	display: inline-block;
	width: 20px;
	height: 20px;
	margin: 0 0 0 9px;
	background: url(/resources/asset/images/shop/default/arr_down5.png)
		no-repeat;
	background-size: contain;
	content: "";
}

.con_area.con3 .inner_box .btn_wrap {
	margin-top: 33px;
}

.bunker_products_box {
	font-size: 17px;
	font-weight: 300;
}

.bunker_products {
	/*display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;*/
	
}

}
.bunker_product {
	/*border: 1px solid;*/
	padding: 8px 1em;
	min-width: 212px;
	max-width: 212px;
}

.bunker_en {
	font-size: 13px;
	color: darkgray;
	display: block;
}

#bunker_wfood {
	
}

.bunker_item {
	display: flex;
	align-items: center;
}

.select-style {
	border: 1px solid #ccc;
	width: 150px;
	border-radius: 3px;
	overflow: hidden;
	background: #fafafa url("img/icon-select.png") no-repeat 90% 50%;
}

.select-style select {
	width: 110%;
	border: none;
	box-shadow: none;
	background: transparent;
	background-image: none;
	-webkit-appearance: none;
}

.select-style select:focus {
	outline: none;
}

.bunker_item>.main_img {
	width: 35%;
	margin: 0 auto;
	display: flex;
	justify-content: flex-end;
}

.bunker_item>.info {
	width: 65%;
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
		<div class="swiper-pagination"
			style="position: relative; margin-top: -5px;"></div>
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
	<section id="contents" style="margin-top: 55px;">

		<div class="content main_page">
			<div class="main_visual"></div>
			<!--  <div class="main_category pc_hidden">
				<ul>
					<li class="ico_wine"><a href="/product/list">WINE</a></li>
					<li class="ico_new"><a href="/product/list">NEW</a></li>
					<li class="ico_newBest"><a href="/product/list">BEST</a></li>
				</ul>
			</div>-->


	
			<sec:authorize access="isAuthenticated()">
			<c:if test="${recProList.size() > 0 }">
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
											<div class="info">
												<div class="more_info">
													<p class="prd_name">
														<a href="/product/item?w_id=${recPro.w_id}"> <span>${recPro.w_name_kor }</span>
															<span class="en">${recPro.w_name }</span>
														</a>
													</p>
												</div>
												<div class="cate_label">
													<span style="background: #F6EC9C">${recPro.w_type }</span>
													<span style="background: #E0D8EA">${recPro.wr_nation_kor }</span>
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
							<c:forEach items="${mainProduct}" var="product">
								<c:if test="${product.key eq 'best'}">
								<c:forEach items="${product.value}" var="best">
								<li class="swiper-slide">
									<div class="item">
										<div class="main_img">
											<a href="/product/item?w_id=${best.w_id }"
												class="prd_img table_box"> <picture> <img
													src="${best.w_img }" loading="lazy" alt=""> </picture>
											</a>
											<p class="vivino">
												평균평점<em>${best.avg_rating }</em>
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
												<span style="background: #F6EC9C">하이</span>
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
								</c:if>
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
						<c:forEach items="${mainProduct}" var="product">
							<c:if test="${product.key eq 'new'}">
							<c:forEach items="${product.value}" var="new123">
							<li class="swiper-slide">
								<div class="item">
									<div class="main_img">
										<a href="/product/item?w_id=${new123.w_id}"
											class="prd_img table_box"> <picture> <img
												src="${new123.w_img }" loading="lazy" alt=""> </picture>
										</a>
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
											<span style="background: #F6EC9C">하이</span> 
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
							</c:if>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="separator"
				style="width: 465px; height: 8px; background: #ececec !important;"></div>
			<div>
				<!-- 코우ㅣ에 start -->
				<div class="con_area con3">
					<div class="inner_box">
						<div class="text_wrap" id="mainKeywordRecom" style="margin: auto;width: 340px;">
							<div class="select_wrap">
								<div class="inp_select">
									<select id="keywordSelect1" class="select_list select-style">
										<option value="소고기">소고기</option>
										<option value="치즈">치즈</option>
										<option value="해산물">해산물</option>
										<option value="튀김">튀김</option>
										<option value="과일">과일</option>
										<option value="생선회">회</option>
										<option value="하몽">하몽</option>
										<option value="리조또">리조또</option>
										<option value="돼지">돼지고기</option>
										<option value="초콜릿">초콜릿</option>
										<option value="닭고기">닭고기</option>
									</select>
								</div>
								<div id="bunker_wfood" class="select_box select_box_1">
									<span class="text_1"></span>
								</div>
								                        <font id="bunker_wfood_txt"><span id="food_waga"></span> <br> 함께하면 어떨까요?
                        </font>
							</div>

						</div>

						<div class="bunker_products_box">
							<ul class="bunker_products">
							</ul>
						</div>

						<div class="btn_wrap">
							<button class="btn_txt" id="mainSearchKeywordRecom"
								onclick="/product/list" style="font-size: 16px; width: 90%;">더
								많은 와인 보러가기</button>
						</div>
					</div>



				</div>
			</div>
			<div class="separator"
				style="width: 465px; height: 8px; background: #ececec !important;"></div>
			<!-- 코우ㅣ에 end -->
		</div>

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
			pagination : {
				el : ".swiper-pagination",
				type : "progressbar",
			},
			loop : true,
		});
		
		function getWineListWithFood(wfood){
			$.ajax ({
				  url	: "/getWineFoodList/" + wfood, 
				  type	: "GET", 
				  success : function(data, status) {
					//console.log(data, status);
					$('.bunker_products').empty();
					let str = '';
					$.each(data.wines, function (idx, item) {
						//console.log(idx, item);
						let price = item.wprice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
						
						if(idx % 2 == 0){
							str = `
								<li class="bunker_product">
								<div class="bunker_item">
									<div class="main_img">
										<a href="/product/item?w_id=\${item.wid}" class="prd_img table_box">
											 <img
												src="\${item.wimg}"
												alt="" width="130">
										</a>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="/product/item?w_id=\${item.wid}"> <span>\${item.wnamekor}</span>
												<br><span class="bunker_en">\${item.wname}</span>
												</a>
											</p>
										</div>
										<!--  <div class="cate_label">
										<span style="background: #F6EC9C">\${item.wvariety}</span> <span
											style="background: #E0D8EA">\${item.wtype}</span> <span
											style="background: #C8D792">Corvina</span>
									</div>-->
										<div class="price_area">
											<p class="price">\${price}원</p>
										</div>
									</div>
								</div>
							</li>`;
							
							
						}else{
							str = `
								<li class="bunker_product">
								<div class="bunker_item">
									<div class="info"  style="margin-left: 76px;">
										<div class="more_info">
											<p class="prd_name">
												<a href="/product/item?w_id=\${item.wid}"> <span>\${item.wnamekor}</span>
												<br><span class="bunker_en">\${item.wname}</span>
												</a>
											</p>
										</div>
										<!--  <div class="cate_label">
										<span style="background: #F6EC9C">\${item.wvariety}</span> <span
											style="background: #E0D8EA">\${item.wtype}</span> <span
											style="background: #C8D792">Corvina</span>
									</div>-->
										<div class="price_area">
											<p class="price">\${price}원</p>
										</div>
									</div>
									<div class="main_img">
									<a href="/product/item?w_id=\${item.wid}" class="prd_img table_box">
										 <img
											src="\${item.wimg}"
											alt="" width="130">
									</a>
								</div>
								</div>
							</li>`;
						}
							$('.bunker_products').append(str);
							
							if(idx != 4){
								$('.bunker_products').append('<div style="Width:95%; height: 1px; background:rgba(70, 103, 92, 0.5); margin: 4px auto"></div>');
							}
					});
				  },
				  error	: function(status, error) {
					  console.log("와인 음식 잘못 에러");
				  }
				});
		}
		
		$(function(){
			
			let options_len = $('#keywordSelect1 option').length;
			let random = Math.floor(Math.random() * options_len);

			if(random == 2 || random == 3 || random == 4 || random == 6 || random == 9){
				$('#food_waga').text(' 과');
			}else{
				$('#food_waga').text(' 와');
			}
			
			let wfood = $('#keywordSelect1 option:eq(' + random+')').val();
			//console.log(random, wfood);
			getWineListWithFood(wfood);
			$('#keywordSelect1 option:eq(' + random+')').prop("selected", true);
			$('.text_1').text($('#keywordSelect1 option:selected').text());

		});
		
		$(document).ready(function(){
			$('#header > div.top').css('display', 'none');
			  $("#Allcontents").scroll(function(){
			        let scroll = $("#Allcontents").scrollTop();
			        //console.log('scroll', scroll, $('#header > div.top'));
			        if(scroll > 335){
			        	$('#header > div.top').css('display', 'block');
			        }else{
			        	$('#header > div.top').css('display', 'none');
			        }
			    });
			});
		
		$('#header > div.bottom').css('display', 'none');
		
		$('#keywordSelect1').on("change", function(){
			getWineListWithFood($('#keywordSelect1 option:selected').val());
			$('.text_1').text($('#keywordSelect1 option:selected').text());
			$('#keywordSelect1 option:selected').prop("selected", true);
			console.log($('#keywordSelect1 option:selected').val(), $('#keywordSelect1 option:selected').text(), "change!!");
			
			let val = $('#keywordSelect1 option:selected').text();
			let waga = val.charAt(val.length-1);
			console.log(waga);
			if(waga == '물' || waga == '김' || waga == '일' || waga == '릿' || waga == '몽'){
				$('#food_waga').text(' 과');
			}else{
				$('#food_waga').text(' 와');
			}
		});
		
	</script>
	<!-- //contents -->