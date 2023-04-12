<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">

<body>

	<style>
	.wrap .logo{
	    padding-top: 16px;
	}
.recent-mypage-po-ta {
	padding: 30px 20px 20px 20px;
	background: #fff;
	border-radius: 10px;
	filter: drop-shadow(0px 0px 6px rgba(0, 0, 0, 0.15));
	backdrop-filter: blur(6px);
	position: relative;
}

.logo {
	display: block !important;
}

.badge {
	background: #46675c;
	border-color: #46675c;
	color: white;
	border: 1px solid #d5d5d5;
	box-sizing: border-box;
	border-radius: 20px;
	font-size: 12px;
	padding: 4px 8px;
	font-weight: 500;
	height: 24px;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	margin: 0 0 0.5em 0;
}
</style>

	<!-- 와인 프로파일 레이어 -->
	<!-- /shop/mypage/shopping/wine_profile_ajax.php LOAD -->
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
				<!--  <a href="javascript:history.go(-1);" class="prev">이전</a>-->
				<div class="select_brand js_select" id="select_brand">
					<button type="button" class="my_value js_selectBtn"
						onclick="$(this).toggleClass('on')">
						<span>마이페이지</span>
					</button>
					<ul class="mb_lnb_lists">
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
							<li><a href="/shop/mypage/shopping/order_lists">주문내역</a></li>
							<li><a href="/shop/mypage/shopping/return_order_lists">교환/반품내역</a></li>
							<li><a href="/shop/mypage/note/wish_lists">위시리스트</a></li>
							<li><a href="/shop/cart/cart_lists">장바구니</a></li>
						</ul></li>
					<li><a href="#none">쇼핑수첩</a>
						<ul class="depth_02">
							<li><a href="/shop/mypage/note/giftcard_lists">나의 기프트카드</a></li>
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
		<div class="content mypage shopping mypage_page">
			<div class="inner">
				<div class="mypage_top">
					<div class="grade_area">
						<div class="grade_info g100">
							<!-- 등급을 grade_info 옆에 붙여주세요 -->
							<img src=<sec:authentication property="principal.mprofilImg" />
								style="vertical-align: middle; border-radius: 50%;" />
						</div>
						<div class="user_info">
							<div class="name">
								<strong><b><sec:authentication
											property="principal.mnickname" /></b>님</strong> <span><sec:authentication
										property="principal.username" /></span>

							</div>

							<div class="grade_order_price_sum"
								style="display: flex; flex-direction: row; align-items: center; margin-top: -13px;">
								<div class="grade">
									<c:set var="mgrade">
										<sec:authentication property="principal.mgrade" />
									</c:set>
									<c:if test="${mgrade == 0}">
										<span class="silver">일반</span>
									</c:if>
									<c:if test="${mgrade == 1}">
										<span class="tritiny">H-믈리</span>
									</c:if>
								</div>
								<div style="margin-top: 13px;">
									<span>누적 구매금액 <b>0원</b></span>
								</div>
							</div>
						</div>
						<button type="button" class="wine_profile"
							onclick="location.href='/decanting/bookList'">
							<em>나의 디캔팅 북 +</em>
						</button>
					</div>
					<div class="mypage_info">
						<ul>
							<li><a href="/mypage/wineTastingCard">
									<p>테이스팅 카드</p> <span>${info.tastingCardCnt}개</span>
							</a></li>
							<li><a href="#">
									<p>마일리지</p> <span><fmt:formatNumber
											value="${info.mileage}" pattern="#,###" />점</span>
							</a></li>
							<li><a href="/mypage/orderList">
									<p>최근 픽업</p> <span>${info.pickupCnt}건</span>
							</a></li>
						</ul>
						<ul>
							<li><a href="/mypage/tabling">
									<p>최근 테이블링</p> <span>${info.tablingCnt}건</span>
							</a></li>
							<li><a href="/shop/mypage/action/tasting_lists">
									<p>작성한 디켄팅북</p> <span>${info.decantingBookCnt}권</span>
							</a></li>
							<li><a href="/shop/mypage/note/wish_lists">
									<p>팔로우한 H-믈리</p> <span class="">${info.followhCnt}명</span>
							</a></li>
						</ul>
					</div>
				</div>
				<ul class="slide_area slick-initialized slick-slider">
					<div aria-live="polite" class="slick-list draggable">
						<div class="slick-track" role="listbox"
							style="opacity: 1; width: 0px; transform: translate3d(0px, 0px, 0px);"></div>
					</div>
				</ul>
				<div class="newest_order" style="margin-top: 0px;padding-top: 15px;">
					<c:if test="${info.pickupSoon}">
						<p class="tit">최근 픽업 예약 건</p>
						<ul class="recent-mypage-po-ta">
							<c:forEach items="${info.pickup}" var="vo">
							<li>
								<div class="img" style="display: flex;justify-content: center;">
									<img src="${vo.w_img}" style="height: 100px;"/>
								</div>
								<div class="wine_info">
									<c:if test="${vo.s_code eq 'scode1'}">
										<span class="store">와인웍스 더현대 서울</span>
									</c:if>
									<c:if test="${vo.s_code eq 'scode2'}">
										<span class="store">와인웍스 더현대 대구</span>
									</c:if>
									<p class="state pickup">방문예정</p>
									<strong></strong>픽업 예정 날짜 : <fmt:formatDate value="${vo.po_booking_date}" pattern="yyyy년 MM월 dd일" type="date" />
									<br><br>
									주문금액 : <fmt:formatNumber value="${vo.po_total_price}" pattern="#,###" />
								</div>
								<div class="btn_area">
									<button type="button" class="btn_txt btn_black" id="pickupQR">QR코드
										확인</button>
								</div>
							</li>
							</c:forEach>	
						</ul>
					</c:if>
					<c:if test="${!info.pickupSoon }">
						<p class="tit">최근 주문한 상품</p>
						<ul class="recent-mypage-po-ta">
							<c:forEach items="${info.pickup}" var="vo">
							<li>
								<div class="img" style="display: flex;justify-content: center;">
									<img src="${vo.w_img}" style="height: 100px;"/>
								</div>
								<div class="wine_info">
									<c:if test="${vo.s_code eq 'scode1'}">
										<span class="store">와인웍스 더현대 서울</span>
									</c:if>
									<c:if test="${vo.s_code eq 'scode2'}">
										<span class="store">와인웍스 더현대 대구</span>
									</c:if>
									<p class="state pickup">방문완료</p>
									<strong></strong>픽업 완료 날짜 : <fmt:formatDate value="${vo.po_visited_date}" pattern="yyyy년 MM월 dd일" type="date" />
									<br><br>
									주문금액 : <fmt:formatNumber value="${vo.po_total_price}" pattern="#,###" /> 원
								</div>
								<div class="btn_area">
									<button type="button" class="btn_txt btn_black" onclick="location.href='/mypage/orderList'">QR코드
										확인</button>
								</div>
							</li>
							</c:forEach>	
						</ul>
					</c:if>
				</div>

				<div class="newest_order" style="margin-top: 0px;padding-top: 15px;">
					<c:if test="${info.tablingSoon}">
						<p class="tit">입장 가능한 와인웍스 예약</p>
						<ul class="recent-mypage-po-ta">
							<li>
								<div class="img">
									<img src="${info.tabling.simgUrl}" />
								</div>
								<div class="wine_info">
									<span class="store">${info.tabling.sname}</span>
									<p class="state pickup">
										<c:if test="${info.tabling.rstatus eq 2}">방문완료</c:if>
										<c:if test="${info.tabling.rstatus eq 1}">방문예정</c:if>
									</p>
									<strong></strong>${info.tabling.rdate} ${info.tabling.rtime}
									${info.tabling.rheadCnt}명
								</div>
								<div class="btn_area">
									<button type="button" class="btn_txt btn_black qrcode" >QR코드
										확인</button>
								</div>
							</li>
						</ul>
					</c:if>
					<c:if test="${!info.tablingSoon }">
						<p class="tit">최근 와인웍스 예약</p>
						<ul class="recent-mypage-po-ta">
							<li>
								<div class="img">
									<img src="${info.tabling.simgUrl}" />
								</div>
								<div class="wine_info">
									<p class="badge">
										<c:if test="${info.tabling.rstatus eq 2}">방문완료</c:if>
										<c:if test="${info.tabling.rstatus eq 1}">방문예정</c:if>
									</p>
									<div class="store">${info.tabling.sname}</div>
									<strong></strong>${info.tabling.rdate} ${info.tabling.rtime}
									${info.tabling.rheadCnt}명
								</div>
								<div class="btn_area">
									<button type="button" class="btn_txt btn_black"
										onclick="location.href='/mypage/tabling'">예약내역 조회하기</button>
								</div>
							</li>
						</ul>
					</c:if>
				</div>
			</div>
		</div>

		<script>
			//qr
			$(document).on("click", "#pickupQR", function() {
				let domain = "http://192.168.0.28";
				let url = "/admin/order/confirm?po_id=";
				let po_id = ${info.pickup[0].po_id};
				let qrUrl = domain + url + po_id;
				console.log("픽업 QR 코드", qrUrl);
				imgAlertPickup(qrUrl);
			});
			
			function imgAlertPickup(qrUrl) {
				Swal.fire({
					title : '와인 픽업 QR코드',
					text : 'QR코드를 직원에게 보여주세요.',
					imageUrl : '/qr?url=' + qrUrl,
					imageWidth : 200,
					imageHeight : 200,
					imageAlt : '테이블링 qr코드',
					cofirmButtonColor : '#46675c'
				});
			}
			
			
			$(document).on("click", "button.qrcode", function() {
				let domain = "http://192.168.0.28";
				let url = "/admin/tabling/confirm?rid=";
				let rid = window.btoa($('button.qrcode').val());
				let qrUrl = domain + url + rid;
				console.log("픽업 QR 코드", qrUrl);
				imgAlert(qrUrl);
			});

			function imgAlert(qrUrl) {
				Swal.fire({
					title : '와인웍스 테이블링',
					text : 'QR코드를 직원에게 보여주세요.',
					imageUrl : '/qr?url=' + qrUrl,
					imageWidth : 200,
					imageHeight : 200,
					imageAlt : '테이블링 qr코드',
					cofirmButtonColor : '#46675c'
				});
			}
		</script>

		<link rel="stylesheet" type="text/css"
			href="/resources/asset/css/shop/main.css">
		<link rel="stylesheet" type="text/css"
			href="/resources/asset/css/shop/slick.css">
		<script type="text/javascript" src="/resources/asset/js/slick.min.js"></script>
		<!-- page_script -->
		<script>
			//배너 슬라이드
			$('.slide_area').slick({
				dots : true,
				arrows : true,
				// autoplay: true,
				// autoplaySpeed: 1500,
				responsive : [ {
					breakpoint : 767,
					settings : {
						dots : true,
						arrows : false,
					// autoplay: true,
					// autoplaySpeed: 1500,
					}
				} ]
			});

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
		var page = 'mypage';
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
</body>

</html>