<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html lang="ko">

<body>

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
	<section id="contents" class="mb_margin_0" style="margin-top: 0px;">
		<div class="lnb cart_lnb lnb_wrap step_wrap">
			<div class="pc_hidden">
				<a href="javascript:history.go(-1);" class="prev">이전</a>
				<div class="select_brand js_select" id="select_brand">
					<button type="button" class="my_value js_selectBtn"
						onclick="$(this).toggleClass('on')">
						<span class="no_arrow">장바구니</span>
					</button>
					<!-- <ul class="mb_lnb_lists">
            </ul> -->
				</div>
			</div>
			<div class="pc_lnb mb_hidden">
				<div class="page_tit">
					<h2>
						<span>장바구니</span>
					</h2>
					<ul>
						<li class="on"><span>장바구니</span></li>
						<li class=""><span>주문결제</span></li>
						<li class=""><span>주문완료</span></li>
					</ul>
				</div>
				<!-- <ul class="menu">
        </ul> -->
			</div>
		</div>
		<div class="wrap">
			<!--             <script src="/resources/asset/js/wn.product.js"></script> -->
			<div class="content order cart_lists_page">

				<!-- 탭 버튼 형식 -->
				<!-- <div class="tab_area">
            <ul class="tab1">
                <li class="on">
					<button type="button" onclick="location.href='/shop/cart/cart_lists?order_gb=P'">
						<span>온라인주문
						<em class="count">1</em> 						</span>
					</button>
				</li>
                
				<li >
					<button type="button" onclick="location.href='/shop/cart/cart_lists?order_gb=V'">
						<span>
							매장방문주문
														</span>
					</button>
				</li>
                
				<li >
					<button type="button" onclick="location.href='/shop/cart/cart_lists?order_gb=D'">
						<span>
							택배배송
													</span>
					</button>
				</li>
            </ul>
        </div> -->


				<!-- 라디오박스 형식(두 개 중 골라 쓰시면 됩니다) -->
				<!-- <div class="radio_area">
            <div class="radiobox">
                <input type="radio" name="receive_way" id="pickup" checked>
                <label for="pickup"><span>직접픽업(Array건)</span></label>
            </div>
            <div class="radiobox">
                <input type="radio" name="receive_way" id="store">
                <label for="store"><span>매장방문(0건)</span></label>
            </div>
            <div class="radiobox">
                <input type="radio" name="receive_way" id="shipping">
                <label for="shipping"><span>택배배송</span></label>
            </div>
        </div> -->

				<div class="c_lists">
					<div class="top">
						<div class="checkbox type2">
							<input type="checkbox" id="all_sel"> <label for="all_sel">전체선택</label>
						</div>
						<button type="button" id="btn_del">선택삭제</button>
					</div>
					<input type="hidden" id="m_email" value="<c:out value="${cartList[0].m_email}"/>">
					<ul class="wish_list">
						<c:forEach items="${cartList}" var="cart">
							<li class="${cart.w_id}">
								<div class="box ip_img">
									<div class="checkbox type2">
										<input type="checkbox" id="cart_seq_${cart.w_id}"
											name="cart_seq[]" class="ip_check" value="${cart.w_id}"
											data-qty="" data-price="${cart.productDetail.w_price }"
											data-code="${cart.productDetail.w_id}" data-supply-price="${cart.productDetail.w_price }">
										<label for="cart_seq_${cart.productDetail.w_id}" style="padding-top: 30px;"> <picture
												> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="${cart.productDetail.w_img}" media="(min-width:768px)">
											<!-- pc이미지 -->
											<source srcset="${cart.productDetail.w_img}" media="(max-width:767px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="${cart.productDetail.w_img}" alt=""><!-- pc이미지 --> </picture>
										</label>
									</div>
								</div>
								<div class="box con">
									<div class="more_info">
										<p class="prd_name">
											<a href="/product/item?w_id=${cart.productDetail.w_id}"
												 style="padding-left: 8px;"> <c:out value="${cart.productDetail.w_name_kor}" /><br>
											</a>
										</p>

										<div class="cate_label">
											<span class="label" style="background: #46675c;padding-top: 5px;padding-bottom: 5px;"> 생산지 : <c:out value="${cart.productDetail.wr_nation_kor}" /></span>
											<span class="label" style="background: #46675c;padding-top: 5px;padding-bottom: 5px;"> 품종 : <c:out value="${cart.productDetail.wv_variety_kor}" /></span>
											<span class="label" style="background: #46675c;padding-top: 5px;padding-bottom: 5px;"> 타입 : <c:out value="${cart.productDetail.w_type}" /></span>
<%-- 											<span class="label" style="background: #46675c"> <c:out value="${cart.productDetail.stocks[0].store.s_name}" /> : <c:out value="${cart.productDetail.stocks[0].sws_stock}" /> 개 </span> --%>
<%-- 											<span class="label" style="background: #46675c"> <c:out value="${cart.productDetail.stocks[0].store.s_name}" /> : <c:out value="${cart.productDetail.stocks[0].sws_stock}" /> 개 </span> --%>
											<br>
											<div style="padding-top: 10px;">
											<ins id="price${cart.w_id}" style="margin-right: 5px; font-size: 16px; font-weight: 700; text-decoration: none; color: #111; padding-top: 10px; padding-left: \; padding-left: 8px; padding-left: 8px;">
												<fmt:formatNumber
													value="${cart.productDetail.w_price}" pattern="#,###" />
												원
											</ins>
										</div>
										</div>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
				<div class="btn_area col2">
					<button type="button" class="btn_txt"
						onclick="location.href='/product/list'">
						<span>계속 쇼핑하기</span>
					</button>
					<button type="button" class="btn_txt" onclick="orderSet('c')">
						<span>선택상품 픽업</span>
					</button>
					<button type="button" class="btn_txt btn_black"
						onclick="orderSet('a')">
						<span>전체상품 픽업</span>
					</button>
				</div>

				<div class="recommend_area">
					<!--   <h3>추천 상품</h3>
            
            <ul class="prd_list" id="cart_recommend">
            </ul> -->

					<!-- <div class="btn_area">
			                <button type="button" class="btn_txt" id="more_button_wine" onclick="getList('add')"><span>더보기</span></button>
			            </div> -->
				</div>
			</div>
		</div>

		<form action="https://www.winenara.com/shop/cart/cart_lists"
			id="UpdateCartForm" name="UpdateCartForm" method="post"
			accept-charset="utf-8">
			<input type="hidden" name="witplus_csrf_token"
				value="5ade7c5f4dc89e281bf6532f719e6bd6"> <input
				type="hidden" name="cart_seq" value=""> <input type="hidden"
				name="qty" value="">
		</form>
		<!-- page_script -->
		<link rel="stylesheet" type="text/css"
			href="/resources/asset/css/shop/slick.css">
		<script type="text/javascript" src="/resources/asset/js/slick.min.js"></script>
		<link rel="stylesheet" type="text/css"
			href="/resources/asset/css/shop/jqcloud.min.css">
		<script type="text/javascript"
			src="/resources/asset/js/jqcloud.min.js"></script>
		<script>
			let csrfHeaderName = "${_csrf.headerName}";
			let csrfTokenValue = "${_csrf.token}";
			let m_email = $("#m_email").val();
			console.log(m_email);
			//전체선택
			$("#all_sel").click(function() {
				if ($("#all_sel").is(":checked"))
					$(".ip_check").prop("checked", true);
				else
					$(".ip_check").prop("checked", false);

				var price = 0;
				$("input:checkbox[name='cart_seq[]']").each(function(index) {

					if ($(this).is(":checked") == true) {
						price += $(this).data('qty') * $(this).data('price');
					}
				});
				$("#total").text(price.toLocaleString() + '원');
			});

			$(".ip_check").click(function() {
				var total = $(".ip_check").length;
				var checked = $(".ip_check:checked").length;

				if (total != checked)
					$("#all_sel").prop("checked", false);
				else
					$("#all_sel").prop("checked", true);
			});

			$('.main_img .slider').slick({
				dots : true,
				arrows : true
			});

			// 슬라이드시 비비노 키워드 호출
			$('.main_img .slider')
					.on(
							"afterChange",
							function() {
								var product_cd = $(this).data('cd');
								var words = []; // 키워드 담을 배열

								Csrf.Set(_CSRF_NAME_); //토큰 초기화
								$
										.ajax({
											type : "POST",
											url : "/shop/product/vivino_keyword_ajax",
											data : {
												product_cd : product_cd
											},
											success : function(res) {
												if (typeof (res) == "string") {
													res = JSON.parse(res);
												}

												if (res.status == "ok") {
													var vivino = res.list;
													for (var i = 0; i < vivino.length; i++) {
														//                 		console.log(vivino[i]);	
														var tempObj = {};
														tempObj['text'] = vivino[i]['keyword_kr'];
														tempObj['weight'] = vivino[i]['score'];

														words.push(tempObj);
													}
													var some_words_with_same_weight = $(
															".cloud_"
																	+ product_cd)
															.jQCloud(words, {
																width : 334,
																height : 135
															});
													return false;
												} else {
													$(".cloud_" + product_cd)
															.html(
																	"<span>no data</span>");
													console.log("no_list");
													return false;
												}
											},
											error : function(res) {
												alert("상품 리스트 조회시 에러가 발생했습니다.");
												alert(res.responseText);
											}
										});
							});
			
			/*
			 * Author : 차민수
			 * 기능 : 장바구니 상품 삭제
			 */
			$("#btn_del").on("click", function removeCarts(e) {
				e.preventDefault();
				let valArr = [];
				let url = '/mypage/removeCarts?m_email=' + m_email + '&w_id=';
				$("input[name='cart_seq[]']:checked").each(function() {
					valArr.push($(this).val());
					url += $(this).val() + ',';
				});
				url = url.substr(0, url.length - 1);
				console.log(url);
				$.ajax({
					url : url,
					contentType : "application/json",
					success : function() {
						window.location.href = "/mypage/cartList";
					},
					error : function(e) {
						console.log(e);
					}
				})
			});

			/*
			 * Author : 차민수
			 * 기능 : 정규식을 통한 세 자리수마다 컴마 표시
			 */
			function numberWithCommas(x) {
				return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			}
			function imgAlert(str){
		    	  Swal.fire({
		    	  html : str
		    	})
		    }
			/*
			 * Author : 차민수
			 * 기능 : 장바구니 상품 수량 변경
			 */
			function box_qty(val, ths) {
				let id = $(ths).data('value');
				let quan = $('#qmt' + id).data('value');
				let price = $('#cart_seq_' + id).data('price');
				if (quan == 1 && val == -1) {
					return;
				}
				console.log(id);
				console.log(quan);
				console.log(price);
				console.log(this);
				
				if ((quan + val) >= 7) {
					imgAlert('1회 예약 병수는 <b>6병 이내</b>로 픽업예약 가능하며,<br>일 <b>최대 30병</b>을 초과할 수 없습니다.<br><b>대량주문은 점포로 문의해주세요.</b>');
					return;
				}
				$('#qmt' + id).data('value', quan + val);
				$('#qmt' + id).attr('value', quan + val);
				$('#price' + id).html(
						numberWithCommas(price * (quan + val)) + ' 원');
				$('#order' + id).html(
						numberWithCommas(price * (quan + val)) + ' 원');
				
				$.ajax({
					type : 'post',
					url : '/mypage/cartList',
					beforeSend : function(xhr) {
						xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
					},
					data : JSON.stringify({
						w_id : id
					}),
					contentType : "application/json",
					success : function() {
						console.log("안녕");
					},
					error : function(e) {
						console.log(e);
					}
				});
			}

			/*
			 * Author : 차민수
			 * 기능 : 장바구니 상품 총 가격 계산
			 */
			$("input[type=checkbox]").change(
					function() {
						var price = 0;
						var supply_price = 0;
						$("input:checkbox[name='cart_seq[]']").each(
								function(index) {
									if ($(this).is(":checked") == true) {
										console.log(this);
										price += $(this).data('qty')
												* $(this).data('price');
										supply_price += $(this).data('qty')
												* $(this).data('supply-price');
									}
								});
						$("#supply").html(supply_price.toLocaleString() + '원');
						$("#sale").html(
								(supply_price - price).toLocaleString() + '원');
						$("#total").html(price.toLocaleString() + '원');
					});

			/*
			 * Author : 차민수
			 * 기능 : 구매하기
			 */
			function orderSet(state) {
				if (state == 'a') {
					$("input[type=checkbox]").prop("checked", true);
				}

				if ($("input:checkbox[name='cart_seq[]']:checked").length < 1) {
					imgAlert('주문할 상품을 선택해 주세요.');
					return false;
				}
				jsOrderSubmit();
			}
			
			
			function jsOrderSubmit() {
				let w_id = [];
				let quantity = [];
				$("input[name='cart_seq[]']:checked").each(function() {
					w_id.push($(this).val());
					quantity.push($("#qmt" + $(this).val()).val());
				});
				console.log(w_id);
				window.location.href="/order/orderWrite?w_id="+w_id;
			}

			var list_page = 1;
			var product = '["04E381"]';
			var product_cd;
			product_cd = JSON.parse(product);
			var mode = 'init';

			/*
			if( product_cd ) {
				getList('init');
			}else{
				//$(".recommend_area").hide();  
				getList2('init');
			}
			 */

			//스크롤 바닥 감지
			window.addEventListener('scroll', moreShowList);

			var scrollVal = true;
			function moreShowList() {
				if ($(window).scrollTop() >= $(document).height()
						- ($(window).height() * 2.3)) {
					// getList('add');
					//console.log(list_page);
					//console.log('실행');

					if (mode === 'init') {
						if (product_cd) {
							//getList(mode);
						} else {
							//$(".recommend_area").hide();  
							//getList2(mode);
						}
						mode = 'add';
					} else {

						if (scrollVal === true) {
							if (product_cd) {
								//console.log(1);
								//getList(mode);
							} else {
								//$(".recommend_area").hide();  
								//console.log(2);
								//getList2(mode);
							}
						}
					}
				}
			}

			function getList(mode) {
				scrollVal = false;
				window.removeEventListener('scroll', moreShowList);

				if (mode == "init") {
					list_page = 1;
				} else {
					list_page += 1;
				}
				console.log(mode);

				$.ajax({
					type : "get",
					url : "/shop/cart/RecommedWine",
					data : {
						page : list_page,
						'product_cd' : product_cd
					},
					success : function(res) {

						if (!res) {
							//alert('마지막 페이지입니다.');
							if (mode === 'init') {
								$(".recommend_area").hide();
								window.removeEventListener('scroll',
										moreShowList);
							}
							// $("#more_button_wine").hide();
							window.removeEventListener('scroll', moreShowList);

						} else {
							$(".prd_list").append(res);
						}
						$('.main_img .slider').not('.slick-initialized').slick(
								{
									dots : true,
									arrows : true
								});

						scrollVal = true;
						window.addEventListener('scroll', moreShowList);
					},
					error : function(res) {
						alert("불편하시지만 다시 시도해주세요. 감사합니다.");
					}
				});
			}

			function getList2(mode) {
				scrollVal = false;
				window.removeEventListener('scroll', moreShowList);

				if (mode == "init") {
					list_page = 1;
				} else {
					list_page += 1;
				}

				$.ajax({
					type : "get",
					url : "/shop/cart/getList",
					data : {
						'page' : list_page
					},
					success : function(res) {
						if (!res) {
							//alert('마지막 페이지입니다.');
							// $("#more_button_wine").hide();
							window.removeEventListener('scroll', moreShowList);

						} else {
							$(".prd_list").append(res);
						}
						$('.main_img .slider').not('.slick-initialized').slick(
								{
									dots : true,
									arrows : true
								});

						scrollVal = true;
						window.addEventListener('scroll', moreShowList);
					},
					error : function(res) {
						alert("불편하시지만 다시 시도해주세요. 감사합니다.");
					}
				});
			}

			$("#header").addClass('top_hidden');
			$("#contents").addClass('mb_margin_0');

			$("#all_sel").trigger("click");
		</script>
		<script src="/resources/asset/js/wn.product.js"></script>

		<!-- //page_script -->

		<!--백로그 API-->
		<script type="text/JavaScript">
			var cart_log = '{"04E381":"1"}';

			if (cart_log.length > 2) {
				console.log('적재');
				cart_log = JSON.parse(cart_log);
				console.log(cart_log);
				RC_Method({
					sign_up_data : "",
					page_type : "cart_lists",
					behavior : "page_view",
					extra : {
						'shopping_basket' : cart_log
					}
				});
			}

			function change_packing(cart_seq, val) {
				Csrf.Set(_CSRF_NAME_); //토큰 초기화
				$.ajax({
					type : "POST",
					url : "/shop/cart/cart_proc_ajax?ajax_mode=UPD_PACKING",
					data : {
						cart_seq : cart_seq,
						packing : val
					},
					success : function(res) {
						alert("변경되었습니다.");
						location.reload();
					},
					error : function(res) {
						alert("ERROR!");
					}
				});

			}
		</script>
		<!--백로그 API-->
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
		var page = 'cart_lists';
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