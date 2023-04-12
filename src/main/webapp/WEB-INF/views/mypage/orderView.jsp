<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang="ko">

<style>
.swal2-cancel.swal2-styled {
	background-color: #FFFFFF;
	color: #46675c;
	border: 1px solid #46675c;
}

.swal2-styled.swal2-confirm {
	background-color: #46675c;
	border: 1px solid #46675c;
}
</style>

<body>

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
								<dd>3,900 원 (주문 1 건)</dd>
							</dl>
							<div class="g_list_box">
								<ul>
									<li class="tit">회원<br class="mb_hidden">등급
									</li>
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
						<strong class="tit">계정정보</strong>
						<div class="set_con">
							<span>tkalsfk</span>
							<button type="button" class="btn_txt line32"
								onclick="location.href='/shop/auth/logout'">로그아웃</button>
						</div>
						<a href="/shop/mypage/account/change_password"
							class="set_con pw_ch_con"> <span>비밀번호 변경</span>
						</a> <strong class="tit">푸시설정</strong>
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

	<link rel="stylesheet" type="text/css"
		href="/resources/asset/css/shop/slick.css">
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
	<section id="contents">
		<div class="lnb mypage_lnb lnb_wrap">
			<div class="pc_hidden">
				<a href="javascript:history.go(-1);" class="prev">이전</a>
				<div class="select_brand js_select" id="select_brand">
					<button type="button" class="my_value js_selectBtn"
						onclick="$(this).toggleClass('on')">
						<span>주문내역</span>
					</button>
					<ul class="mb_lnb_lists">
						<li><a href="/mypage">마이페이지</a></li>
						<li><a href="/mypage/orderList">픽업내역</a></li>
						<li><a href="/mypage/wineTastingCard">시음권내역</a></li>
						<li><a href="/mypage/tabling">테이블링 내역</a></li>
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
		<script>
			$(".mypage_lnb .common_lnb").remove();

			function myPublic() {
				var follower_yn = $("#follower_yn").val();

				if (follower_yn === 'Y') {
					follower_yn = 'N';
				} else {
					follower_yn = 'Y';
				}

				Csrf.Set(_CSRF_NAME_); //토큰 초기화
				$.ajax({
					type : "POST",
					url : "/shop/mypage/action/proc",
					data : {
						'mode' : "FYN",
						'follower_yn' : follower_yn
					},
					success : function(result) {
						location.reload();
					},
					error : function(a, b, c) {
						alert('변경중 에러가 발생했습니다.');
					}
				});
			}
		</script>
		<div
			class="content mypage shopping order order_ok_page order_view_page">
			<div class="inner">
				<div class="top_info">
					<div class="page_tit">
						<h2 class="tit">주문내역</h2>
					</div>
				</div>

				<div class="top_txt">
					<p>
						주문번호: <em><c:out value="${order.po_id}"></c:out></em> (주문일 :
						<fmt:formatDate value="${order.po_register_date}"
							pattern="yyyy년 MM월 dd일" type="date" />
						)
					</p>
				</div>

				<div class="c_lists">
					<ul>
						<c:forEach items="${order.items}" var="item">
							<li>
								<div class="box ip_img">
									<picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="${item.productDetail.w_img}"
										media="(min-width:768px)">
									<!-- pc이미지 -->
									<source srcset="${item.productDetail.w_img}"
										media="(max-width:767px)">
									<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
										src="${item.productDetail.w_img}" alt=""><!-- pc이미지 -->
									</picture>
								</div>
								<div class="box con">
									<div class="more_info">
										<p class="prd_name">
											<a href="/product/item?w_id=${vo.w_id}"><c:out
													value="${item.productDetail.w_name_kor }"></c:out></a>
										</p>

										<span class="label" style="background: #46675c;padding-top: 5px;padding-bottom: 5px;">생산지 : <c:out
												value="${item.productDetail.wr_nation_kor}"></c:out></span> <span
											class="label" style="background: #46675c;padding-top: 5px;padding-bottom: 5px;">품종 : <c:out
												value="${item.productDetail.wv_variety_kor}"></c:out></span> <span
											class="label" style="background: #46675c;padding-top: 5px;padding-bottom: 5px;">타입 : <c:out
												value="${item.productDetail.w_type}"></c:out></span> <br>
										<div class="box price" style="margin-top: 13px;">
											<ins>
												<fmt:formatNumber
													value="${item.poi_quantity * item.productDetail.w_price}"
													pattern="#,###" />
												원
											</ins>
											<!--del>30,000원</del-->
											<span><c:out value="${item.poi_quantity}"></c:out> 개</span>
										</div>
									</div>
								</div> <!-- 								<div class="box price"> --> <!-- 									<ins> -->
								<%-- 										<fmt:formatNumber --%> <%-- 											value="${item.poi_quantity * item.productDetail.w_price}" --%>
								<%-- 											pattern="#,###" /> --%> <!-- 										원 --> <!-- 									</ins> -->
								<!-- 									del>30,000원</del --> <%-- 									<span><c:out value="${item.poi_quantity}"></c:out> 개</span> --%>
								<!-- 								</div> -->

							</li>
						</c:forEach>
					</ul>
				</div>

				<div class="form_area left">
					<div class="f_top">
						<h2>주문자</h2>
					</div>
					<div class="info_box">
						<dl>
							<dt>주문자명</dt>
							<dd>
								<c:out value="${user.MName}"></c:out>
							</dd>
						</dl>
						<dl>
							<dt>이메일</dt>
							<dd>
								<c:out value="${user.MEmail}"></c:out>
							</dd>
						</dl>
						<dl>
							<dt>연락처</dt>
							<dd id="orderPhone">
								<c:out value="${user.MPhone}"></c:out>
							</dd>
						</dl>
					</div>

					<div class="f_top">
						<h2>받는 사람</h2>
					</div>

					<div class="info_box">
						<dl>
							<dt>픽업자명</dt>
							<dd>
								<c:out value="${order.po_name}"></c:out>
							</dd>
						</dl>
						<dl>
							<dt>연락처</dt>
							<dd id="pickPhone">
								<c:out value="${order.po_phone}"></c:out>
							</dd>
						</dl>

						<!--직접픽업 -->
						<dl>
							<dt>픽업일</dt>
							<dd>
								<fmt:formatDate value="${order.po_booking_date}"
									pattern="yyyy년 MM월 dd일" type="date" />
							</dd>
						</dl>
						<dl>
							<dt>픽업매장</dt>
							<dd>
								<c:out value="${order.store.s_name}"></c:out>
							</dd>
						</dl>
						<!--// 직접픽업 -->

						<!-- 매장방문 -->
						<!--// 택배배송 -->

					</div>
				</div>

				<div class="form_area right">
					<div class="f_top">
						<h2>결제정보</h2>
					</div>
					<div class="t_price_info">
						<dl>
							<dt>총 구매금액</dt>
							<dd>
								<fmt:formatNumber
									value="${order.po_total_price + order.po_mileage}"
									pattern="#,###" />
								원
							</dd>
						</dl>
						<dl>
							<dt>마일리지</dt>
							<dd>
								-
								<fmt:formatNumber value="${order.po_mileage}" pattern="#,###" />
								원
							</dd>
						</dl>
						<dl class="total">
							<dt>최종결제금액</dt>
							<dd>
								<fmt:formatNumber value="${order.po_total_price}"
									pattern="#,###" />
								원
							</dd>
						</dl>


						<dl class="pay">
							<dt>결제수단</dt>
							<dd>
								<c:out value="${order.payment.pm_company}"></c:out>
							</dd>
						</dl>
					</div>
				</div>
				<div class="btn_area col3"
					style="display: flex; justify-content: center;">
					<c:if test="${order.po_status == 1}">
						<button type="button" class="btn_txt btn_dgray" id="orderCancel" style="margin-left: 0px;">
							<span>픽업취소</span>
						</button>
					</c:if>
					<c:if test="${order.po_status == 3}">
						<input type="hidden" name="pickup" value="${order.po_id}">
						<button type="button" class="btn_txt btn_dgray" id="pickupQR" style="margin-left: 8.500px;">
							<span>픽업QR코드</span>
						</button>
					</c:if>
					<button type="button" class="btn_txt" onclick="history.back();" style="margin-left: 8.500px;">
						<span>주문목록</span>
					</button>
					<!-- <button type="button" class="btn_txt btn_black" onclick="printReceipt('70', '23689274400807');"><span>영수증출력</span></button> -->
				</div>
			</div>
		</div>


		<!-- page_script -->
		<script>
			function cancelSubmit(ocode, otype_cd) {
				if (otype_cd == '10') {
					alert("1:1문의에 문의바랍니다");
					location.href = '/shop/cs/qna_write';
				} else {
					if (confirm("주문을 취소 하시겠습니까?")) {
						Csrf.Set(_CSRF_NAME_); //토큰 초기화
						$.ajax({
							type : "POST",
							url : "cancel_proc_ajax?ajax_mode=ORDER_CANCEL",
							dataType : 'json',
							async : false,
							data : {
								"ocode" : ocode,
								"part_yn" : "N"
							},
							success : function(res) {
								alert(res.msg);
								if ($.trim(res.status) == "ok") {
									location.reload();
								}
								return;
							},
							error : function(res) {
								alert(res.responseText);
							}
						});
					}
				}
			}

			function printReceipt(otype, tno) {
				var url = "";
				var ocode = "202302281677187VHW";
				var amount = "3900";

				if (otype == '10') { //가상계좌
					url = "https://admin8.kcp.co.kr/assist/bill.BillActionNew.do?cmd=vcnt_bill&tno="
							+ tno
							+ "&order_no="
							+ ocode
							+ "&trade_mony="
							+ amount;
				} else if (otype == '20') {//카드결제
					url = "https://admin8.kcp.co.kr/assist/bill.BillActionNew.do?cmd=card_bill&tno="
							+ tno
							+ "&order_no="
							+ ocode
							+ "&trade_mony="
							+ amount;
				} else if (otype == '30') {//계좌이체
					url = "https://admin8.kcp.co.kr/assist/bill.BillActionNew.do?cmd=acnt_bill&tno="
							+ tno
							+ "&order_no="
							+ ocode
							+ "&trade_mony="
							+ amount;
				} else if (otype == '40') {//휴대폰결제
					url = "https://admin8.kcp.co.kr/assist/bill.BillActionNew.do?cmd=mcash_bill&tno="
							+ tno
							+ "&order_no="
							+ ocode
							+ "&trade_mony="
							+ amount;
				}

				if (url != '') {
					console.log(url);
					Common
							.openWindowPop(url, '영수증출력',
									'scrollbars=yes,resizable=yes,width=470,height=815');
				} else {
					alert("오류가 발생했습니다.");
				}

			}
		</script>
		<!-- //page_script -->
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
		var page = 'order_view';
		if (page == false) {
			page = 'main';
		}

		if (page !== 'product_view' && page !== 'order_ok') {
			console.log(page);
			/*
				RC_Method({
					sign_up_data: "2023-02-28 14:36:32",
					page_type : page, 
					behavior:"page_view"
				});
			 */
		}
	</script>
	<!--백로그 API-->

	<!--lazy_loading-->
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/lozad/dist/lozad.min.js"></script>
	<script>
		const observer = lozad();
		observer.observe();
	</script>
	<!--lazy_loading-->
	<script type="text/javascript">
	let csrfHeaderName = "${_csrf.headerName}";
	let csrfTokenValue = "${_csrf.token}";
	$().ready(function () {
		
		let orderPhone = "${user.MPhone}";
		let formattedNumber1 = orderPhone.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
		$('#orderPhone').text(formattedNumber1);
		
		let pickPhone = "${order.po_phone}";
		let formattedNumber2 = pickPhone.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
		$('#pickPhone').text(formattedNumber2);
		
		let po_id = "${order.po_id}";
    	let po_mileage = ${order.po_mileage};
    	let po_name = "${order.po_name}";
    	console.log(po_id);
    	console.log(po_mileage);
	    $("#orderCancel").click(function () {
	        
	    	let url = '/order/orderCancel';
	    	console.log(url);
	    	Swal.fire({
	            title: '주문을 취소하시겠습니까 ?',
	            icon: 'question',
	            showCancelButton: true,
	            confirmButtonColor: '#46675c',
	            confirmButtonText: '확인',
	            cancelButtonText: '취소',
	            reverseButtons: true
	        }).then((result) => {
	            if (result.isConfirmed) {
	                Swal.fire(
	                    '정상적으로 취소되었습니다.',
	                    '',
	                    'success'
	                );
	                console.log("주문 취소");
	                $.ajax({
	                	type : 'post',
	                	url : url,
	                	beforeSend : function(xhr) {
							xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
						},
						data : JSON.stringify({
							po_id : po_id,
							po_mileage : po_mileage
						}),
	                	contentType : "application/json",
	                	success : function() {
							console.log("주문 취소함");
							let dto = {
								pickupId : po_id,
								pickupName : po_name,
								to : orderPhone,
								status : true,
								result : "주문취소문자전송",
								orderStatus : 2
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
							document.location.reload();
						},
						error : function(e) {
							console.log(e);
						}
	                });
	                
	            }
	        })
	    });
	    let qrUrl = '/admin/order/confirm?po_id=' + po_id;
	    console.log(qrUrl);
	    $("#pickupQR").on("click", function() {
	    	console.log("픽업 QR 코드");
			imgAlert();
	    });
	    
	    function imgAlert(){
	    	  Swal.fire({
			  title : '와인 픽업 QR 코드',	    		  
	    	  text: 'QR코드를 직원에게 보여주세요.',
	    	  imageUrl: '/qr?url='+qrUrl,
	    	  imageWidth: 200,
	    	  imageHeight: 200,
	    	  imageAlt: 'Custom image',
	    	  cofirmButtonColor: '#46675c'
	    	})
	    	}
	    
	});
</script>
</body>

</html>