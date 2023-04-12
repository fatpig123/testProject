<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>

<html lang="ko">
<body>

	<!-- header -->
<!-- 와인 프로파일 레이어 -->
	<!-- /shop/mypage/shopping/wine_profile_ajax.php LOAD -->
	<div class="layer wine_profile_layer"></div>
	<!-- //와인 프로파일 레이어 -->

	<sec:authorize access="isAuthenticated()">
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
	</sec:authorize>
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
			img_url = 'https://am.witplus.com/resources/uploads/product/';
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
															url : "/login",
															dataType : 'json',
															data : $(
																	"#LoginPostFrm")
																	.serialize(),
															success : function(
																	res) {
																console
																		.log("로그인 성공? ", res);
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
	<section id="contents" style="margin-top: 1px;">
		<script type="text/javascript" src="/resources/asset/js/instafeed.js"></script>
		<link rel="stylesheet" type="text/css"
			href="/resources/asset/css/shop/main.css?v=230214144643">
		<link rel="stylesheet" type="text/css"
			href="/resources/asset/css/shop/main_pc.css?v=230109160016"
			media="screen and (min-width:1024px)">
		<div class="content main_page">

			<div class="main_category pc_hidden">
				<ul>
					<li class="ico_wine"><a
						href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100">WINE</a></li>
					<li class="ico_newBest"><a
						href="/shop/product/group_product_lists?group_cd=1901">NEW&amp;BEST</a></li>
					<li class="ico_special"><a href="/shop/cs/special">SPECIAL
							GIFT</a></li>
				</ul>
			</div>

			<div
				class="section slide_prd product_lists_page sub_tit_wrap theme_con">
				<h2>
					<span>OUR PICK</span>
					<!-- <div class="btn_switch_module js_switch css_switch">
                <input type="checkbox" id="btn_switch01" class="btn_switch_check">
            </div> -->
					<!-- <a href="/shop/product/product_lists" class="btn_more">더보기</a> -->
				</h2>
				<span class="sub_tit">I AM H-WINE에서 특별히 선정한 상품들을 만나보세요.</span>
				<div class="result_tab">
					<ul>
						<!-- class="on" -->
						<li class="on"><button type="button">이달의 와인</button></li>
						<!-- class="on" -->
						<li><button type="button">MIX &amp; MAX</button></li>
					</ul>
				</div>

				<div class="prd_wrap">
					<div class="n_prd_list theme_prd_list on" id="theme_list_3"
						style="display: block;">
						<ul class="">
							<li>
								<div class="item">
									<div class="main_img" style="background: #E0D8EA">
										<a href="/shop/product/product_view?product_cd=03H354"
											class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source
												srcset="/resources/uploads/product/1073_detail_09.png"
												media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source
												srcset="/resources/uploads/product/1073_detail_09.png"
												media="(max-width:1023px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="/resources/uploads/product/1073_detail_09.png"
												loading="lazy" alt=""><!-- pc이미지 --> </picture>
										</a>
										<div class="btn">
											<button type="button" class="wish wish_03H354 "
												id="wish_03H354" onclick="product.likeProduct('03H354');">
												<span>찜하기</span>
											</button>
										</div>
										<p class="vivino">
											VIVINO<em>3.7</em>
										</p>
										<div class="label_wrap">
											<span class="icon sale">SALE</span>
										</div>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="/shop/product/product_view?product_cd=03H354"><span>캔달잭슨
														빈트너스 리저브 메를로</span><span class="en">KENDALL JACKSON
														VINTNER`S RESERVE MERLOT</span></a>
											</p>
											<p class="prd_info">95% 소노마 카운티, 5% 멘도치노 카운티에서 생산된 포도 사용</p>
										</div>
										<div class="cate_label">
											<span style="background: #E0D8EA">레드</span> <span
												style="background: #E0D8EA">미국</span> <span
												style="background: #E0D8EA">메를로</span>
										</div>
										<div class="price_area">
											<p class="price set">
												<!-- n병 구매시 -->
												<span class="regular_price price"> <ins>36,900원</ins>
												</span> <em class="discount">5%</em> <i>3병 이상 구매시</i>
												<ins>35,000원</ins>
											</p>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="item">
									<div class="main_img" style="background: #E0D8EA">
										<a href="/shop/product/product_view?product_cd=03M761"
											class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source
												srcset="/resources/uploads/product/1428_detail_035.png"
												media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source
												srcset="/resources/uploads/product/1428_detail_035.png"
												media="(max-width:1023px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="/resources/uploads/product/1428_detail_035.png"
												loading="lazy" alt=""><!-- pc이미지 --> </picture>
										</a>
										<div class="btn">
											<button type="button" class="wish wish_03M761 "
												id="wish_03M761" onclick="product.likeProduct('03M761');">
												<span>찜하기</span>
											</button>
										</div>
										<p class="vivino">
											VIVINO<em>3.9</em>
										</p>
										<div class="label_wrap">
											<span class="icon sale">SALE</span>
										</div>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="/shop/product/product_view?product_cd=03M761"><span>보리우
														빈야드 나파 카베르네 소비뇽</span><span class="en">BV NAPA CABERNET
														SAUVIGNON</span></a>
											</p>
											<p class="prd_info">100년이 넘는 전통과 나파의 기준이라 불리우는 BV에서 생산하는
												나파 밸리 까베르네 소비뇽</p>
										</div>
										<div class="cate_label">
											<span style="background: #E0D8EA">레드</span> <span
												style="background: #E0D8EA">미국</span> <span
												style="background: #E0D8EA">카베르네 소비뇽</span>
										</div>
										<div class="price_area">
											<p class="price set">
												<!-- n병 구매시 -->
												<span class="regular_price price"> <ins>89,000원</ins>
												</span> <em class="discount">4%</em> <i>3병 이상 구매시</i>
												<ins>85,000원</ins>
											</p>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="item">
									<div class="main_img" style="background: #E0D8EA">
										<a href="/shop/product/product_view?product_cd=03I033"
											class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source
												srcset="/resources/uploads/product/505_detail_041.png"
												media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source
												srcset="/resources/uploads/product/505_detail_041.png"
												media="(max-width:1023px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="/resources/uploads/product/505_detail_041.png"
												loading="lazy" alt=""><!-- pc이미지 --> </picture>
										</a>
										<div class="btn">
											<button type="button" class="wish wish_03I033 "
												id="wish_03I033" onclick="product.likeProduct('03I033');">
												<span>찜하기</span>
											</button>
										</div>
										<p class="vivino">
											VIVINO<em>3.8</em>
										</p>
										<div class="label_wrap">
											<span class="icon sale">SALE</span>
										</div>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="/shop/product/product_view?product_cd=03I033"><span>빌라
														안티노리 로소</span><span class="en">VILLA ANTINORI ROSSO</span></a>
											</p>
											<p class="prd_info">50년 숙성 가능한 주니어 수퍼 투스칸 와인</p>
										</div>
										<div class="cate_label">
											<span style="background: #E0D8EA">레드</span> <span
												style="background: #E0D8EA">이탈리아</span> <span
												style="background: #E0D8EA">카베르네 소비뇽</span>
										</div>
										<div class="price_area">
											<p class="price set">
												<!-- n병 구매시 -->
												<span class="regular_price price"> <ins>33,000원</ins>
												</span> <em class="discount">5%</em> <i>3병 이상 구매시</i>
												<ins>31,350원</ins>
											</p>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="n_prd_list theme_prd_list " id="theme_list_4"
						style="display: none;">
						<ul class="">
							<li>
								<div class="item">
									<div class="main_img" style="background: #E0D8EA">
										<a href="/shop/product/product_view?product_cd=03M615"
											class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source
												srcset="/resources/uploads/product/263cd1deb56d0d243ae40405e166fc68.png"
												media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source
												srcset="/resources/uploads/product/263cd1deb56d0d243ae40405e166fc68.png"
												media="(max-width:1023px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="/resources/uploads/product/263cd1deb56d0d243ae40405e166fc68.png"
												loading="lazy" alt=""><!-- pc이미지 --> </picture>
										</a>
										<div class="btn">
											<button type="button" class="wish wish_03M615 "
												id="wish_03M615" onclick="product.likeProduct('03M615');">
												<span>찜하기</span>
											</button>
										</div>
										<p class="vivino">
											VIVINO<em>3.8</em>
										</p>
										<div class="label_wrap">
											<span class="icon sale">SALE</span>
										</div>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="/shop/product/product_view?product_cd=03M615"><span>맥스
														카베르네소비뇽</span><span class="en">MAX CABERNET SAUVIGNON</span></a>
											</p>
											<p class="prd_info">"칠레 와인 명가(名家), 에라주리즈의150년 기술이 농축된 가성비
												최고 데일리 카베르네소비뇽" 150주년 기념 라벨의 빈티지.</p>
										</div>
										<div class="cate_label">
											<span style="background: #E0D8EA">레드</span> <span
												style="background: #E0D8EA">칠레</span> <span
												style="background: #E0D8EA">카베르네 소비뇽</span>
										</div>
										<div class="price_area">
											<p class="price">
												<!-- 할인가 -->
												<em class="discount">12%</em>
												<del>24,900원</del>
												<ins>21,900원</ins>
											</p>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="item">
									<div class="main_img" style="background: #E0D8EA">
										<a href="/shop/product/product_view?product_cd=03M613"
											class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source
												srcset="/resources/uploads/product/4607706d0982f2701d24cf6ca0788374.png"
												media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source
												srcset="/resources/uploads/product/4607706d0982f2701d24cf6ca0788374.png"
												media="(max-width:1023px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="/resources/uploads/product/4607706d0982f2701d24cf6ca0788374.png"
												loading="lazy" alt=""><!-- pc이미지 --> </picture>
										</a>
										<div class="btn">
											<button type="button" class="wish wish_03M613 "
												id="wish_03M613" onclick="product.likeProduct('03M613');">
												<span>찜하기</span>
											</button>
										</div>
										<p class="vivino">
											VIVINO<em>3.8</em>
										</p>
										<div class="label_wrap">
											<span class="icon sale">SALE</span>
										</div>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="/shop/product/product_view?product_cd=03M613"><span>
														맥스 카르메네르</span><span class="en">MAX CARMENERE</span></a>
											</p>
											<p class="prd_info">칠레 와인 명가(名家), 에라주리즈의 150년 기술이 농축된 가성비
												최고의 우아한 풀바디 카르메네르</p>
											<p>프랑스 토착품종이 칠레로 넘어가며 더욱 유명해진 카르메네르!</p>
										</div>
										<div class="cate_label">
											<span style="background: #E0D8EA">레드</span> <span
												style="background: #E0D8EA">칠레</span> <span
												style="background: #E0D8EA">기타</span>
										</div>
										<div class="price_area">
											<p class="price">
												<!-- 할인가 -->
												<em class="discount">12%</em>
												<del>24,900원</del>
												<ins>21,900원</ins>
											</p>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="item">
									<div class="main_img" style="background: #E0D8EA">
										<a href="/shop/product/product_view?product_cd=03N246"
											class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source
												srcset="/resources/uploads/product/09b55561948483dcef2e88b0f7efd543.png"
												media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source
												srcset="/resources/uploads/product/09b55561948483dcef2e88b0f7efd543.png"
												media="(max-width:1023px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="/resources/uploads/product/09b55561948483dcef2e88b0f7efd543.png"
												loading="lazy" alt=""><!-- pc이미지 --> </picture>
										</a>
										<div class="btn">
											<button type="button" class="wish wish_03N246 "
												id="wish_03N246" onclick="product.likeProduct('03N246');">
												<span>찜하기</span>
											</button>
										</div>
										<p class="vivino">
											VIVINO<em>3.7</em>
										</p>
										<div class="label_wrap">
											<span class="icon sale">SALE</span>
										</div>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="/shop/product/product_view?product_cd=03N246"><span>맥스
														시라</span><span class="en">MAX SYRAH</span></a>
											</p>
											<p class="prd_info">칠레 와인 명가(名家), 에라주리즈의 150년 기술이 농축된 칠레
												시라. 한국인의 매운 음식과 가장 잘 매칭되는 데일리 시라.</p>
										</div>
										<div class="cate_label">
											<span style="background: #E0D8EA">레드</span> <span
												style="background: #E0D8EA">칠레</span> <span
												style="background: #E0D8EA">쉬라즈</span>
										</div>
										<div class="price_area">
											<p class="price">
												<!-- 할인가 -->
												<em class="discount">12%</em>
												<del>24,900원</del>
												<ins>21,900원</ins>
											</p>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="item">
									<div class="main_img" style="background: #E0D8EA">
										<a href="/shop/product/product_view?product_cd=03N601"
											class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source
												srcset="/resources/uploads/product/13ccae3fb817fe2eeb064be844f805bc.png"
												media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source
												srcset="/resources/uploads/product/13ccae3fb817fe2eeb064be844f805bc.png"
												media="(max-width:1023px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="/resources/uploads/product/13ccae3fb817fe2eeb064be844f805bc.png"
												loading="lazy" alt=""><!-- pc이미지 --> </picture>
										</a>
										<div class="btn">
											<button type="button" class="wish wish_03N601 "
												id="wish_03N601" onclick="product.likeProduct('03N601');">
												<span>찜하기</span>
											</button>
										</div>
										<p class="vivino">
											VIVINO<em>3.6</em>
										</p>
										<div class="label_wrap">
											<span class="icon sale">SALE</span>
										</div>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="/shop/product/product_view?product_cd=03N601"><span>맥스
														피노누아</span><span class="en">MAX PINOT NOIR</span></a>
											</p>
											<p class="prd_info">칠레 와인 명가(名家), 에라주리즈의 150년 와인 기술이 농축된
												가성비 甲 피노누아. 아콩카구아의 뗴루아를 담아 부르고뉴 스타일을 표현한 칠레의 데일리 피노누아</p>
										</div>
										<div class="cate_label">
											<span style="background: #E0D8EA">레드</span> <span
												style="background: #E0D8EA">칠레</span> <span
												style="background: #E0D8EA">피노누아</span>
										</div>
										<div class="price_area">
											<p class="price">
												<!-- 할인가 -->
												<em class="discount">12%</em>
												<del>24,900원</del>
												<ins>21,900원</ins>
											</p>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="item">
									<div class="main_img" style="background: #F6EC9C">
										<a href="/shop/product/product_view?product_cd=04D130"
											class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source
												srcset="/resources/uploads/product/cf330975d9cda9694a6e3684809f5d29.png"
												media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source
												srcset="/resources/uploads/product/cf330975d9cda9694a6e3684809f5d29.png"
												media="(max-width:1023px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="/resources/uploads/product/cf330975d9cda9694a6e3684809f5d29.png"
												loading="lazy" alt=""><!-- pc이미지 --> </picture>
										</a>
										<div class="btn">
											<button type="button" class="wish wish_04D130 "
												id="wish_04D130" onclick="product.likeProduct('04D130');">
												<span>찜하기</span>
											</button>
										</div>
										<p class="vivino">
											VIVINO<em>3.7</em>
										</p>
										<div class="label_wrap">
											<span class="icon sale">SALE</span>
										</div>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="/shop/product/product_view?product_cd=04D130"><span>맥스
														샤르도네</span><span class="en">MAX CHARDONNAY</span></a>
											</p>
											<p class="prd_info">칠레 와인 전통의 명가 에라주리즈에서 선보이는 신선한 산도와 산뜻한
												맛이 뛰어난 샤르도네</p>
										</div>
										<div class="cate_label">
											<span style="background: #F6EC9C">화이트</span> <span
												style="background: #F6EC9C">칠레</span> <span
												style="background: #F6EC9C">샤르도네</span>
										</div>
										<div class="price_area">
											<p class="price">
												<!-- 할인가 -->
												<em class="discount">12%</em>
												<del>24,900원</del>
												<ins>21,900원</ins>
											</p>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<div class="prd_wrap slide_prd section newarrivals">
				<h2>NEW ARRIVALS</h2>
				<a href="/shop/product/group_product_lists?group_cd=1901"
					class="btn_more">더보기</a>
				<!-- <span class="sub_tit"></span> -->
				<div class="prd_wrap">
					<ul class="n_prd_list">
						<li>
							<div class="item">
								<div class="main_img" style="background: #F6EC9C">
									<a href="/shop/product/product_view?product_cd=04E381"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/resources/uploads/product/c5729ae85ce559950658fb4487df567d.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/resources/uploads/product/c5729ae85ce559950658fb4487df567d.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="/resources/uploads/product/c5729ae85ce559950658fb4487df567d.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_04E381 "
											id="wish_04E381" onclick="product.likeProduct('04E381');">
											<span>찜하기</span>
										</button>
									</div>
									<p class="vivino">
										VIVINO<em>3.9</em>
									</p>
									<div class="label_wrap">
										<span class="icon new">NEW</span>
									</div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=04E381"><span>베니카
													트레 비니스</span><span class="en">VENICA TRE VIGNIS</span></a>
										</p>
										<p class="prd_info">세가지 다른 품종의 개성이 잘 담겨있으면서도 서로 완벽한 조화를
											이루는 화이트 와인. 콜리오 지역 화이트의 특색이 잘 담긴 클래식한 와인.</p>
									</div>
									<div class="cate_label">
										<span style="background: #F6EC9C">화이트</span> <span
											style="background: #F6EC9C">이탈리아</span> <span
											style="background: #F6EC9C">기타</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<ins>55,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0D8EA">
									<a href="/shop/product/product_view?product_cd=03S680"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/resources/uploads/product/97912cb097f6f88208b3ac05a0122955.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/resources/uploads/product/97912cb097f6f88208b3ac05a0122955.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="/resources/uploads/product/97912cb097f6f88208b3ac05a0122955.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03S680 "
											id="wish_03S680" onclick="product.likeProduct('03S680');">
											<span>찜하기</span>
										</button>
									</div>
									<p class="vivino">
										VIVINO<em>3.7</em>
									</p>
									<div class="label_wrap">
										<span class="icon new">NEW</span>
									</div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03S680"><span>14핸즈
													카베르네소비뇽</span><span class="en">14Hands Cabernet Sauvignon</span></a>
										</p>
										<p class="prd_info">미국 워싱턴 와인의 상징, 포틴핸즈의 가성비 뛰어난 데일리 레드
											와인으로 미국 프리미엄 까베르네 소비뇽 카테고리 ($8~$11) 중 판매 5위 (21년 기준)</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0D8EA">레드</span> <span
											style="background: #E0D8EA">미국</span> <span
											style="background: #E0D8EA">카베르네 소비뇽</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<ins>27,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0D8EA">
									<a href="/shop/product/product_view?product_cd=03S681"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/resources/uploads/product/5fe3ab2970a6e9a06ad583b0eb29d7aa.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/resources/uploads/product/5fe3ab2970a6e9a06ad583b0eb29d7aa.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="/resources/uploads/product/5fe3ab2970a6e9a06ad583b0eb29d7aa.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03S681 "
											id="wish_03S681" onclick="product.likeProduct('03S681');">
											<span>찜하기</span>
										</button>
									</div>
									<p class="vivino">
										VIVINO<em>3.7</em>
									</p>
									<div class="label_wrap">
										<span class="icon new">NEW</span>
									</div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03S681"><span>14핸즈
													메를로</span><span class="en">14Hands Merlot</span></a>
										</p>
										<p class="prd_info">미국 워싱턴 와인의 상징이자, 미국 프리미엄 메를로 판매 TOP 3</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0D8EA">레드</span> <span
											style="background: #E0D8EA">미국</span> <span
											style="background: #E0D8EA">메를로</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<ins>27,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #F6EC9C">
									<a href="/shop/product/product_view?product_cd=03S683"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/resources/uploads/product/46d2a5aefc6cfe97bb88e1aed4bb0ce3.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/resources/uploads/product/46d2a5aefc6cfe97bb88e1aed4bb0ce3.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="/resources/uploads/product/46d2a5aefc6cfe97bb88e1aed4bb0ce3.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03S683 "
											id="wish_03S683" onclick="product.likeProduct('03S683');">
											<span>찜하기</span>
										</button>
									</div>
									<p class="vivino">
										VIVINO<em>3.6</em>
									</p>
									<div class="label_wrap">
										<span class="icon new">NEW</span>
									</div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03S683"><span>14핸즈
													소비뇽블랑</span><span class="en">14Hands Sauvignon Blanc</span></a>
										</p>
										<p class="prd_info">미국 워싱턴 와인의 상징, 포틴핸즈! 비비노 선정 미국 소비뇽 블랑
											TOP 5 선정</p>
									</div>
									<div class="cate_label">
										<span style="background: #F6EC9C">화이트</span> <span
											style="background: #F6EC9C">미국</span> <span
											style="background: #F6EC9C">소비뇽 블랑</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<ins>27,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #F6EC9C">
									<a href="/shop/product/product_view?product_cd=03S682"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/resources/uploads/product/a560576f8ce8b659af5d6908b0d9b60f.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/resources/uploads/product/a560576f8ce8b659af5d6908b0d9b60f.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="/resources/uploads/product/a560576f8ce8b659af5d6908b0d9b60f.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03S682 "
											id="wish_03S682" onclick="product.likeProduct('03S682');">
											<span>찜하기</span>
										</button>
									</div>
									<p class="vivino">
										VIVINO<em>3.6</em>
									</p>
									<div class="label_wrap">
										<span class="icon new">NEW</span>
									</div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03S682"><span>14핸즈
													샤르도네</span><span class="en">14Hands Chardonnay</span></a>
										</p>
										<p class="prd_info">미국 워싱턴 와인의 상징, 포틴핸즈의 상쾌하면서 가벼운 느낌의
											샤르도네!</p>
									</div>
									<div class="cate_label">
										<span style="background: #F6EC9C">화이트</span> <span
											style="background: #F6EC9C">미국</span> <span
											style="background: #F6EC9C">샤르도네</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<ins>27,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0EBF8">
									<a href="/shop/product/product_view?product_cd=29E165"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/resources/uploads/product/45b6a04535d0d36d8872a90f2ccfe5f6.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/resources/uploads/product/45b6a04535d0d36d8872a90f2ccfe5f6.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="/resources/uploads/product/45b6a04535d0d36d8872a90f2ccfe5f6.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_29E165 "
											id="wish_29E165" onclick="product.likeProduct('29E165');">
											<span>찜하기</span>
										</button>
									</div>
									<p class="vivino">
										VIVINO<em>3.6</em>
									</p>
									<div class="label_wrap">
										<span class="icon new">NEW</span> <span class="icon sale">SALE</span>
									</div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=29E165"><span>SET)
													클림트 키스 미니 3본입 패키지 (200ml) </span><span class="en"></span></a>
										</p>
										<p class="prd_info">- 구스타프 클림트 탄생 150주년 공식 스파클링 와인 - 사랑을
											시작한 연인들의 프로포즈를 위한 와인</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0EBF8">스파클링</span> <span
											style="background: #E0EBF8">기타구대륙</span> <span
											style="background: #E0EBF8">기타</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<ins>29,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #F4F0D4">
									<a href="/shop/product/product_view?product_cd=01A492"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/resources/uploads/product/cb5206498b8f1770eabd3a66a7eebccb.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/resources/uploads/product/cb5206498b8f1770eabd3a66a7eebccb.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="/resources/uploads/product/cb5206498b8f1770eabd3a66a7eebccb.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_01A492 "
											id="wish_01A492" onclick="product.likeProduct('01A492');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=01A492"><span>에딩거
													둔켈 330ML 병</span><span class="en">ERDINGER Dunkel 33CL BTL</span></a>
										</p>
										<p class="prd_info">엄선하여 고른 다크 몰트와 섬세하게 로스팅한 아로마는 강한 바디감의
											에딩거 둔켈을 완성합니다. 엄선된 몰트, 밀 그리고 최상의 할러타우 홉의 조화로 캐러멜, 견과류 그리고 신선한
											빵의 맛을 느낄 수 있습니다.</p>
									</div>
									<div class="cate_label">
										<span style="background: #F4F0D4">맥주</span> <span
											style="background: #F4F0D4">독일</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<ins>3,600원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #F4F0D4">
									<a href="/shop/product/product_view?product_cd=01A491"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/resources/uploads/product/15eab397d798e1dfdc8d46d85096aa14.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/resources/uploads/product/15eab397d798e1dfdc8d46d85096aa14.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="/resources/uploads/product/15eab397d798e1dfdc8d46d85096aa14.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_01A491 "
											id="wish_01A491" onclick="product.likeProduct('01A491');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=01A491"><span>에딩거
													헤페 330ML 병</span><span class="en">ERDINGER HEFE 33CL BTL</span></a>
										</p>
										<p class="prd_info">밀맥아 함량을 높여 에딩거 바이스비어 특유의 부드러움을 만들어
											내었습니다. 향기로운 아로마와 쌉쌀한 홉의 완벽한 조화 묵직한 바디감에서 나오는 세련된 특징이 바이에른 맥주의
											정수를 보여줍니다. 전통적인 방식인 병 속 발효 방식(샴페인 제조방식과 유사)으로 단순 리프레시 이상의
											상쾌함을 드립니다.</p>
									</div>
									<div class="cate_label">
										<span style="background: #F4F0D4">맥주</span> <span
											style="background: #F4F0D4">독일</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<ins>3,600원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #D7F9E2">
									<a href="/shop/product/product_view?product_cd=29E055"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/resources/uploads/product/75cd9906998e209a7be05bc260fdced3.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/resources/uploads/product/75cd9906998e209a7be05bc260fdced3.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="/resources/uploads/product/75cd9906998e209a7be05bc260fdced3.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_29E055 "
											id="wish_29E055" onclick="product.likeProduct('29E055');">
											<span>찜하기</span>
										</button>
									</div>
									<p class="vivino">
										VIVINO<em>4.0</em>
									</p>
									<div class="label_wrap">
										<span class="icon new">NEW</span> <span class="icon best">BEST</span>
										<span class="icon"> <img
											src="/resources/uploads/banner/5549da71f20c0d99a10670f3fed440fb.png"
											alt="겨울">
										</span>
									</div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=29E055"><span>SET)빌라엠로쏘
													+ 글라스2개 윈터패키지</span><span class="en">SET)VILLA M ROSSO +
													GLASS WINTER PACKAGE</span></a>
										</p>
										<p class="prd_info">국내 이태리 와인판매 No. 1</p>
										<p>2012~14년 3년 연속 조선일보 주최, 소비자의 선택 ‘가장 사랑 받는 브랜드’ 대상</p>
										<p>가장 오랜시간 사랑 받은 와인, 20대를 추억하는 국민 첫사랑 와인</p>
									</div>
									<div class="cate_label">
										<span style="background: #D7F9E2">디저트</span> <span
											style="background: #D7F9E2">이탈리아</span> <span
											style="background: #D7F9E2">기타</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<ins>24,900원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>



			<div class="section slide_prd product_lists_page">
				<h2>
					<span>BEST</span> <a
						href="/shop/product/group_product_lists?group_cd=1902"
						class="btn_more">더보기</a>

					<div class="prd_wrap">
						<ul class="n_prd_list se_list">
							<li>
								<div class="item">
									<div class="main_img" style="background: #EEC1CC">
										<a href="/shop/product/product_view?product_cd=04E089"
											class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source
												srcset="/resources/uploads/product/3e516b689bdfa0bfb560b2475dc6e3ce.png"
												media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source
												srcset="/resources/uploads/product/3e516b689bdfa0bfb560b2475dc6e3ce.png"
												media="(max-width:1023px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="/resources/uploads/product/3e516b689bdfa0bfb560b2475dc6e3ce.png"
												loading="lazy" alt=""><!-- pc이미지 --> </picture>
										</a>
										<div class="btn">
											<button type="button" class="wish wish_04E089 "
												id="wish_04E089" onclick="product.likeProduct('04E089');">
												<span>찜하기</span>
											</button>
										</div>
										<p class="vivino">
											VIVINO<em>4.1</em>
										</p>
										<div class="label_wrap">
											<span class="icon best">BEST</span>
										</div>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="/shop/product/product_view?product_cd=04E089"><span>샤또
														루빈 라이온 앤 드래곤 프로방스 로제</span><span class="en">CHATEAU
														ROUBINE LION &amp; DRAGON PROVENCE ROSE</span></a>
											</p>
											<p class="prd_info">Wine Enthusiast에 25년간 와인&amp;푸드 관련 글을
												기고해온 로저 보스 (Roger Voss)가 고득점을 준 루빈의 오가닉 로제 와인. 프로방스의 햇살에서
												포도를 지켜준다는 의미를 가진 용과 사자가 샤또의 포도나무를 지키고 있는 모습이 병모양에 표현되어 있다.</p>
										</div>
										<div class="cate_label">
											<span style="background: #EEC1CC">로제</span> <span
												style="background: #EEC1CC">프랑스</span> <span
												style="background: #EEC1CC">그르나슈</span>
										</div>
										<div class="price_area">
											<p class="price">
												<!-- 할인가 -->
												<ins>45,000원</ins>
											</p>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="item">
									<div class="main_img" style="background: #E0D8EA">
										<a href="/shop/product/product_view?product_cd=03R900"
											class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source
												srcset="/resources/uploads/product/7405a2f09e4139796f8d2ca15dc759a7.png"
												media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source
												srcset="/resources/uploads/product/7405a2f09e4139796f8d2ca15dc759a7.png"
												media="(max-width:1023px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="/resources/uploads/product/7405a2f09e4139796f8d2ca15dc759a7.png"
												loading="lazy" alt=""><!-- pc이미지 --> </picture>
										</a>
										<div class="btn">
											<button type="button" class="wish wish_03R900 "
												id="wish_03R900" onclick="product.likeProduct('03R900');">
												<span>찜하기</span>
											</button>
										</div>
										<p class="vivino">
											VIVINO<em>4.3</em>
										</p>
										<div class="label_wrap">
											<span class="icon best">BEST</span>
										</div>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="/shop/product/product_view?product_cd=03R900"><span>산
														필리포 브루넬로 디 몬탈치노 레 루체레</span><span class="en">SAN FILIPPO
														BRUNELLO DI MONTALCINO LE LUCERE</span></a>
											</p>
											<p class="prd_info">2017 빈티지, 2020 Wine Spectator 선정 TOP
												100- 3위 (2015) 2020 James Suckling 선정 Italia Top 100-30위</p>
										</div>
										<div class="cate_label">
											<span style="background: #E0D8EA">레드</span> <span
												style="background: #E0D8EA">이탈리아</span> <span
												style="background: #E0D8EA">산지오베제</span>
										</div>
										<div class="price_area">
											<p class="price">
												<!-- 할인가 -->
												<ins>199,000원</ins>
											</p>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="item">
									<div class="main_img" style="background: #E0D8EA">
										<a href="/shop/product/product_view?product_cd=03M759"
											class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source
												srcset="/resources/uploads/product/d6274c5c0c58ec4aa67fd2fa489c8c42.png"
												media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source
												srcset="/resources/uploads/product/d6274c5c0c58ec4aa67fd2fa489c8c42.png"
												media="(max-width:1023px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="/resources/uploads/product/d6274c5c0c58ec4aa67fd2fa489c8c42.png"
												loading="lazy" alt=""><!-- pc이미지 --> </picture>
										</a>
										<div class="btn">
											<button type="button" class="wish wish_03M759 "
												id="wish_03M759" onclick="product.likeProduct('03M759');">
												<span>찜하기</span>
											</button>
										</div>
										<p class="vivino">
											VIVINO<em>3.7</em>
										</p>
										<div class="label_wrap">
											<span class="icon best">BEST</span>
										</div>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="/shop/product/product_view?product_cd=03M759"><span>보리우
														빈야드 캘리포니아 카베르네소비뇽</span><span class="en">BV CALIFORNIA
														CABERNET SAUVIGNON</span></a>
											</p>
											<p class="prd_info">100년이 넘는 전통과 나파의 기준이라 불리우는 BV에서 생산하는
												BEST VALUE 캘리포니아 와인</p>
										</div>
										<div class="cate_label">
											<span style="background: #E0D8EA">레드</span> <span
												style="background: #E0D8EA">미국</span> <span
												style="background: #E0D8EA">카베르네 소비뇽</span>
										</div>
										<div class="price_area">
											<p class="price">
												<!-- 할인가 -->
												<ins>30,000원</ins>
											</p>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="item">
									<div class="main_img" style="background: #E0EBF8">
										<a href="/shop/product/product_view?product_cd=04C625"
											class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source
												srcset="/resources/uploads/product/3085_detail_036.png"
												media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source
												srcset="/resources/uploads/product/3085_detail_036.png"
												media="(max-width:1023px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="/resources/uploads/product/3085_detail_036.png"
												loading="lazy" alt=""><!-- pc이미지 --> </picture>
										</a>
										<p class="vivino">
											VIVINO<em>3.6</em>
										</p>
										<div class="label_wrap"></div>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="/shop/product/product_view?product_cd=04C625"><span>오이스터
														베이 스파클링 뀌베 브뤼</span><span class="en">OYSTER BAY SPARKLING
														CUVEE BRUT</span></a>
											</p>
											<p class="prd_info">뉴질랜드 말보로 소비뇽 블랑의 명성을 전 세계 최초로 알린 오이스터
												베이가 만들어 낸 스파클링 뀌베</p>
										</div>
										<div class="cate_label">
											<span style="background: #E0EBF8">화이트</span> <span
												style="background: #E0EBF8">뉴질랜드</span> <span
												style="background: #E0EBF8">샤르도네</span>
										</div>
										<div class="price_area">
											<p class="price">
												<ins class="out">매장문의</ins>
												<ins class="out out_price">75,000원</ins>
											</p>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="item">
									<div class="main_img" style="background: #E0EBF8">
										<a href="/shop/product/product_view?product_cd=02A679"
											class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source
												srcset="/resources/uploads/product/1952_detail_033.png"
												media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source
												srcset="/resources/uploads/product/1952_detail_033.png"
												media="(max-width:1023px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="/resources/uploads/product/1952_detail_033.png"
												loading="lazy" alt=""><!-- pc이미지 --> </picture>
										</a>
										<div class="btn">
											<button type="button" class="wish wish_02A679 "
												id="wish_02A679" onclick="product.likeProduct('02A679');">
												<span>찜하기</span>
											</button>
										</div>
										<p class="vivino">
											VIVINO<em>3.8</em>
										</p>
										<div class="label_wrap">
											<span class="icon best">BEST</span>
										</div>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="/shop/product/product_view?product_cd=02A679"><span>폴
														당장 뀌베 카르트 블랑쉬 </span><span class="en">PAUL DANGIN CUVEE
														CARTE BLANCHE</span></a>
											</p>
											<p class="prd_info">영국 왕실 납품 샴페인 하우스</p>
										</div>
										<div class="cate_label">
											<span style="background: #E0EBF8">스파클링</span> <span
												style="background: #E0EBF8">프랑스</span> <span
												style="background: #E0EBF8">샤르도네</span>
										</div>
										<div class="price_area">
											<p class="price">
												<!-- 할인가 -->
												<ins>63,700원</ins>
											</p>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="item">
									<div class="main_img" style="background: #E0D8EA">
										<a href="/shop/product/product_view?product_cd=02A856"
											class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source
												srcset="/resources/uploads/product/3082_detail_080.png"
												media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source
												srcset="/resources/uploads/product/3082_detail_080.png"
												media="(max-width:1023px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="/resources/uploads/product/3082_detail_080.png"
												loading="lazy" alt=""><!-- pc이미지 --> </picture>
										</a>
										<div class="btn">
											<button type="button" class="wish wish_02A856 "
												id="wish_02A856" onclick="product.likeProduct('02A856');">
												<span>찜하기</span>
											</button>
										</div>
										<p class="vivino">
											VIVINO<em>4.4</em>
										</p>
										<div class="label_wrap">
											<span class="icon best">BEST</span>
										</div>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="/shop/product/product_view?product_cd=02A856"><span>에스쿠도로호
														바로네사 P</span><span class="en">ESCUDO ROJO BARONESA P</span></a>
											</p>
										</div>
										<div class="cate_label">
											<span style="background: #E0D8EA">레드</span> <span
												style="background: #E0D8EA">칠레</span> <span
												style="background: #E0D8EA">카베르네 소비뇽</span>
										</div>
										<div class="price_area">
											<p class="price">
												<!-- 할인가 -->
												<ins>120,000원</ins>
											</p>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="item">
									<div class="main_img" style="background: #E0D8EA">
										<a href="/shop/product/product_view?product_cd=03S843"
											class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source
												srcset="/resources/uploads/product/61f2bb6bca59e3c281177c3f822981fb.png"
												media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source
												srcset="/resources/uploads/product/61f2bb6bca59e3c281177c3f822981fb.png"
												media="(max-width:1023px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="/resources/uploads/product/61f2bb6bca59e3c281177c3f822981fb.png"
												loading="lazy" alt=""><!-- pc이미지 --> </picture>
										</a>
										<p class="vivino">
											VIVINO<em>4.2</em>
										</p>
										<div class="label_wrap">
											<span class="icon best">BEST</span>
										</div>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="/shop/product/product_view?product_cd=03S843"><span>바르비
														브루넬로 디 몬탈치노</span><span class="en">Fattoria dei Barbi,
														Brunello di Montalcino</span></a>
											</p>
										</div>
										<div class="cate_label">
											<span style="background: #E0D8EA">레드</span> <span
												style="background: #E0D8EA">이탈리아</span> <span
												style="background: #E0D8EA">산지오베제</span>
										</div>
										<div class="price_area">
											<p class="price">
												<ins class="out">매장문의</ins>
												<ins class="out out_price">165,000원</ins>
											</p>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="item">
									<div class="main_img" style="background: #D7F9E2">
										<a href="/shop/product/product_view?product_cd=29E054"
											class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source
												srcset="/resources/uploads/product/a7d9bdb64fe550167009a33fa8655d06.png"
												media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source
												srcset="/resources/uploads/product/a7d9bdb64fe550167009a33fa8655d06.png"
												media="(max-width:1023px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="/resources/uploads/product/a7d9bdb64fe550167009a33fa8655d06.png"
												loading="lazy" alt=""><!-- pc이미지 --> </picture>
										</a>
										<div class="btn">
											<button type="button" class="wish wish_29E054 "
												id="wish_29E054" onclick="product.likeProduct('29E054');">
												<span>찜하기</span>
											</button>
										</div>
										<p class="vivino">
											VIVINO<em>3.9</em>
										</p>
										<div class="label_wrap">
											<span class="icon new">NEW</span> <span class="icon best">BEST</span>
											<span class="icon"> <img
												src="/resources/uploads/banner/5549da71f20c0d99a10670f3fed440fb.png"
												alt="겨울">
											</span>
										</div>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="/shop/product/product_view?product_cd=29E054"><span>SET)빌라엠비앙코
														+ 글라스2개 윈터패키지</span><span class="en">SET)VILLA M Bianco +
														GLASS WINTER PACKAGE</span></a>
											</p>
											<p class="prd_info">국내 이태리 와인판매 No. 1</p>
											<p>2012~14년 3년 연속 조선일보 주최, 소비자의 선택 ‘가장 사랑 받는 브랜드’ 대상</p>
											<p>가장 오랜시간 사랑 받은 와인, 20대를 추억하는 국민 첫사랑 와인</p>
										</div>
										<div class="cate_label">
											<span style="background: #D7F9E2">디저트</span> <span
												style="background: #D7F9E2">이탈리아</span> <span
												style="background: #D7F9E2">모스카토</span>
										</div>
										<div class="price_area">
											<p class="price">
												<!-- 할인가 -->
												<ins>24,900원</ins>
											</p>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="item">
									<div class="main_img" style="background: #D7F9E2">
										<a href="/shop/product/product_view?product_cd=29E055"
											class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source
												srcset="/resources/uploads/product/75cd9906998e209a7be05bc260fdced3.png"
												media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source
												srcset="/resources/uploads/product/75cd9906998e209a7be05bc260fdced3.png"
												media="(max-width:1023px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="/resources/uploads/product/75cd9906998e209a7be05bc260fdced3.png"
												loading="lazy" alt=""><!-- pc이미지 --> </picture>
										</a>
										<div class="btn">
											<button type="button" class="wish wish_29E055 "
												id="wish_29E055" onclick="product.likeProduct('29E055');">
												<span>찜하기</span>
											</button>
										</div>
										<p class="vivino">
											VIVINO<em>4.0</em>
										</p>
										<div class="label_wrap">
											<span class="icon new">NEW</span> <span class="icon best">BEST</span>
											<span class="icon"> <img
												src="/resources/uploads/banner/5549da71f20c0d99a10670f3fed440fb.png"
												alt="겨울">
											</span>
										</div>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="/shop/product/product_view?product_cd=29E055"><span>SET)빌라엠로쏘
														+ 글라스2개 윈터패키지</span><span class="en">SET)VILLA M ROSSO +
														GLASS WINTER PACKAGE</span></a>
											</p>
											<p class="prd_info">국내 이태리 와인판매 No. 1</p>
											<p>2012~14년 3년 연속 조선일보 주최, 소비자의 선택 ‘가장 사랑 받는 브랜드’ 대상</p>
											<p>가장 오랜시간 사랑 받은 와인, 20대를 추억하는 국민 첫사랑 와인</p>
										</div>
										<div class="cate_label">
											<span style="background: #D7F9E2">디저트</span> <span
												style="background: #D7F9E2">이탈리아</span> <span
												style="background: #D7F9E2">기타</span>
										</div>
										<div class="price_area">
											<p class="price">
												<!-- 할인가 -->
												<ins>24,900원</ins>
											</p>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
			</div>

			<div class="section subscribe_area">
				<div class="inner">
					<div class="write_tit">
						<em>매월 한 번 목요일,</em> 와인 이야기를 보내드립니다.
					</div>
					<div class="write_box">
						<input type="text" name="email" id="email"
							placeholder="이메일 주소를 입력해주세요.">
						<button type="button" class="btn_txt" onclick="news_sub();">
							<span>뉴스레터 </span>구독하기
						</button>
					</div>
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

		<!-- page_script -->
		<link rel="stylesheet" type="text/css"
			href="/resources/asset/css/shop/slick.css">
		<link rel="stylesheet" type="text/css"
			href="/resources/asset/css/shop/jqcloud.min.css">
		<script type="text/javascript"
			src="/resources/asset/js/jqcloud.min.js"></script>
		<script type="text/javascript" src="/resources/asset/js/slick.min.js"></script>
		<script>
			function dormant_submit() {
				location.href = "/shop/auth/change_dorment?num=";
			}

			function dormant_close() {
				$('#dormant_layer').hide();
			}

			$(document).ready(function() {
				cookiedata = document.cookie;
				if (cookiedata.indexOf("close=Y") < 0) {
					$("#main_layer").show();
				} else {
					$("#main_layer").hide();
				}

				// our pick, BEST-SELLERS 
				// $(".result_tab ul li:first").addClass('on');
				// $(".se_teb ul li:first").addClass('on');
				// $(".prd_wrap .prd_list:first").addClass('on');
				// $(".prd_wrap .se_list:first").addClass('on');
			});

			function exit() {
				if ($("#not_today").is(":checked") == true) {
					setCookie("close", "Y", 1);
				}

				// $("#main_layer").hide();
			}

			function setCookie(cname, cvalue, exdays) {
				var d = new Date();
				d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000)); //시간설정
				var expires = "expires=" + d.toUTCString();
				var temp = cname + "=" + cvalue + "; " + expires;
				document.cookie = temp;
			}

			// 뉴스레터구독
			function news_sub() {
				var regExp = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.[a-zA-Z]{2,4}$/;
				var email = $("#email").val();

				if (!email) {
					alert("이메일을 입력해주세요.");
					$("#email").focus();
					return false;
				}
				if (!regExp.test(email)) {
					alert("이메일 형식이 아닙니다.");
					$("#email").focus();
					return false;
				}

				if (confirm("뉴스레터구독을 하시겠습니다?")) {
					Csrf.Set(_CSRF_NAME_); //토큰 초기화
					$.ajax({
						type : "POST",
						url : "/shop/main/newsletter_insert_ajax",
						data : {
							email : email
						},
						success : function(res) {
							if (typeof (res) == "string") {
								res = JSON.parse(res);
							}
							if (res.status == "ok") {
								alert("뉴스레터 구독신청되었습니다.");
								$("#email").val("");
								return false;
							} else {
								alert(res.msg);
								console.log("err");
								return false;
							}
						},
						error : function(res) {
							alert("뉴스레터 구독 중 에러가 발생했습니다.");
							alert(res.responseText);
						}
					});
				}
			}

			//메인 비주얼
			$(".m_slide").slick({
				lazyLoad : 'ondemand',
				dots : false,
				arrows : false,
				slidesToShow : 2,
				autoplay : true,
				autoplaySpeed : 3000,
				responsive : [ {
					breakpoint : 1023,
					settings : {
						lazyLoad : 'ondemand',
						dots : false,
						arrows : false,
						slidesToShow : 1,
						autoplay : true,
						autoplaySpeed : 3000,
					}
				} ]
			}).on("afterChange", function(event, slick, currentSlide) {
				var crt = slick.currentSlide + 1, total = slick.slideCount;
				$(".control_box .current").text(txtZeros(crt, 2));
				$(".control_box .total").text(txtZeros(total, 2));
			});

			$(".main_layer .slider").slick({
				dots : true,
				arrows : false
			});

			// 리뷰 이미지 레이어 오픈 (유형 퍼블 추가)
			function reviewImgLayer(use_review_seq) {

				Csrf.Set(_CSRF_NAME_); //토큰 초기화
				$.ajax({
					type : "post",
					url : "/shop/product/review_view_ajax",
					data : {
						use_review_seq : use_review_seq
					},
					success : function(res) {
						if (res != "") {
							$("#review_div").empty();
							$("#review_div").append(res);

							commonUI.layer.open('review_img_layer');

							//리뷰 이미지 레이어 슬라이드
							$(".review_img_layer .rv_slide").slick({
								arrows : true,
								dots : true,
								infinite : true,
							});
						}
					},
					error : function(res) {
						//alert("error");
					}
				});
			}

			//동영상 재생버튼
			$(".btn_play").on("click", function() {
				document.getElementById("video1").play();
				$(this).remove();
			});

			$(".control_box .prev").on("click", function() {
				$(".m_slide").slick("slickPrev");
			});
			$(".control_box .next").on("click", function() {
				$(".m_slide").slick("slickNext");
			});
			var mSlideCnt = $(".m_slide .slick-slide").length - 2;
			$(".control_box .total").text(txtZeros(mSlideCnt, 2));

			//한 자리일 때 0 넣기
			function txtZeros(n, digits) {
				var zero = '';
				n = n.toString();

				if (n.length < digits) {
					for (var i = 0; i < digits - n.length; i++)
						zero += '0';
				}
				return zero + n;
			}

			//중간 배너 슬라이드
			$('.b_slide').slick({
				lazyLoad : 'ondemand',
				dots : true,
				arrows : true,
				autoplay : true,
				autoplaySpeed : 1500,
				responsive : [ {
					breakpoint : 1023,
					settings : {
						lazyLoad : 'ondemand',
						dots : true,
						arrows : false,
						autoplay : true,
						autoplaySpeed : 1500
					}
				} ]
			});

			//OUR STORIES 슬라이드
			$('.n_slide').slick({
				dots : false,
				arrows : false,
				variableWidth : true,
				slidesToScroll : 1,
				slidesToShow : 5,
				responsive : [ {
					breakpoint : 1023,
					settings : {
						dots : false,
						arrows : false,
						variableWidth : true,
						slidesToScroll : 1,
						slidesToShow : 1,
					}
				} ]
			});
			//테마와인 반응형(PC) 슬라이드
			var themeSlider = $('.theme_area .prd_list>ul');
			var themeSlickOptions = {
				centerMode : false,
				variableWidth : true,
				slidesToScroll : 1,
				slidesToShow : 3,
				infinite : true,
				dots : false,
				arrows : true,
				swipe : false,
			// autoplay: true,
			// autoplaySpeed: 1500
			};

			$(window)
					.on(
							'load resize',
							function() {
								if ($(window).width() < 1023) {
									if ($(".theme_area .prd_list>.slick-slider").length) {
										themeSlider.slick("unslick");
									}
									// if($(".select_area .prd_list>.slick-slider").length){
									//     selectSlider.slick("unslick");
									// }
								} else {
									themeSlider.not('.slick-initialized')
											.slick(themeSlickOptions);
									// selectSlider.not('.slick-initialized').slick(selectSlickOptions);
								}
							});

			//UI/UX 개편 와인 반응형(PC) 슬라이드
			var newPrdSlider = $('.slide_prd .prd_wrap>ul');
			var newPrdSlickOptions = {
				centerMode : false,
				variableWidth : true,
				slidesToScroll : 1,
				slidesToShow : 5,
				infinite : true,
				dots : false,
				arrows : true,
				swipe : false,
			};

			// OUR PICK
			$(function() {
				$(".theme_prd_list").css("display", "none");

				$('.theme_prd_list').each(function() {
					if ($(this).hasClass("on")) {
						$(this).css("display", "block");
					} else {
						$(this).css("display", "none");
					}
				});
			});

			//UI/UX 개편 와인 반응형(PC) 슬라이드 - OUR PICK
			var themeSlider = $('.slide_prd .prd_wrap .theme_prd_list ul');
			var themeSlickOptions = {
				lazyLoad : 'ondemand',
				centerMode : false,
				variableWidth : true,
				slidesToScroll : 1,
				slidesToShow : 5,
				infinite : true,
				dots : false,
				arrows : true,
				swipe : false,
			};

			$(window)
					.on(
							'load resize',
							function() {
								if ($(window).width() < 1023) {
									if ($(".slide_prd .prd_wrap>.slick-slider").length) {
										newPrdSlider.slick("unslick");
									}
								} else {
									newPrdSlider.not('.slick-initialized')
											.slick(newPrdSlickOptions);
								}
							});

			// OUR PICK
			$(".result_tab li button")
					.on(
							"click",
							function() {
								console.log("aa");
								var i = 0;
								//탭 선택 시 첫번째 슬라이드로
								if ($(".theme_con .prd_wrap .theme_prd_list .slick-slider").length) {
									$('.theme_con .theme_prd_list ul').slick(
											'slickGoTo', i);
								}

								var $this = $(this).parent();
								var index = $this.index();
								$this.addClass("on").siblings().removeClass(
										"on");

								var $outer = $this.closest('.section');
								var $current = $outer
										.find(' > .prd_wrap > .theme_prd_list.on');
								var $post = $outer.find(
										' > .prd_wrap > .theme_prd_list').eq(
										index);
								$current.removeClass('on');
								$post.addClass('on');

								$('.theme_con .theme_prd_list')
										.each(
												function() {
													if ($(this).hasClass("on")) {
														$(this).css("display",
																"block");
													} else {
														$(this).css("display",
																"none");
													}
												});
							});

			var cust_seq = '';
			var cust_seq_boolean = cust_seq ? 'Y' : 'N';

			// 뒤로가기 추가
			var pageInt = loadScrollgetCookie("pageInt");
			if (pageInt == null) {
				pageInt = 0;
			}
			var initGetList = false;

			var product = '[{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"19","gubun_cd":"151","gubun_nm":"\ub808\ub4dc \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"20","gubun_cd":"152","gubun_nm":"\ud654\uc774\ud2b8 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"21","gubun_cd":"153","gubun_nm":"\uc2a4\ud30c\ud074\ub9c1 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"22","gubun_cd":"154","gubun_nm":"\uc0f4\ud398\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"23","gubun_cd":"155","gubun_nm":"\ub85c\uc81c \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"8","gubun_cd":"101","gubun_nm":"\ud504\ub791\uc2a4 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"9","gubun_cd":"102","gubun_nm":"\uc774\ud0c8\ub9ac\uc544 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"10","gubun_cd":"103","gubun_nm":"\uc2a4\ud398\uc778 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"11","gubun_cd":"104","gubun_nm":"\ub3c5\uc77c \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"12","gubun_cd":"105","gubun_nm":"\uce60\ub808 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"13","gubun_cd":"106","gubun_nm":"\ubbf8\uad6d \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"14","gubun_cd":"107","gubun_nm":"\ud638\uc8fc \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"15","gubun_cd":"108","gubun_nm":"\ub274\uc9c8\ub79c\ub4dc \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"16","gubun_cd":"109","gubun_nm":"\uc544\ub974\ud5e8\ud2f0\ub098 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"18","gubun_cd":"111","gubun_nm":"\uae30\ud0c0\uc2e0\ub300\ub959 \uc640\uc778","file_nm3":null}]';
			var cmd_product = 'Array';
			product = JSON.parse(product);
			console.log("cmd" + cmd_product);

			/*
			function callApi(mode, param) {
				scrollVal = false;

				$
						.ajax({
							type : "get",
							url : "/shop/main/getRecommend_ajax",
							async : false,
							data : param,
							success : function(res) {
								if (!res) {
									if (mode === 'Y') {
										$(
												"#par_recom_"
														+ product[loadDataIdx]['gubun_cd'])
												.remove();
									}
								} else {
									$(
											"#par_recom_"
													+ product[loadDataIdx]['gubun_cd'])
											.show();
									$(
											"#recom_"
													+ product[loadDataIdx]['gubun_cd'])
											.append(res);

									var aLinkBtn = $(".scrollEventEle a");
									aLinkBtn
											.not('.scrollSaveEvent')
											.on(
													'click',
													function() {
														event.preventDefault();
														scrollSaveEventBinding($(
																this)
																.closest(
																		'.scrollEventEle'));

														window.location.href = $(
																this).attr(
																'href');
													});
									aLinkBtn.addClass('scrollSaveEvent');

									//하단 무한스크롤 반응형(PC) 슬라이드                
									$('.scroll_area .prd_list>ul').not(
											'.slick-initialized').slick({
										centerMode : false,
										variableWidth : true,
										slidesToScroll : 1,
										slidesToShow : 3,
										infinite : true,
										dots : false,
										arrows : true,
										swipe : false,
										responsive : [ {
											breakpoint : 1024,
											settings : {
												centerMode : false,
												variableWidth : true,
												slidesToScroll : 1,
												slidesToShow : 3,
												infinite : true,
												dots : false,
												arrows : true,
												swipe : false,
											}
										} ]
									});
								}

								console.log(pageInt);

								if (loadDataIdx < pageInt) {
									loadDataIdx += 1;
									// console.log("스크롤 실행");
									//var datatest = { 'group_cd' : product[loadDataIdx]['group_cd'], 'gubun_cd' : product[loadDataIdx]['gubun_cd'] } ;
									if (cust_seq && cmd_product) {
										var datatest = {
											'bigo' : product[loadDataIdx]['bigo']
										};
										console.log(datatest);
										callApi('Y', datatest);

									} else {
										var datatest = {
											'group_cd' : product[loadDataIdx]['group_cd'],
											'gubun_cd' : product[loadDataIdx]['gubun_cd']
										};
										callApi('N', datatest);
									}

								} else {
									loadScroll();

									if (loadDataIdx == (product.length - 1)) {
										window.removeEventListener('scroll',
												moreShowList);
									} else {
										loadDataIdx += 1;
										scrollVal = true;
									}
								}
							},
							error : function(res) {
								//alert("error");
							}
						});
			}*/

			//스크롤 바닥 감지
			window.addEventListener('scroll', moreShowList);

			var scrollVal = true; //스크롤 무한로딩으로 추가
			var loadDataIdx = 0;

			function moreShowList() {
				if ($(window).scrollTop() >= $(document).height()
						- ($(window).height() * 3.5)) {
					if (scrollVal === true) {

						// console.log("스크롤 실행");
						//var datatest = { 'group_cd' : product[loadDataIdx]['group_cd'], 'gubun_cd' : product[loadDataIdx]['gubun_cd'] } ;
						if (cust_seq && cmd_product) {
							var datatest = {
								'bigo' : product[loadDataIdx]['bigo']
							};
							//     				 console.log(datatest);
							callApi('Y', datatest);

						} else {
							var datatest = {
								'group_cd' : product[loadDataIdx]['group_cd'],
								'gubun_cd' : product[loadDataIdx]['gubun_cd']
							};
							callApi('N', datatest);
						}

						//   callApi(cust_seq_boolean, datatest);
					}
				}
			}

			// js 호출안되어 추가
			product.likeProduct = function(product_cd) {
				var now_url = location.href;

				if ($('.wish_' + product_cd).hasClass('on')) {
					$(".wish_" + product_cd).removeClass("on");
					var ajax_mode = "DEL";
				} else {
					$(".wish_" + product_cd).addClass("on");
					var ajax_mode = "ADD";
				}

				if (now_url.indexOf("/main") > -1) {
					if (now_url.indexOf("/main/main") > -1) {
						var url = "/shop/mypage/note/wish_proc_ajax?ajax_mode="
								+ ajax_mode;
					} else {
						var url = "/shop/mypage/note/wish_proc_ajax?ajax_mode="
								+ ajax_mode;
					}
				} else if (now_url.indexOf("/mypage") > -1) {
					var url = "../note/wish_proc_ajax?ajax_mode=" + ajax_mode;
				} else {
					var url = "../mypage/note/wish_proc_ajax?ajax_mode="
							+ ajax_mode;
				}

				//     	console.log(url);
				if ($("#session_id").val()) {
					Csrf.Set(_CSRF_NAME_); //토큰 초기화
					$.ajax({
						type : "POST",
						url : url,
						dataType : 'json',
						data : {
							product_cd : product_cd
						},
						success : function(res) {
							if (typeof (res) == "string") {
								res = JSON.parse(res);
							}
							if ($.trim(res.status) == "ok") {
								$('#header_like_cnt')
										.text(res.data['like_cnt']);
								return;
							} else {
								return;
							}
							return;
						},
						error : function(res) {
							if (typeof (res) == "string") {
								res = JSON.parse(res);
							}
							alert(res.responseText);
						}
					});
				} else {
					commonUI.layer.open('login_layer');
				}
			}

			var db = (document.body) ? 1 : 0;
			var scroll = (window.scrollTo) ? 1 : 0;

			function loadScrollsetCookie(name, value, expires, path, domain,
					secure) {
				var curCookie = name
						+ "="
						+ escape(value)
						+ ((expires) ? "; expires=" + expires.toGMTString()
								: "") + ((path) ? "; path=" + path : "")
						+ ((domain) ? "; domain=" + domain : "")
						+ ((secure) ? "; secure" : "");
				document.cookie = curCookie;
			}

			function loadScrollgetCookie(name) {
				var dc = document.cookie;
				var prefix = name + "=";
				var begin = dc.indexOf("; " + prefix);
				if (begin == -1) {
					begin = dc.indexOf(prefix);
					if (begin != 0)
						return null;
				} else {
					begin += 2;
				}
				var end = document.cookie.indexOf(";", begin);
				if (end == -1)
					end = dc.length;
				return unescape(dc.substring(begin + prefix.length, end));
			}

			function loadScroll() {
				if (!scroll)
					return;
				var getCurrentPd = loadScrollgetCookie("currentPd");

				//     	console.log(getCurrentPd);

				if (getCurrentPd) {
					// alert("move");
					var ar = $("[data-val=" + getCurrentPd + "]").offset().top - 200
					// alert(ar);
					setTimeout(function() {
						window.scrollTo(0, parseInt(ar))
					}, 200);

					deleteCookie('currentPd');
					deleteCookie('pageInt');
					pageInt = null;
				}
			}
			function scrollSaveEventBinding(_target) {
				//     	console.log(_target)
				loadScrollsetCookie("currentPd", _target.attr('data-val'));
				loadScrollsetCookie("pageInt", loadDataIdx);
				// setCookie("docHeight", $('#contents').height());
			}

			function deleteCookie(name) {
				document.cookie = name
						+ '=; expires=Thu, 01 Jan 1999 00:00:10 GMT;';
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
		var page = '';
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
