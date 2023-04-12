<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<html lang="ko">

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
						<span>픽업내역</span>
					</button>
					<ul class="mb_lnb_lists">
						<li><a href="/mypage">마이페이지</a></li>
						<li><a href="/mypage/wineTastingCard">시음권내역</a></li>
						<li><a href="/mypage/tabling">테이블링 내역</a></li>
						<li><a href="/decanting/bookList">나의 디켄팅북</a></li>
						<li><a href="/decanting/followList">나의 H-믈리</a></li>
					</ul>
				</div>
			</div>


			<!-- <div class="mb_hidden">
        <div class="my_lnb_info">
            <div class="my">
                <img src="/resources/asset/images/shop/default/ico_user_vip.png" alt="">
                <div class="txt">
                    <p><strong class="name">차민수</strong>님 안녕하세요!</p>
                    <button type="button" class="btn_txt btn_grade" onclick="commonUI.layer.open('grade_layer')">등급현황</button>
                </div>
            </div>
            <div class="my_info">
                <a href="/shop/mypage/shopping/order_lists"><span class="new">N</span><p class="info order_info"><em>주문내역</em>1</p></a>
                <a href="/shop/mypage/note/coupon_lists"><span class="new">N</span><p class="info coupon_info"><em>쿠폰</em>1</p></a>
                <a href="/shop/mypage/note/mileage_lists"><span class="new">N</span><p class="info cash_info"><em>마일리지</em>0</p></a>
                <a href="/shop/mypage/note/giftcard_lists"><span class="new">N</span><p class="info gift_info"><em>기프트카드</em>10,000</p></a>
            </div>
        </div>
    </div> -->
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
		<div class="container gutter-sm" style="margin: 15px;">
					<div class="tag-radio-group mt--10" style="margin-top: 15px;">
						<label><input type="radio" name="type" value="paymentDone" checked=""><span class="label">결제완료</span></label>
						<label><input type="radio" name="type" value="productDone"><span class="label">상품준비완료</span></label>
						<label><input type="radio" name="type" value="pickupDone"><span class="label">픽업완료</span></label>
						<label><input type="radio" name="type" value="cancel"><span class="label">픽업취소</span></label>
					</div>
		</div>
		<div class="content mypage shopping order_lists_page" style="padding-top: 10px;">
			
			<div class="inner">
				<div class="o_lists">
					<ul class="orderList">
					</ul>
				</div>
			</div>
			<!-- 교환반품신청 -->
			<!-- 상품 개별 선택이 안되는데 이부분 다시 협의 필요-->
			<form
				action="https://www.winenara.com/shop/mypage/shopping/order_lists"
				id="refundForm" name="refundForm" method="post"
				accept-charset="utf-8">
				<input type="hidden" name="witplus_csrf_token"
					value="969b400351ff018c54c63818b4c36bd7"> <input
					type="hidden" id="ocode" name="ocode" value=""> <input
					type="hidden" id="product_ocode" name="product_ocode" value="">
				<div class="layer return_order_layer">
					<div class="display_table">
						<div class="table_cell">
							<div class="layer_area">
								<button type="button" class="layer_close"
									onclick="commonUI.layer.close()">
									<span>Layer Close</span>
								</button>
								<div class="layer_tit">교환/반품 신청</div>
								<div class="layer_con">
									<ul class="o_lists refund_product_info">
									</ul>
									<div class="form_area">
										<!-- <div class="l_tit">
                                    <label for="return_select"></label>
                                </div> -->
										<ul>
											<li>
												<div class="form_box">
													<div class="return_select_box">
														<div class="box exchange">
															<input type="radio" name="refund_gb" id="exchange_box"
																value="10" checked=""> <label for="exchange_box">교환신청</label>
														</div>
														<div class="box return">
															<input type="radio" name="refund_gb" id="return_box"
																value="20"> <label for="return_box">반품신청</label>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="l_tit">
													<label for="">사유</label>
												</div>
												<div class="form_box">
													<select name="refund_gb_msg" id="refund_gb_msg">
														<option>교환/반품 사유를 선택해주세요</option>
														<option value="1201">사유1</option>
														<option value="1202">사유2</option>
														<option value="1203">사유3</option>
													</select>
												</div>
											</li>
											<li>
												<div class="l_tit">
													<label for="input_default">내용</label>
												</div>
												<div class="form_box">
													<textarea id="content" name="content"
														placeholder="내용을 입력해주세요."></textarea>
													<!-- <p class="input_info_txt">안내메시지 텍스트</p> -->
												</div>
											</li>
										</ul>
									</div>
									<div class="btn_area">
										<button type="button" onclick="refundSubmit();"
											class="btn_txt btn_black">
											<span>신청하기</span>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
			<!-- //교환반품신청 -->
			<!-- 전체취소 -->
			<form
				action="https://www.winenara.com/shop/mypage/shopping/order_lists"
				id="cancelForm" name="cancelForm" method="post"
				accept-charset="utf-8">
				<input type="hidden" name="witplus_csrf_token"
					value="969b400351ff018c54c63818b4c36bd7"> <input
					type="hidden" id="ocode" name="ocode" value=""> <input
					type="hidden" id="product_ocode" name="product_ocode" value="">
				<input type="hidden" id="part_yn" name="part_yn" value="">

				<div class="layer cancel_all_layer">
					<div class="display_table">
						<div class="table_cell">
							<div class="layer_area">
								<button type="button" class="layer_close"
									onclick="commonUI.layer.close()">
									<span>Layer Close</span>
								</button>
								<div class="layer_tit">전체취소</div>
								<div class="layer_con">
									<span class="order_num">주문번호: <em id="cancel_ocode_text"></em></span>
									<ul class="o_lists cancel_product_info">

									</ul>
									<div class="form_area">
										<ul>
											<li>
												<div class="l_tit">
													<label for="">환불수취 은행</label>
												</div>
												<div class="form_box">
													<select name="vart_refund_bank_cd" id="vart_refund_bank_cd">
														<option value="" selected="">선택</option>
														<option value="BK39">경남은행</option>
														<option value="BK34">광주은행</option>
														<option value="BK04">국민은행</option>
														<option value="BK03">기업은행</option>
														<option value="BK11">농협</option>
														<option value="BK31">대구은행</option>
														<option value="BK32">부산은행</option>
														<option value="BK45">새마을금고</option>
														<option value="BK07">수협</option>
														<option value="BK88">신한은행</option>
														<option value="BK48">신협</option>
														<option value="BK05">외환은행</option>
														<option value="BK20">우리은행</option>
														<option value="BK71">우체국</option>
														<option value="BK35">제주은행</option>
														<option value="BK81">하나은행</option>
														<option value="BK27">한국시티은행</option>
														<option value="BK54">HSBC</option>
														<option value="BK23">SC제일은행</option>
														<option value="BK02">산업은행</option>
														<option value="BK37">전북은행</option>
														<option value="BK90">카카오뱅크</option>
													</select>
												</div>
											</li>
											<li>
												<div class="l_tit">
													<label for="vact_refund_account">환불수취 계좌번호</label>
												</div>
												<div class="form_box">
													<input type="text" id="vact_refund_account"
														name="vact_refund_account" placeholder="계좌번호를 입력해주세요"
														size="23" maxlength="50">
												</div>
											</li>
											<li>
												<div class="l_tit">
													<label for="vart_refund_depositor">환불수취 예금주명</label>
												</div>
												<div class="form_box">
													<input type="text" id="vart_refund_depositor"
														name="vart_refund_depositor" placeholder="예금주명을 입력해주세요"
														size="23" maxlength="50">
												</div>
											</li>
										</ul>
									</div>
									<div class="btn_area">
										<button type="button" onclick="vactCancelSubmit();"
											class="btn_txt btn_black">
											<span>신청하기</span>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
			<!-- //전체취소 -->
			<!-- 현금영수증 신청 -->
			<!-- <div class="layer cash_receipt_layer">
            <div class="display_table">
                <div class="table_cell">
                    <div class="layer_area">
                        <button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
                        <div class="layer_tit">현금영수증 신청</div>
                        <div class="layer_con">
                            <div class="form_area">
                                <ul>
                                    <li>
                                        <div class="l_tit">
                                            <label for="">종류</label>
                                        </div>
                                        <div class="form_box">
                                            <select name="refund_bank" id="refund_bank">
                                                <option>종류를 선택해주세요</option>
                                            </select>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="l_tit">
                                            <label for="bank_account_num">발급번호</label>
                                        </div>
                                        <div class="form_box">
                                            <input type="text" id="bank_account_num" placeholder="휴대폰번호,주민등록번호,사업자등록번호,현금영수증 카드번호">
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="btn_area">
                                <button type="button" onclick="" class="btn_txt btn_black"><span>신청하기</span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
			<!-- //현금영수증 신청 -->
		</div>


		<!-- page_script -->
		<script>
			$(".o_lists .o_wrap").each(function(index, item) {
				//버튼 정렬
				var btnLeng = $(item).find(".btn_area").children().length;
				if (btnLeng == 2) {
					$(item).find(".btn_area").addClass("col2");
				} else if (btnLeng == 3) {
					$(item).find(".btn_area").addClass("col2");
					$(item).find(".btn_area .btn_txt:nth-child(2)").css({
						"margin-right" : "0"
					});
					$(item).find(".btn_area .btn_txt:last-child").css({
						"width" : "100%",
						"margin-top" : "10px"
					});
				} else if (btnLeng == 4) {
					$(item).find(".btn_area").addClass("col3");
					$(item).find(".btn_area .btn_txt:nth-child(3)").css({
						"margin-right" : "0"
					});
					$(item).find(".btn_area .btn_txt:last-child").css({
						"width" : "100%",
						"margin-top" : "10px"
					});
				}

				//프로그레스바 상태 별 class 추가
				// var itemVal = $(item).find(".fill").attr("value");
				// if(itemVal == "0"){
				//     $(item).find(".txt").addClass("step01");
				// }else if(itemVal == "35"){
				//     $(item).find(".txt").addClass("step02");
				// }else if(itemVal == "67"){
				//     $(item).find(".txt").addClass("step03");
				// }else if(itemVal == "100"){
				//     $(item).find(".txt").addClass("step04");
				// }
			});

			//프로그레스 바
			$(".progressbar .fill").each(function(index, item) {
				var fillVal = $(this).attr("value");

				if (fillVal == "0") {
					$(this).css({
						"width" : "10px",
						"height" : "10px"
					})
				} else {
					var fill = fillVal + "%";
					console.log(fill);

					$(this).stop().animate({
						width : fill
					}, 1000);
				}
			});

			function shSubmit() {
				var form = document.searchFrm;
				form.submit();
			}

			/**
			 * 교환/반품
			 * @param  {[type]} ocode         [description]
			 * @param  {[type]} product_ocode [description]
			 * @return {[type]}               [description]
			 */
			function open_refund_layer(ocode, product_ocode) {
				document.refundForm.ocode.value = ocode;
				document.refundForm.product_ocode.value = product_ocode;

				Csrf.Set(_CSRF_NAME_); //토큰 초기화
				$.ajax({
					type : "POST",
					url : "refund_product_ajax",
					dataType : 'text',
					data : {
						"ocode" : ocode,
						"product_ocode" : product_ocode
					},
					success : function(res) {
						$(".refund_product_info").html(res);
						commonUI.layer.open('return_order_layer', {
							bg : true,
							alert : true
						});
					},
					error : function(res) {
						alert(res.responseText);
					}
				});

			}

			/**
			 * 가상계좌 주문 취소
			 * @param  {[type]} ocode         [description]
			 * @param  {[type]} product_ocode [description]
			 * @return {[type]}               [description]
			 */
			function open_cancel_layer(ocode, product_ocode) {

				document.cancelForm.ocode.value = ocode;
				document.cancelForm.product_ocode.value = product_ocode;

				$("#cancel_ocode_text").text(ocode);

				Csrf.Set(_CSRF_NAME_); //토큰 초기화
				$.ajax({
					type : "POST",
					url : "cancel_product_ajax",
					dataType : 'text',
					data : {
						"ocode" : ocode,
						"product_ocode" : product_ocode
					},
					success : function(res) {
						$(".cancel_product_info").html(res);
						commonUI.layer.open('cancel_all_layer', {
							bg : true,
							alert : true
						});
					},
					error : function(res) {
						alert(res.responseText);
					}
				});

			}

			function vactCancelSubmit() {
				var ocode = document.cancelForm.ocode.value;
				var product_ocode = document.cancelForm.product_ocode.value;
				var part_yn = document.cancelForm.part_yn.value;

				if ($("#vart_refund_bank_cd").val() == '') {
					alert("환불수취 은행을 입력해주세요.");
					return;
				}

				if ($.trim($("#vact_refund_account").val()) == '') {
					alert("환불수취 계좌번호를 입력해주세요.");
					return;
				}

				if ($.trim($("#vart_refund_depositor").val()) == '') {
					alert("환불수취 예금주명을 입력해주세요.");
					return;
				}

				if (part_yn == 'N') {
					part_yn_val = "전체";
				} else {
					part_yn_val = "부분";
				}

				if (confirm("주문을 " + part_yn_val + "취소 하시겠습니까?")) {
					Csrf.Set(_CSRF_NAME_); //토큰 초기화
					$.ajax({
						type : "POST",
						url : "cancel_proc_ajax?ajax_mode=ORDER_CANCEL",
						dataType : 'json',
						async : false,
						data : $("#cancelForm").serialize(),
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

			function cancelSubmit(ocode, product_ocode, order_cnt, otype_cd,
					product_order_state_cd) {

				if (parseInt(order_cnt) > 1) {
					var part_yn = 'Y';
					var part_yn_val = "부분";
				} else {
					var part_yn = 'N';
					var part_yn_val = "전체";
				}

				//가상계좌 취소
				if (otype_cd == '10' && product_order_state_cd != '10') {
					document.cancelForm.part_yn.value = part_yn;

					open_cancel_layer(ocode, product_ocode);
				} else {

					if (confirm("주문을 " + part_yn_val + "취소 하시겠습니까?")) {
						Csrf.Set(_CSRF_NAME_); //토큰 초기화
						$.ajax({
							type : "POST",
							url : "cancel_proc_ajax?ajax_mode=ORDER_CANCEL",
							dataType : 'json',
							async : false,
							data : {
								"ocode" : ocode,
								"product_ocode" : product_ocode,
								"part_yn" : part_yn
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

			function refundSubmit() {

				if (!$("#refund_gb_msg").val()) {
					alert("사유를 선택해 주세요.");
					$("#refund_gb_msg").focus();
					return;
				}

				Csrf.Set(_CSRF_NAME_); //토큰 초기화
				$.ajax({
					type : "POST",
					url : "order_proc_ajax?ajax_mode=REFUND_WRITE",
					dataType : 'json',
					async : false,
					data : $("#refundForm").serialize(),
					success : function(res) {
						alert(res.msg);
						if ($.trim(res.status) == "ok") {
							location.reload();
							return;
						}
					},
					error : function(res) {
						alert(res.responseText);
					}
				});
			}

			function printReceipt(ocode, otype, tno, amount) {
				var url = "";

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
	<script type="text/javascript">
		$.datepicker.setDefaults({
			prevText : '이전 달',
			nextText : '다음 달',
			monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
			showMonthAfterYear : true,
			yearSuffix : '년'
		});

		//datepicker
		$(".datepicker input").datepicker({
			dateFormat : "yy-mm-dd",
			showOn : "both",
			buttonText : "선택"
		});
	</script>
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
		var page = 'order_lists';
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
	</script>
	<!--lazy_loading-->
	<script type="text/javascript">
		$(document).ready(function(){
			
			orderInfoAjax(1);
			
			const radioButtons = document.querySelectorAll('input[type="radio"]');
			radioButtons.forEach(radioButton => {
		        radioButton.addEventListener('change', event => {
		          if (event.target.checked) {
		            const selectedValue = event.target.value;
		            let po_status;
		            if (selectedValue === 'paymentDone') {
		            	po_status = 1;
						orderInfoAjax(po_status);
		            } else if (selectedValue === 'productDone') {
		            	po_status = 3;
						orderInfoAjax(po_status);
		            } else if (selectedValue === 'pickupDone') {
		            	po_status = 4;
						orderInfoAjax(po_status);
		            } else {
		            	po_status = 2;
						orderInfoAjax(po_status);
		            }
		          }
		        });
		     });
		});
		
		function progressbarAni() {
			$(".progressbar .fill").each(function(index, item) {
				var fillVal = $(this).attr("value");

				if (fillVal == "0") {
					$(this).css({
						"width" : "10px",
						"height" : "10px"
					})
				} else {
					var fill = fillVal + "%";
					console.log(fill);

					$(this).stop().animate({
						width : fill
					}, 1000);
				}
			});			
		}
		
		
		function orderInfoAjax(po_status) {
			$.ajax({
                url: "/mypage/order?po_status="+po_status,
                type: "GET",
                success: function (data) {
					console.log("ajax 성공");
					console.log(data);
                    displayOrderList(data);
                    progressbarAni();
                },
                error: function () {
                    alert("Error getting paid orders");
                }
            });
		}
		
		function getYmd10(date) {
		    //yyyy-mm-dd 포맷 날짜 생성
		    let d = new Date(date);
		    return d.getFullYear() + "년 " + ((d.getMonth() + 1) > 9 ? (d.getMonth() + 1).toString() : "0" + (d.getMonth() + 1)) + "월 " + (d.getDate() > 9 ? d.getDate().toString() : "0" + d.getDate().toString()) + "일";
		}
		
		function getYmd20(date) {
		    //yyyy-mm-dd 포맷 날짜 생성
		    let d = new Date(date);
		    return d.getFullYear() + "/" + ((d.getMonth() + 1) > 9 ? (d.getMonth() + 1).toString() : "0" + (d.getMonth() + 1)) + "/" + (d.getDate() > 9 ? d.getDate().toString() : "0" + d.getDate().toString());
		}
		
		function displayOrderList(orders) {
            $(".orderList").empty();
            
            for (var i = 0; i < orders.length; i++) {
                var order = orders[i];
                var str = '';
                console.log(order);
                str += `
                	<li>
        			<div class="top_date">
    				<p style="font-weight: 600;">
    					\${getYmd10(order.po_register_date)}
    				</p>
    				<button type="button" class="btn_txt" onclick="location.href='/order/orderView?po_id=\${order.po_id}'">
    					<span>주문상세</span>
    				</button>
    			</div>
    			`;
    			for (var j = 0; j < order.items.length; j++) {
    				var item = order.items[j];
    				str+=`
    					<div class="o_wrap">
    					<div class="box ip_img">
    						<a href="/product/item?w_id=\${item.w_id}" style="font-weight: 600;">
    							<picture style="margin-top: 10px;">
    								<!--[if IE 9]><video style="display: none;"><![endif]-->
    								<source srcset="\${item.productDetail.w_img}" media="(min-width:768px)">
    								<!-- pc이미지 -->
    								<source srcset="\${item.productDetail.w_img}" media="(max-width:767px)">
    								<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
    									src="\${item.productDetail.w_img}" alt=""><!-- pc이미지 -->
    							</picture>
    						</a>
    					</div>
    					<div class="box con" style="padding-left: 5px;">
    						<div class="more_info">
    							<p class="store">
    							\${order.store.s_name}
    							</p>
    							<p class="prd_name">
    								<a href="/product/item?w_id=\${item.productDetail.w_id}">
    									\${item.productDetail.w_name_kor}
    								</a>
    							</p>
    							<span class="label" style="background: #46675c;padding-top: 5px;padding-bottom: 5px;">제조국
    								: \${item.productDetail.wr_nation_kor}
    							</span> <span class="label"
    								style="background: #46675c;padding-top: 5px;padding-bottom: 5px;">품종 :
    									\${item.productDetail.wv_variety_kor}
    							</span> <br><span class="label"
    								style="background: #46675c;padding-top: 5px;padding-bottom: 5px;margin-top: 5px;">타입 :
    									\${item.productDetail.w_type}
    							</span>
    							<div class="price">
    								<p>
    									<!-- <del>30,000원</del> -->
    									<ins>
    										\${(item.poi_quantity * item.productDetail.w_price).toLocaleString()} 원
    									</ins>
    								</p>
    								<p class="amount">
    								\${item.poi_quantity}
    									개
    								</p>
    							</div>
    						</div>
    					</div>
    					</div>
    					`;
    			}
    			str += `
    				<div class="o_wrap">
    				<div class="box progress">
    					<ul>
    						<li class="s_info">
    							<div class="progressbar">
    					`;
    			if (order.po_status == 1 || order.po_status == 2) {
    				str += `
    					<p class="fill" value="0" style="width: 10px; height: 10px;"></p>
						<p class="empty"></p>
						`;
    			}
    			else if (order.po_status == 3) {
					str += `
						<p class="fill" value="53" style="width: 10px; height: 10px;"></p>
						<p class="empty"></p>
						`;
    			}
    			else {
					str +=`
						<p class="fill" value="100" style="width: 10px; height: 10px;"></p>
						<p class="empty"></p>
						`;
    			}
    			str += `
    							</div>
    						</li>
    						<li class="txt">
    					`;
    			if (order.po_status == 1) {
    				str += `
    					<p class="current">
						결제완료<em>
							\${getYmd20(order.po_register_date)}
						</em>
					</p>
					<p class="" style="
					    margin-right: 20px;
					">
						상품준비완료<em></em>
					</p>
					<p class="">
						픽업완료<em></em>
					</p>
					`;
    			}
    			else if (order.po_status == 2) {
    				str += `
    					<p class="current">
						픽업취소<em>
							\${getYmd20(order.po_register_date)}
								</em>
						</p>
						`;
    			}
    			else if (order.po_status == 3) {
    				str += `
    					<p class="">
						결제완료<em></em>
					</p>
					<p class="current">
						상품준비완료<em>
							\${getYmd20(order.po_register_date)}
						</em>
					</p>
					<p class="">
						픽업완료<em></em>
					</p>
					`;
    			}
    			else {
					str += `
						<p class="">
						결제완료<em></em>
					</p>
					<p class="">
						상품준비완료<em></em>
					</p>
					<p class="end">
						픽업완료<em>
							\${getYmd20(order.po_visited_date)}
						</em>
					</p>
					`;
    			}
    			str += `
    						</li>
						</ul>
						</div>
						</div>
					</li>
    				`;
    			$(".orderList").append(str);
            }
            
        }
	</script>

</body>

</html>