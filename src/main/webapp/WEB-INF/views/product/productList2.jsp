<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/js/ion.rangeSlider.min.js"></script>
<script src="/resources/asset/js/product/sortedList.js"></script>
<!-- <script src="/resources/asset/js/product/addInfinity.js"></script> -->
<!DOCTYPE html>
<html lang="ko">
<body>

<style>
.layer category_layer{
	display:block;
}
.list-wine-name {
	font-weight: 800; 
	color: black;
	/* margin-bottom: 10px; */
	}

.list-wine-name-eng {
	color: #525151
	}
	
.cate_label {
    margin-top: 30px !important;
}

.pricerange {
	border: 1px solid;
	width: auto;
	border-radius: 20px;
	background-color: #46675c;
	color: white;
	font-size: 1;
	text-align: center;
	padding: 12px;
}
#wine_nation_image{
	width: 30px;
    height: 20px;
    margin-top: 5px;
    margin-right: 8px;
}

/* #resetDiv {
	border: 1px solid #46675c;
	display: flex;
	margin-top: 10px;
	border-radius: 7px;
	height:36px;
	color:#46675c;
} */

</style>

	<!-- 와인 프로파일 레이어 -->
	<!-- /shop/mypage/shopping/wine_profile_ajax.php LOAD -->
	<div class="layer wine_profile_layer"></div>
	<!-- //와인 프로파일 레이어 -->

	<!-- 회원 등급현황 레이어 - 로그인 했을 때만 노출 -->
	<div class="layer grade_layer">
		<div class="display_table">
			<div class="table_cell">
				<div class="layer_area">
					<button type="button" class="layer_close"
						onclick="commonUI.layer.close()">
						<span>Layer Close</span>
					</button>
					<div class="layer_tit">등급현황</div>
					<div class="layer_con">
						<ul class="grade_status">
							<li>
								<p class="ico_silver">
									<span><i>Silver</i></span>
								</p> <em>실버</em>
							</li>
							<li>
								<p class="ico_gold">
									<span><i>Gold</i></span>
								</p> <em>골드</em>
							</li>
							<li>
								<p class="ico_diamond">
									<span><i>Diamond</i></span>
								</p> <em>다이아몬드</em>
							</li>
							<li>
								<p class="ico_trinity">
									<span><i>Trinity</i></span>
								</p> <em>트리니티</em>
							</li>
						</ul>
						<div class="grade_ex">
							<dl>
								<dt>내 구입금액</dt>
								<dd>0 원 (주문 0 건)</dd>
							</dl>
							<div class="g_list_box">
								<ul>
									<li class="tit">회원<br class="mb_hidden">등급</li>
									<li class="tit">실버</li>
									<li class="tit">골드</li>
									<li class="tit">다이아몬드</li>
									<li class="tit">트리니티</li>
								</ul>
								<ul>
									<li class="tit">등급<br class="mb_hidden">조건
									</li>
									<li>일반회원</li>
									<li>200만원 <br class="mb_hidden">이상구매
									</li>
									<li>500만원 <br class="mb_hidden">이상구매
									</li>
									<li>1000만원 <br class="mb_hidden">이상구매
									</li>
								</ul>
							</div>
							<div class="btn_area">
								<button type="button" class="btn_txt btn_black"
									onclick="location.href='/shop/company/member_benefit'">
									<span>혜택 자세히보기</span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //회원 등급현황 레이어 -->

	<input type="hidden" id="path_gb" value="MOBILE">

	<link rel="stylesheet" type="text/css" href="/resources/asset/css/shop/slick.css">
	<script type="text/javascript" src="/resources/asset/js/slick.min.js"></script>
	<script type="text/javascript">
		//배너 슬라이드
		$('.top_banner .top_banner_slide').slick({
			dots : false,
			arrows : false,
			autoplay : true,
			autoplaySpeed : 8000,
			slidesToShow : 1,
		});
		$(window).scroll(function() {
			if (!$("#header").hasClass("fixed")) {
				$('.top_banner .top_banner_slide').slick('refresh');
			}
		});

		$(".top_banner.time_out").hide();
		$(".top_banner.time_out").slideDown('300');
		setTimeout(function() {
			$(".top_banner.time_out").slideUp('300');
		}, 3000);

		function onEnterLogin() {
			if (window.event.keyCode === 13) {
				$("#loginBtn").trigger("click");
			}
		}

		//모바일 gnb toggle menu
		$(".mb_gnb_area .menu_list li button").on("click", function() {
			$(this).next("ul").slideToggle();
			$(this).parent("li").siblings().find("ul").slideUp();
		});

		//테이스트 프로파일 타이틀 주석
		$(".ico_note").on("click", function() {
			$(this).toggleClass("on");
		});

		//선택한 sns 노출
		$(".sns_area li").on("click", function() {
			var selSns = $(this).find("span").attr("class");
			$(".sns_area .btn_sel span").attr("class", selSns);
			$(".sns_area").removeClass("on");
		});
		//선택한 store 노출
		$(".store_area li").on("click", function() {
			var selStore = $(this).find("span").text();
			$(".store_area .btn_sel span").text(selStore);
			$(".store_area").removeClass("on");
		});

		/*공유 및 URL 복사*/
		var img_url = "";
		if (img_url !== '') {
			img_url = 'https://am.witplus.com/uploads/product/';
		}
		function share_sns(e) {
			RC_Method({
				page_type : 'product_page',
				behavior : 'user_action',
				action : 'sharing'
			});
			var url = window.document.location.href;
			if (e == 'U') {
				var textarea = document.createElement("textarea");
				document.body.appendChild(textarea);
				textarea.value = url;
				textarea.select();
				document.execCommand("copy");
				document.body.removeChild(textarea);
				alert("URL이 복사되었습니다.");
			} else if (e == 'F') {
				window.open('http://www.facebook.com/sharer.php?u='
						+ encodeURIComponent(url));
			} else if (e == 'K') {

				Kakao.init('b129fd9215e06b4366c1a76b2c37d98b');
				Kakao.Link
						.sendDefault({
							objectType : 'feed',
							content : {
								title : '와인나라',
								description : "",
								imageUrl : 'https://www.winenara.com/resources/asset/images/shop/default/pc_logo.png',
								link : {
									mobileWebUrl : location.href,
									webUrl : location.href,
								},
							},
							buttons : [ {
								title : '와인나라',
								link : {
									mobileWebUrl : location.href,
								},
							}, ]
						});
			}
		};

		$(document)
				.ready(
						function() {
							$("#loginBtn")
									.on(
											"click",
											function() {
												if (!$("#login_user_id").val()) {
													alert("아이디를 입력하여 주세요.");
													$("#login_user_id").focus();
													return false;
												}

												if (!$("#login_passwd").val()) {
													alert("비밀번호를 입력하여 주세요.");
													$("#login_passwd").focus();
													return false;
												}
												Cookie
														.Set(
																'login_return_url_param',
																location.href,
																1, true);

												Csrf.Set(_CSRF_NAME_); //토큰 초기화
												$
														.ajax({
															type : 'POST',
															url : "/shop/auth/login_check",
															dataType : 'json',
															data : $(
																	"#LoginPostFrm")
																	.serialize(),
															success : function(
																	res) {
																console
																		.log(res);
																if (res.status == 'Y') {
																	console
																			.log(JSON
																					.stringify(res.data));
																	// alert(res.msg);
																	location.href = res.url;
																} else if (res.status == "N") {
																	alert(res.msg);
																	if (res.pass_err_cnt >= 5) {
																		recaptcha_load();
																	}
																} else if (res.status === 'AUTH_DENIED') {
																	alert(res.msg);
																	location.href = res.url;
																} else if (res.status === 'OUT_YN') {
																	alert(res.msg);
																	return false;
																} else if (res.status === 'TOKEN_ERROR') {
																	alert(res.msg);
																	return false;
																} else if (res.status == 'D') {
																	$(
																			'#dormant_last_login_date')
																			.text(
																					res.last_login_date);
																	$(
																			'#dormant_dormant_date')
																			.text(
																					res.dormant_date);
																	if (confirm(res.msg)) {
																		// location.href = res.url;
																		$(
																				'#dormant_layer')
																				.show();
																	}
																} else {
																	alert(res.msg);
																}
															}
														});

											});
						});

		// 검색어 다시 불러오기
		//$(function(){
		//$("#keyword").on("click", function() {
		$('#keyword').click(function() {
			get_keyword_list_ajax();
		});

		$('#mb_search_btn').click(function() {
			get_keyword_list_ajax();
		});

		//});

		function get_keyword_list_ajax() {
			var html = "";
			Csrf.Set(_CSRF_NAME_); //토큰 초기화
			$
					.ajax({
						type : "POST",
						url : "/shop/product/get_keyword_list_ajax",
						data : {
							mode : 'list'
						},
						success : function(res) {
							if (typeof (res) == 'string') {
								res = JSON.parse(res);
							}
							if (res.status == 'ok') {
								var keyword_list = res.data.keyword_list;
								if (keyword_list.length > 0) {
									for (var i = 0; i < keyword_list.length; i++) {
										html += '<li><span onclick="sch_item(';
										html += "'"
												+ keyword_list[i]['keyword']
												+ "'";
										html += ')" style="cursor:pointer;">'
												+ keyword_list[i]['keyword']
												+ '</span>';
										html += '<button type="button" class="del_btn" onclick="del_item(';
										html += "'"
												+ keyword_list[i]['keyword']
												+ "'";
										html += ')"></button></li>';
									}
									$(".result_list").empty();
									$(".result_list").html(html);
								} else {
									$(".result_list").empty();
									$(".result_list")
											.html(
													'<li id="nodata">최근검색어 내역이 없습니다.</li>');
								}
							} else {
								//alert(res.msg);
								return;
							}
						},
						error : function(res) {
							console.log("최근 검색어 리스트에 오류가 발생했습니다.");
							// alert(res.responseText);
						}
					});
		}

		// 키워드 개별 삭제
		function del_item(keyword) {

			var html = "";
			Csrf.Set(_CSRF_NAME_); //토큰 초기화
			$
					.ajax({
						type : 'POST',
						url : "/shop/product/update_keyword_ajax",
						dataType : 'json',
						data : {
							keyword : keyword,
							mode : 'single'
						},
						success : function(res) {
							if (typeof (res) == 'string') {
								res = JSON.parse(res);
							}

							if (res.status == 'ok') {

								var keyword_list = res.data.keyword_list;
								if (keyword_list.length > 0) {
									for (var i = 0; i < keyword_list.length; i++) {
										html += '<li><span onclick="sch_item(';
										html += "'"
												+ keyword_list[i]['keyword']
												+ "'";
										html += ')" style="cursor:pointer;">'
												+ keyword_list[i]['keyword']
												+ '</span>';
										html += '<button type="button"  class="del_btn" onclick="del_item(';
										html += "'"
												+ keyword_list[i]['keyword']
												+ "'";
										html += ')"></button></li>';
									}
									$(".result_list").empty();
									$(".result_list").html(html);
								} else {
									$(".result_list").empty();
									$(".result_list")
											.html(
													'<li id="nodata">최근검색어 내역이 없습니다.</li>');
								}
							}
						},
						error : function(res) {
							alert("검색 키워드 삭제시 에러가 발생했습니다.");
							alert(res.responseText);
						}
					});
		}

		// 키워드 전체 삭제
		function all_del_item() {
			Csrf.Set(_CSRF_NAME_); //토큰 초기화
			$.ajax({
				type : 'POST',
				url : "/shop/product/update_keyword_ajax",
				dataType : 'json',
				data : {
					mode : 'all'
				},
				success : function(res) {
					if (res.status == 'ok') {
						$(".result_list").empty();
						$(".result_list").html(
								'<li id="nodata">최근검색어 내역이 없습니다.</li>');
					}
				},
				error : function(res) {
					alert("검색 키워드 삭제시 에러가 발생했습니다.");
					alert(res.responseText);
				}
			});
		}

		// 선택 키워드 검색
		function sch_item(keyword) {
			/*var form = document.searchForm;
			form.keyword.value = keyword;
			form.submit();
			 */
			location.href = '/shop/product/search_product_lists?keyword='
					+ keyword
		}

		$('.social_login .social_btn.naver').click(function() {
			Cookie.Set('join_gb', 'N', 1, true);
			Cookie.Set('sns_btn_type', 'L', 1, true);
			Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
			Cookie.Set('error_url', location.href, 1, true);

			Cookie.Set('login_return_url_param', location.href, 1, true);

			location.href = '/shop/auth/oauth';
		});

		$('.social_login .social_btn.kakao').click(function() {
			Cookie.Set('join_gb', 'K', 1, true);
			Cookie.Set('sns_btn_type', 'L', 1, true);
			Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
			Cookie.Set('error_url', location.href, 1, true);

			Cookie.Set('login_return_url_param', location.href, 1, true);

			location.href = '/shop/auth/oauth';
		});

		$('.social_login .social_btn.google').click(function() {
			Cookie.Set('join_gb', 'G', 1, true);
			Cookie.Set('sns_btn_type', 'L', 1, true);
			Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
			Cookie.Set('error_url', location.href, 1, true);

			Cookie.Set('login_return_url_param', location.href, 1, true);

			location.href = '/shop/auth/oauth';
		});

		$('.social_login .social_btn.face').click(function() {
			Cookie.Set('join_gb', 'F', 1, true);
			Cookie.Set('sns_btn_type', 'L', 1, true);
			Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
			Cookie.Set('error_url', location.href, 1, true);

			Cookie.Set('login_return_url_param', location.href, 1, true);

			location.href = '/shop/auth/oauth';
		});

		//PC 모바일 구분
		if (chkDevice.isPC()) {
			$("#path_gb").val('WEB');
		} else {
			$("#path_gb").val('MOBILE');
		}

		/**
		 * 매장 선택
		 * @param {[type]} store_code [description]
		 */
		function setHeaderStore(store_code) {

			Csrf.Set(_CSRF_NAME_); //토큰 초기화
			$.ajax({
				type : "POST",
				url : "/shop/auth/store_setting_ajax",
				data : {
					"store_code" : store_code
				},
				success : function(res) {
					console.log(res);
					location.reload();
				},
				error : function(res) {
					console.log(res.responseText);
				}
			});

		}

		/*
		 * 바코드 스크립트
		 */
		window.addEventListener("flutterInAppWebViewPlatformReady", function(
				event) {
			//호출코드 (호출가능시기확인 후 호출가능)
		});

		function jsOpenBarcode() {
			window.flutter_inappwebview.callHandler('scanBarcode');
		}

		//응답코드
		function resultBarcode(barcode) {
			// console.log("barcode: ",barcode);
			var form = document.BarcodeForm;

			form.barcode.value = barcode;

			// form.submit();

			location.href = '/shop/order/barcode_view?barcode=' + barcode;
		}

		function openProfile() {
			Csrf.Set(_CSRF_NAME_); //토큰 초기화
			$.ajax({
				type : "POST",
				url : "/shop/mypage/shopping/wine_profile_ajax",
				data : {},
				success : function(res) {
					$(".wine_profile_layer").html(res);
					commonUI.layer.open('wine_profile_layer');
				},
				error : function(res) {
					console.log(res.responseText);
				}
			});
		}

		function log_out() {
			Cookie.Set('logout_return_url', location.href, 1, true);
			location.href = '/shop/auth/logout';
		}

		if ($("#btn_auto_login").size() > 0) {
		}

		if ($("#btn_alarm").size() > 0) {
		}

		function push_ajax(mode, target) {
			var yn = "N";
			if (target.checked === true) {
				yn = 'Y';
			}
			Csrf.Set(_CSRF_NAME_); //토큰 초기화
			$.ajax({
				type : "POST",
				url : "/shop/mypage/push/push_setting_ajax",
				dataType : 'json',
				data : {
					"mode" : mode,
					"yn" : yn
				},
				success : function(res) {
					if (res.status == 'err') {
						// alert(res.msg);
					} else {
						//해당 주석 해제하면 최초 실행시에 click 트리거가 설정되어있어서 alert이 뜰 수 있음. 주의
						// alert(res.msg);
					}
				},
				error : function(res) {
					alert(res.responseText);
				}
			});
		}
	</script>
	<!-- contents -->
	<section id="contents" >
		<div class="lnb product_lnb lnb_wrap">
			<div class="pc_hidden">
				<a href="javascript:history.go(-1);" class="prev">이전</a>
				<div class="select_brand" id="select_brand">
					<h2 class="my_value js_selectBtn">WINE</h2>
				</div>
			</div>
		</div>
		<div class="wrap">
			<div class="content product product_lists_page test" style="margin-top: 10px;">
			
			<div class="filter-keywords" style="margin: 30px 7px; display:none;">
				<!-- 필터 키워드 출력되는 곳 -->
				<div id="keyword1" style="display: flex; flex-wrap: wrap;">
				<div id="priceRange" ></div>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
				</div>
				<!-- 필터 초기화 -->
				<div id="resetDiv" style="display:none;">
					<button type="submit" style="font-size: 15px; font-weight: 600; margin-right: 380px;" onclick="location.href='/product/list'" >
					<img src="/resources/asset/images/shop/product/resetButton.png" style="width: 21px; margin-right: 4px; margin-top: 2px;" />
					</button>
				</div>
			</div>
			
				<div class="product_lists_wrap">
					<div class="prd_list_tit">
						<div class="top">
							<h2>WINES</h2>
							<div class="line_map">
								<ul>
									<li onclick="location.href='/'" style="cursor: pointer;">HOME</li>
									<li onclick="location.href='/product/list'" style="cursor: pointer;" id="cate_txt">ALL</li>
								</ul>
							</div>
						</div>
						<div class="top">
							<div class="line_map" style="border: 1px solid; padding-top: 10px; padding-bottom: 10px; padding-right: 130px; padding-left: 126px; margin-right: 20px; margin-top: 15px;">
								<button onclick="filterOpen();" class="filterBtn"><span>SMART FILTER</span></button>
							</div>
						</div>
					</div>
					<script>
					function filterOpen(){
						commonUI.layer.open('category_layer'); 
					}
					</script>
					<style>
					.filterBtn {
						padding-left: 28px;
					    background: url(/resources/asset/images/shop/default/icon_smart_search.png) no-repeat left/22px;
					    font-weight: 500;
					    color: #111;
					}
					
					</style>
					<div class="prd_list_area">
					
						<div class="search_result">
							<div class="result_area">
								<p class="result" id="total_count_text"></p>
							</div>

							<div class="second_order">
								<select name="js_select" id="js_select" style="border: none; border-bottom: 1px solid #ccc;">
									<option value="recent" selected>최신순</option>
									<option value="highprice">높은 가격순</option>
									<option value="lowprice">낮은 가격순</option>
									<option value="totalsales">판매량순</option>
									<option value="rating">평점순</option>
								</select>
							</div>
						</div>
						<ul class="n_prd_list" id="product_ul">
						<c:forEach items="${itemList }" var="item">
								<li>
									<div class="item">
										<div class="main_img">
											<a href="/product/item?w_id=${item.w_id}" class="prd_img table_box"> 
												<picture> 
													<img src="${item.w_img }" loading="lazy" alt=""> 
												</picture>
											</a>
											<p class="vivino">평균평점 <em style="color:#bd0808;">${item.avg_db_rating }</em>
											</p>
										</div>
										<div class="info">
											<div class="more_info">
												<p class="prd_name">
													<a href="/product/item?w_id=${item.w_id}"> 
													<span class="list-wine-name">${item.w_name_kor }</span>
													<span class="en list-wine-name-eng">${item.w_name }</span>
													</a>
												</p>
											</div>
											<div class="cate_label" style="display:flex; align-items: center;">
												<span style="background: #E0D8EA; padding: 9px; display:none;" id="wine_nation_kor">${item.wr_nation_kor }</span> 
												<div style=" margin-left: 5px;">
													<!-- <img id="wine_nation_image" src=""> -->
												</div>
												<c:choose>
												  <c:when test="${item.wr_nation_kor eq '이탈리아'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/icon_rec_flag_italia.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '프랑스'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/icon_rec_flag_france.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '스페인'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/icon_rec_flag_spain.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '독일'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/icon_rec_flag_germ.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '미국'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/icon_rec_flag_usa.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '칠레'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/icon_rec_flag_chile.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '아르헨티나'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/icon_rec_flag_argentina.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '호주'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/icon_rec_flag_aus.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '남아프리카'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/south-africa.jpg">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '포르투갈'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/portugal.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '뉴질랜드'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/newzealand.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '오스트리아'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/austria.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '캐나다'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/canada.jpg">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '크로아티아'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/croatia.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '조지아'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/georgia.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '불가리아'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/bulgaria.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '슬로베니아'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/slovenia.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '우루과이'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/uruguai.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '그리스'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/greece.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '루마니아'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/rumania.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '이스라엘'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/israel.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '레바논'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/lebanon.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '몰도바'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/moldova.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '일본'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/japan.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '중국'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/china.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '대한민국'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/korea.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '헝가리'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/hungary.png">
												  </c:when>
												  <c:when test="${item.wr_nation_kor eq '영국'}">
												  	<img style="margin-top: 0px;" id="wine_nation_image" src="/resources/asset/images/shop/default/uk.png">
												  </c:when>
												</c:choose>
												<span style="background: #F6EC9C; padding: 9px; margin-bottom:0px">${item.w_type } 와인</span> 
												<div style="display:flex;">
													<p class="price" style="font-size: 13px; margin-left: 7px; font-weight: bold;"
														><ins style="text-decoration: none;"><fmt:formatNumber value="${item.w_price }" pattern="#,###" /></strong>원</ins>
													</p>
												</div>
											</div>
											<!-- <div class="price_area" style="margin-right: 18px; padding-right: 24px;">
												 -->
											<!-- </div> -->
										</div>
									</div>
								</li>
						</c:forEach>
							</ul>
					</div>
				</div>
			</div>
		</div>

		<form id="listFrm" name="listFrm" method="GET"
			action="/shop/product/product_lists">
			<input type="hidden" name="sh_category1_cd" id="sh_category1_cd" value="10000"> 
			<input type="hidden" name="sh_category2_cd" id="sh_category2_cd" value="10100"> 
			<input type="hidden" name="sh_category3_cd" id="sh_category3_cd" value=""> 
			<input type="hidden" name="sh_order_by" id="sh_order_by" value="">
			<input type="hidden" name="sh_sort_order_by" id="sh_sort_order_by" value=""> 
			<input type="hidden" name="sh_filter_code" id="sh_filter_code" value=""> 
			<input type="hidden" name="sh_rcd" id="sh_rcd" value="">
		</form>

		<link rel="stylesheet" type="text/css" href="/resources/asset/css/shop/slick.css">
		<link rel="stylesheet" type="text/css" href="/resources/asset/css/shop/jqcloud.min.css">
		<script type="text/javascript" src="/resources/asset/js/jqcloud.min.js"></script>
		<script type="text/javascript" src="/resources/asset/js/slick.min.js"></script>
		<!-- http://mistic100.github.io/jQCloud/demo.html -->
		<script>
			$(function() {
				$(".pagination > a:first-child, .pagination > a:last-child")
						.css("display", "none"); // << >> 미노출

				var state = '';
				if (state == "5") { // 매장문의(2022-11-28 soldout랑 통합)
					$("#cate_txt").text("EXCLUSIVE");
				} else {
					$("#cate_txt").text("ALL");
				}

				filter_submit();
			});

			function number_format(num) {
				return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			}

			var total_list = '';
			var listFormData = '';

			if (location.hash) {
				var current_location_href = window.location.href;
			} else {
				var current_location_href = window.location.href + '##';
			}

			// 상태탭
			function state_list(state) {
				var form = document.listFrm;
				if (state != "all") {
					$("#sh_order_by").val(state);
				} else {
					$("#sh_order_by").val("");
				}

				if (state == "5") { // 매장문의(2022-11-28 soldout랑 통합)
					$("#cate_txt").text("EXCLUSIVE");
				} else {
					$("#cate_txt").text("ALL");
				}

				form.submit();
			};

			// 갯수
			$(".rcd_cnt").on("click", function() {
				var form = document.listFrm;
				var val = $(this).val();

				$("#sh_rcd").val(val);
				setCookie("row_count_cookie", val, 30);
				form.submit();
			});

			//가격 원화 표시
			function comma(x) {
				return  x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			}

			/************************ 필터 ************************/
			$(function() {
				$("#info_ul li").first().addClass("on"); // 대분류 처음꺼
				$(".js_tabCon").first().addClass("on"); // 중분류 처음꺼
			});

			function filter_submit() {
				var seq = '';
				var html = '';
				$(".filter_item").empty(); // 클릭마다 초기화

				$("#page").val(1);
				$("input[name='item_seq']:checked")
						.each(
								function() {
									// console.log($(this).data('nm'));
									if (seq == "") {
										seq = String($(this).val());
									} else {
										seq = String($(this).val()) + "," + seq;
									}

									html += '<div class="check_select item_chk" id="filtet_btn_'
											+ $(this).val()
											+ '" onclick="DelFilterEvent('
											+ $(this).val() + ');">';
									html += $(this).data('nm');
									html += '<button type="button" class="del" name="del_btn" value="'
											+ $(this).val()
											+ '" onclick="DelFilterEvent('
											+ $(this).val() + ');">삭제</button>';
									html += '</div>';
								});
				html += '<button type="button" class="reset" onclick="all_reset();">초기화</button>';
				$(".filter_item").html(html);

				if ($('.filter_item .check_select').length > 0) {
					$('.filter_item').removeClass('nodata_fiter');
				} else {
					$('.filter_item').addClass('nodata_fiter');
				}

				$("#sh_filter_code").val(seq);

				// console.log($("#sh_filter_code").val());
				if (sessionStorage.getItem("checkFilterList") == seq) {
					// console.log('동일');
					$('.btn_filter').addClass('apply');
				} else {
					// console.log('동일하지않음');
					$('.btn_filter').removeClass('apply');
				}
				DelFilterEvent();

				//필터 레이어 컨텐츠 하위 동적 여백
				if ($(".filter_layer").css("display") == "block") {
					var filterCon = $(".product_lists_page .filter_layer.layer .layer_area .layer_con"), filterConBtm = $(".product_lists_page .filter_layer.layer .layer_area .layer_con .bottom"), filterConHgt = filterConBtm
							.outerHeight();
					filterCon.css({
						"padding-bottom" : filterConHgt
					});
				}
			}

			/**
			 * 필터 조건 삭제 EVENT
			 */
			function DelFilterEvent(val) {
				$("#page").val(1);
				$("button[name='del_btn']").on(
						'click',
						function() {
							var remove_val = val;
							var seq = '';
							$("input:checkbox[name='item_seq']:checked").each(
									function() {
										if ($(this).val() == remove_val) {
											$(this).prop("checked", false);
										}
									});

							$("input:radio[name='item_seq']:checked").each(
									function() {
										if ($(this).val() == remove_val) {
											$(this).prop("checked", false);
										}
									});
							filter_submit()
						});
			};

			// 필터 리셋
			function all_reset() {
				$("#sh_filter_code").val(""); // 검색값
				$("input:checkbox[name='item_seq']").prop("checked", false); // 체크값
				$(".filter_item").empty(); // 체크된값
				$(".filter_item").addClass("nodata_fiter");
				$('.btn_filter').removeClass('apply');

				sessionStorage.setItem("checkFilterList", $("#sh_filter_code")
						.val());
				var form = document.listFrm;
				form.submit();
			}

		</script>
	</section>
	<!-- //contents -->
		
	<script language="javascript">
		$(window)
				.on(
						'load resize',
						function() {
							if ($(window).width() < 1023) {
								var main_scroll_Event = (function() {
									// console.log(1);
									var $body = $("body");
									var $quickMenu = $("#footer .quick_menu");

									function _downEvent() {
										// console.log(2);
										$quickMenu.fadeOut();
									}
									function _upEvent() {
										// console.log(3);
										$quickMenu.fadeIn();
									}

									function _touch_event_binding() {
										var startX = null;
										var startY = null;

										$body
												.bind(
														"touchstart",
														function(e) {
															//console.log("touch start");
															startY = e.originalEvent.touches[0].screenY;
														});

										$body
												.bind(
														"touchend",
														function(e) {
															//console.log("touch end");
															var lastY = e.originalEvent.changedTouches[0].screenY;
															yMove = startY
																	- lastY;

															if (yMove < -50) {
																//console.log('Up');
																_upEvent();
																return false;
															} else if (yMove > 50) {
																//console.log('Down');
																_downEvent();
																return false;
															}
														});
									}

									function _srcoll_event_binding() {
										$body
												.on(
														"mousewheel DOMMouseScroll",
														function(event) {
															var whellDownCheck = event.originalEvent.wheelDelta
																	|| -(event.originalEvent.detail);

															if (whellDownCheck > 0) {
																//console.log('Up');
																_upEvent();
																return false;
															} else if (whellDownCheck < 0) {
																//console.log('Down');
																_downEvent();
																return false;
															}
														});
									}

									_touch_event_binding();
									_srcoll_event_binding();
								})();
							} else {
								$("body").off();
								$("#footer .quick_menu").off();
							}
						});
	</script>

	<script type="text/JavaScript">
		var page = 'product_lists';
		if (page == false) {
			page = 'main';
		}

		if (page !== 'product_view' && page !== 'order_ok') {
			console.log(page);
			/*
				RC_Method({
					sign_up_data: "",
					page_type : page, 
					behavior:"page_view"
				});
			 */
		}
	</script>
<script>
	
//무한스크롤
var startIdx = 1;
var endIdx = 6;

 $('#Allcontents').scroll(function(e) {
	 var elem = $("#Allcontents");
	 if(elem[0].scrollHeight - elem.scrollTop() - 10 <= elem.outerHeight()) {
 	 //scrollbottom이 0이 되면 으로 만들어야 함
     if (document.body.offsetHeight - window.innerHeight == 0) {
   	  //console.log("스크롤 실행되나??");
   	  //console.log( window.scrollY + " " + window.innerHeight + " " + " " + document.body.offsetHeight)
   	  addWineListInfinity();
    	}
 	};
 });
	
	//정렬(order by) 버튼 누를 때
	$(document).ready(function () {
	  $("#js_select").change(function () {
		  startIdx=1;
		  endIdx=6;
		  $('#product_ul').html("");
	      sortedList();
	    //alert($("#js_select").val());
	  });
	});
	
function addWineListInfinity() {
	let val = $("#js_select").val();
	let html = "";
	
	function getNationImg(wine_nation_kor) {
		//wine_nation_kor = $("#wine_nation_kor").text(); 	
			//alert(wine_nation_kor);
			if (wine_nation_kor === "이탈리아") {
				return( '/resources/asset/images/shop/default/icon_rec_flag_italia.png');
			} else if (wine_nation_kor === "프랑스"){
				return( '/resources/asset/images/shop/default/icon_rec_flag_france.png');
			} else if (wine_nation_kor === "스페인"){
				return( '/resources/asset/images/shop/default/icon_rec_flag_spain.png');
			}else if (wine_nation_kor === "독일"){
				return ('/resources/asset/images/shop/default/icon_rec_flag_germ.png');
			}else if (wine_nation_kor === "미국"){
				return( '/resources/asset/images/shop/default/icon_rec_flag_usa.png');
			}else if (wine_nation_kor === "칠레"){
				return( '/resources/asset/images/shop/default/icon_rec_flag_chile.png');
			}else if (wine_nation_kor === "아르헨티나"){
				return( '/resources/asset/images/shop/default/icon_rec_flag_argentina.png');
			}else if (wine_nation_kor === "호주"){
				return( '/resources/asset/images/shop/default/icon_rec_flag_aus.png');
			}else if (wine_nation_kor === "남아프리카"){
				return( '/resources/asset/images/shop/default/south-africa.jpg');
			}else if (wine_nation_kor === "포르투갈"){
				return( '/resources/asset/images/shop/default/portugal.png');
			}else if (wine_nation_kor === "뉴질랜드"){
				return( '/resources/asset/images/shop/default/newzealand.png');
			}else if (wine_nation_kor === "오스트리아"){
				return( '/resources/asset/images/shop/default/austria.png');
			}else if (wine_nation_kor === "캐나다"){
				return( '/resources/asset/images/shop/default/canada.png');
			}else if (wine_nation_kor === "크로아티아"){
				return( '/resources/asset/images/shop/default/croatia.png');
			}else if (wine_nation_kor === "조지아"){
				return( '/resources/asset/images/shop/default/georgia.png');
			}else if (wine_nation_kor === "불가리아"){
				return( '/resources/asset/images/shop/default/bulgaria.png');
			}else if (wine_nation_kor === "슬로베니아"){
				return( '/resources/asset/images/shop/default/slovenia.png');
			}else if (wine_nation_kor === "우루과이"){
				return( '/resources/asset/images/shop/default/uruguai.png');
			}else if (wine_nation_kor === "그리스"){
				return( '/resources/asset/images/shop/default/greece.png');
			}else if (wine_nation_kor === "루마니아"){
				return( '/resources/asset/images/shop/default/rumania.png');
			}else if (wine_nation_kor === "이스라엘"){
				return( '/resources/asset/images/shop/default/israel.png');
			}else if (wine_nation_kor === "레바논"){
				return( '/resources/asset/images/shop/default/lebanon.png');
			}else if (wine_nation_kor === "몰도바"){
				return( '/resources/asset/images/shop/default/moldova.png');
			}else if (wine_nation_kor === "일본"){
				return( '/resources/asset/images/shop/default/japan.png');
			}else if (wine_nation_kor === "중국"){
				return( '/resources/asset/images/shop/default/china.png');
			}else if (wine_nation_kor === "대한민국"){
				return( '/resources/asset/images/shop/default/korea.png');
			}else if (wine_nation_kor === "헝가리"){
				return( '/resources/asset/images/shop/default/hungary.png');
			}else if (wine_nation_kor === "영국"){
				return( '/resources/asset/images/shop/default/uk.png');
			}
		}
	
	$.ajax({
				url : "/product/sortedAdded",
				type : "GET",
				async: false,
				data : {
					"w_price1": w_price1,
					"w_price2": w_price2,
					"w_type": w_type,
					"wr_nation_kor": wr_nation_kor,
					"wv_variety_kor": wv_variety_kor,
					"w_sweetness": w_sweetness,
					"w_acidity": w_acidity,
					"w_body": w_body,
					"w_tannin": w_tannin,
					"sort" : val,
					"startIdx" : startIdx,
					"endIdx" : endIdx
				},
				beforeSend : function(xhr) {
					let header = $("meta[name='_csrf_header']")
							.attr("content");
					let token = $("meta[name='_csrf']").attr(
							"content");
					xhr.setRequestHeader(header, token);
				},
				success : function(data) {
					//alert("성공");
					for (let i = 0; i < data.length; i++) {
						html += "<li>"
						html += "<div class='item'>"
						html += "<div class='main_img'>"
						html += "<a href=/product/item?w_id="
								+ data[i].w_id
								+ " class='prd_img table_box'><picture>"
						html += "<img src='" + data[i].w_img + "'loading='lazy'> </picture></a>"
						html += "<p class='vivino'>평균 평점<em style='color:#bd0808;'> "
								+ data[i].avg_db_rating
								+ " </em></p>"
						html += "<div class='label_wrap'>"
						html += "</div>"
						html += "</div>"
						html += "<div class='info'>"
						html += "<div class='more_info'>"
						html += "<p class='prd_name'>"
						html += "<a href='/product/list/'>"
						html += "<span class='list-wine-name'>" + data[i].w_name_kor
								+ "</span>"
						html += "<span class='en list-wine-name-eng'>"
								+ data[i].w_name + "</span></a>"
						html += "</p>"
						html += "</div>"
						html += "<div class='cate_label' style='display:flex; align-items: center;'>"
						
						html += "<span style='background: #E0D8EA; padding: 9px; display:none;' id='wine_nation_kor'>"
								+ data[i].wr_nation_kor + "</span>"
								
						var flagNation=getNationImg(data[i].wr_nation_kor);
								console.log(flagNation);
						html += "<img style='margin-top: 0px;' id='wine_nation_image' src='"+ flagNation +"'>"
						
						html += "<span style='background: #F6EC9Cl; padding: 9px; margin-bottom:0px;'>"
							+ data[i].w_type + " 와인" + "</span>"
						html += "<p class='price' style='font-size: 13px; margin-left: 7px; font-weight: bold;'>"
						html += "<ins style='text-decoration-line:none;'>"
							+ comma(data[i].w_price)
							+ "원</ins>"
						html += "</p>"
						html += "</div>"
						html += "</div>"
						html += "<div class='price_area' style='text-align: right; font-weight: bold;'>"
						html += "</div>"
						html += "</div>"
						html += "</div>"
						html += "</li>"
					}
						$('#product_ul').append(html);
						startIdx+=6;
						endIdx+=6;
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n"
							+ "message:" + request.responseText
							+ "\n" + "error:" + error);
				}
			});
	}
	
</script>

	<!--lazy_loading-->
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/lozad/dist/lozad.min.js"></script>
	<!--lazy_loading-->
	
	  <script>
      let w_price1 = 0;
      let w_price2 = 800000000;
      let w_type =[];
      let wr_nation_kor =[];
      let wv_variety_kor = [];
      let w_sweetness = -1;
      let w_acidity = -1;
      let w_body = -1;
      let w_tannin = -1;
      
    //필터 초기화 함수
 	   function resetFilter() {
  	 	      //alert("필터 초기화 함수 실행");
  	 	      
  			  startIdx = 0;
  			  endIdx = 10;
 			  w_price1 = 0;
 		      w_price2 = 800000000;
 		      w_type = [];
 		      wr_nation_kor =[];
 		      wv_variety_kor = [];
 		      w_sweetness = -1;
 		      w_acidity = -1;
 		      w_body = -1;
 		      w_tannin = -1;
 		      scroll = 0;
 		      
             $("#fromPrice").val(w_price1);
             $("#toPrice").val(w_price2);
             $(".js-input-from1").val(w_sweetness);
             $(".js-input-from2").val(w_acidity);
             $(".js-input-from3").val(w_body);
             $(".js-input-from4").val(w_tannin);
 		      
 		      let sweetFinal = $(".js-range-slider1").data("ionRangeSlider");
 		      let acidityFinal = $(".js-range-slider2").data("ionRangeSlider");
 		      let tanninFinal = $(".js-range-slider3").data("ionRangeSlider");
 		      let bodyFinal = $(".js-range-slider4").data("ionRangeSlider");
 		   	  let priceFinal = $(".js-range-slider").data("ionRangeSlider");
 		   	  
 		   	  //스타일, 가격 초기화
 		      sweetFinal.reset();
 		      acidityFinal.reset();
 		      tanninFinal.reset();
 		      bodyFinal.reset();
 		      priceFinal.reset();
 		      
 		      //타입 초기화
		      $("#w_type .filter-text").removeClass("checked");
              $('.hi' + $("#w_type").attr('id') ).remove();
		      //국가 초기화
 		      $("#wr_nation_kor .filter-text").removeClass("checked");
              $('.hi' + $("#wr_nation_kor").attr('id') ).remove();
 		  	  //품종 초기화
 		      $("#wv_variety_kor .filter-text").removeClass("checked");
              $('.hi' + $("#wv_variety_kor").attr('id') ).remove();
 		      //당도 초기화
              if($('.hi'+$("#w_sweetness").attr('id')).length){
			        $('.hi'+$("#w_sweetness").attr('id')).remove();
			    }
              //산도 초기화
              if($('.hi'+$("#w_acidity").attr('id')).length){
			        $('.hi'+$("#w_acidity").attr('id')).remove();
			    }
              //탄닌 초기화
              if($('.hi'+$("#w_tannin").attr('id')).length){
			        $('.hi'+$("#w_tannin").attr('id')).remove();
			    }
              //바디감 초기화
              if($('.hi'+$("#w_body").attr('id')).length){
			        $('.hi'+$("#w_body").attr('id')).remove();
			    }
             
             $("#keyword1").html("");
 		      filterApply();
 		      sortedList();
 	   }
     
     $(document).ready(
           function() {
              $("#w_type .filter-text").on("click", function() {
                 
                 //키워드 색깔 바꾸기
                 if($(this).hasClass("checked")){
                    $(this).removeClass("checked");
                    w_type.shift($(this).text());
                    //이미 검색된 필터면 지우기
                    $('.hi' + $(this).attr('id') ).remove();
                    
                 } else {
                    $(this).addClass("checked");
                    w_type.push($(this).text());
                    //필터 검색 결과 페이지에 키워드 출력
                    $("#keyword1").append("<div id='keykey' class='hi"+$(this).attr('id')+"\'>"+$(this).text()+`</div>`);
                 }
                 filterApply();
              })

              $("#wr_nation_kor .filter-text").on("click", function() {
                 
                 if ($(this).hasClass("checked")){
                    $(this).removeClass("checked");
                    wr_nation_kor.shift($(this).text());
                    $('.hi' + $(this).attr('id') ).remove();
                    
                 } else {
                    $(this).addClass("checked");
                    wr_nation_kor.push($(this).text());
                    $("#keyword1").append("<div id='keykey' class='hi"+$(this).attr('id')+"\'>"+$(this).text()+`</div>`);
                 }
                 filterApply();
              })

              $("#wv_variety_kor .filter-text").on("click", function() {
                 
                 if ($(this).hasClass("checked")){
                    $(this).removeClass("checked");
                    wv_variety_kor.shift($(this).text());
                    $('.hi' + $(this).attr('id') ).remove();
                    
                 } else {
                    $(this).addClass("checked");
                    wv_variety_kor.push($(this).text());
                    $("#keyword1").append("<div id='keykey' class='hi"+$(this).attr('id')+"\'>"+$(this).text()+`</div>`);
                 }
                 filterApply();
              })
              
              //당도 넘기기
              $("#w_sweetness").on("click change", function(){
				    if($('.hi'+$(this).attr('id')).length){
				        $('.hi'+$(this).attr('id')).remove();
				    }
                 $("#keyword1").append("<div id='keykey' class='hi"+$(this).attr('id')+"\'>"+ '당도 '+ $(this).val()+`</div>`);
              })
              
              //산도 넘기기
              $("#w_acidity").on("click change", function(){
				    if($('.hi'+$(this).attr('id')).length){
				        $('.hi'+$(this).attr('id')).remove();
				    }
                 $("#keyword1").append("<div id='keykey' class='hi"+$(this).attr('id')+"\'>"+'산도 '+$(this).val()+`</div>`);
              })
           
              //탄닌 넘기기
              $("#w_tannin").on("click change", function(){
				    if($('.hi'+$(this).attr('id')).length){
				        $('.hi'+$(this).attr('id')).remove();
				    }
                 $("#keyword1").append("<div id='keykey' class='hi"+$(this).attr('id')+"\'>"+'탄닌 '+$(this).val()+`</div>`);
              })
              
              //바디감 넘기기
              $("#w_body").on("click change", function(){
				    if($('.hi'+$(this).attr('id')).length){
				        $('.hi'+$(this).attr('id')).remove();
				    }
                 $("#keyword1").append("<div id='keykey' class='hi"+$(this).attr('id')+"\'>"+'바디감 '+$(this).val()+`</div>`);
              })
              
              $("#filterApply").on("click", function() {
                 
                 w_price1 = $("#fromPrice").val();
                 w_price2 = $("#toPrice").val();
                 w_sweetness = $(".js-input-from1").val();
                 w_acidity = $(".js-input-from2").val();
                 w_body = $(".js-input-from3").val();
                 w_tannin = $(".js-input-from4").val();
                 
                 sortedList();
                 $('.filter-keywords').css({'display': 'block'});
                 $('#resetDiv').css({'display': 'flex', 'margin-top': '10px', 'height': '36px' });
                 commonUI.layer.close();
              })
           });
      
             //필터 적용 후 검색 결과 출력 함수
             function filterApply() {
                 //alert("필터 검색 결과 실행!!");
	              w_price1 = $("#fromPrice").val();
	              w_price2 = $("#toPrice").val();
	              w_sweetness = $(".js-input-from1").val();
	              w_acidity = $(".js-input-from2").val();
	              w_body = $(".js-input-from3").val();
	              w_tannin = $(".js-input-from4").val();
                     
                  $.ajax({
	                 url : "/product/filteredCnt",
	                 type : "GET",
	                 data : {
	                   "w_price1": w_price1,
	                   "w_price2": w_price2,
	                   "w_type": w_type,
	                   "wr_nation_kor": wr_nation_kor,
	                   "wv_variety_kor": wv_variety_kor,
	                   "w_sweetness": w_sweetness,
	                   "w_acidity": w_acidity,
	                   "w_body": w_body,
	                   "w_tannin": w_tannin,
	                   "sort": "recent",
	                   "startIdx": 1,
	                   "endIdx": 6
                },
                beforeSend : function(xhr) {
                   let header = $("meta[name='_csrf_header']")
                         .attr("content");
                   let token = $("meta[name='_csrf']").attr(
                         "content");
                   xhr.setRequestHeader(header, token);
                },
                success : function(data) {
              	 //alert("필터 검색 결과 함수 성공!!");
                   //alert(data);
                   $("#filterApply").text(data+"개의 결과 보기");
                   $("#total_count_text").text("총 " + data + " 건");
                   startIdx=1;
                   endIdx=6;
                   $("#product_ul").html("");
                   sortedList();
                },
                error : function(request, status, error) {
                   alert("code:" + request.status + "\n"
                         + "message:" + request.responseText
                         + "\n" + "error:" + error);
                }
       });
          };        
   </script>

</body>
<script>
   $(function() {
      var $range1 = $(".js-range-slider1"), $input1 = $(".js-input-from1");
      $range1.ionRangeSlider({
         skin : "round",
         values: ['선택 안함', 0, 1, 2, 3, 4, 5],
         from : "${wine.db_sweetness}",
         onChange : function(data) {

            if (data.from === 0) {
                  $input1.prop("value", -1);
              } else {
                  $input1.prop("value", data.from-1);
              }
              filterApply();
         }
      });

      var $range2 = $(".js-range-slider2"), $input2 = $(".js-input-from2");
      $range2.ionRangeSlider({
         skin : "round",
         values: ['선택 안함', 0, 1, 2, 3, 4, 5],
         from : "${wine.db_acidity}",
         onChange : function(data) {
            if (data.from === 0) {
                  $input2.prop("value", -1);
              } else {
                  $input2.prop("value", data.from-1);
              }
              filterApply();
         }

      });

      var $range3 = $(".js-range-slider3"), $input3 = $(".js-input-from3");
      $range3.ionRangeSlider({
         skin : "round",
         values: ['선택 안함', 0, 1, 2, 3, 4, 5],
         from : "${wine.db_tannin}",
         onChange : function(data) {
            if (data.from === 0) {
                  $input3.prop("value", -1);
              } else {
                  $input3.prop("value", data.from-1);
              }
              filterApply();
         }
      });

      var $range4 = $(".js-range-slider4"), $input4 = $(".js-input-from4");
      $range4.ionRangeSlider({
         skin : "round",
         values: ['선택 안함', 0, 1, 2, 3, 4, 5],
         from : "${wine.db_body}",
         onChange : function(data) {
             if (data.from === 0) {
                     $input4.prop("value", -1);
                 } else {
                     $input4.prop("value", data.from-1);
                 }
                 filterApply();
         }
      });

      $(".js-range-slider").ionRangeSlider({
         skin : "round",
         type : "double",
         min : 0,
         max :8000000,
         from: 0,
         to: 8000000,
         prettify_separator : ",",
         prettify_enabled : true,
         prefix : "₩",
         step : 1000,
		onStart: function(data){
			$(".js-input-from").val(data.from.toLocaleString() + '원');
			$(".js-input-to").val(data.to.toLocaleString() + '원');
		},
		onUpdate: function(data){
			$(".js-input-from").val(0 + '원');
			$(".js-input-to").val("8,000,000" + '원');
		},
         onFinish : function(data) {
            
            $('#fromPrice').val(data.from);
            $('#toPrice').val(data.to);
            $('.js-input-from').val(data.from.toLocaleString() + '원');
            $('.js-input-to').val(data.to.toLocaleString() + '원');
            
            var fromPrice = data.from.toLocaleString() + '원';
            var toPrice = data.to.toLocaleString() + '원';
            var priceRange = fromPrice + ' ~ ' + toPrice;
            $('#priceRange').text(priceRange);
            $('#priceRange').attr("style", "border: 1px solid; width: auto; border-radius: 20px; background-color: #46675c; color: white; font-size: 1; text-align: center;");
            $('#priceRange').addClass("pricerange");
            
            filterApply();
         }
      });
   });


</script>