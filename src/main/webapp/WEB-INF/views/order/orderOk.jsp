<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
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



	<input type="hidden" id="path_gb" value="WEB">

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
	<section id="contents" >
		<div class="lnb order_lnb lnb_wrap step_wrap">
			<div class="pc_hidden">
				<a href="javascript:history.go(-1);" class="prev">이전</a>
				<div class="select_brand" id="select_brand">
					<h2 class="my_value js_selectBtn">주문완료</h2>
				</div>
			</div>
			<!-- 주문서 작성페이지 -->
			<div class="pc_lnb order_tit">
				<div class="page_tit">
					<img src="/resources/asset/images/shop/order/mb_smart_pickup.jpg"
						alt="스마트 픽업" draggable="false"> </picture>
				</div>
			</div>
		</div>

		<div class="wrap">
			<div class="content order order_ok_page">
				<div class="top_txt">
					<p class="tit">
						<c:out value="${user.MName }" />
						님,<br class="pc_hidden">주문이 완료되었습니다.
					</p>
					<p>
						주문번호: <em><c:out value="${order.po_id }" /></em> (주문일 :
						<fmt:formatDate value="${order.po_register_date}" pattern="yyyy-MM-dd" type="date"/>
						)
					</p>
				</div>

				<div class="c_lists">
					<ul>
						<c:forEach items="${order.items}" var="item">
							<li>
								<div class="box ip_img">
									<picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="${item.productDetail.w_img }"
										media="(min-width:768px)">
									<!-- pc이미지 -->
									<source srcset="${item.productDetail.w_img }"
										media="(max-width:767px)">
									<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
										src="${item.productDetail.w_img }" alt=""><!-- pc이미지 -->
									</picture>
								</div>
								<div class="box con">
									<div class="more_info">
										<p class="prd_name">
											<a href="/product/item?w_id=${item.productDetail.w_id}"><c:out value="${item.productDetail.w_name_kor}"></c:out></a>
										</p>
										<span class="label" style="background: #46675c;padding-top: 5px;padding-bottom: 5px;">생산지 : <c:out value="${item.productDetail.wr_nation_kor}"></c:out></span>
										<span class="label" style="background: #46675c;padding-top: 5px;padding-bottom: 5px;">품종 : <c:out value="${item.productDetail.wv_variety_kor}"></c:out></span>
										<span class="label" style="background: #46675c;padding-top: 5px;padding-bottom: 5px;">타입 : <c:out value="${item.productDetail.w_type}"></c:out></span>
										<br>
										<div class="box price" style="margin-top: 15px;">
									<!-- <p class="sub_txt">20% 할인 남은 시간 : 1일 10시간 27분</p> -->
									<ins><fmt:formatNumber value="${item.productDetail.w_price * item.poi_quantity}" pattern="#,###" /> 원</ins>
									
									<span><c:out value="${item.poi_quantity}"></c:out> EA</span>
								</div>
									</div>

								</div>
								
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
							<dd><c:out value="${user.MName}"></c:out></dd>
						</dl>
						<dl>
							<dt>이메일</dt>
							<dd><c:out value="${user.MEmail}"></c:out></dd>
						</dl>
						<dl>
							<dt>연락처</dt>
							<dd id="orderPhone"></dd>
						</dl>
					</div>

					<div class="f_top">
						<h2>받는 사람</h2>
					</div>
					<div class="info_box">

						<dl>
							<dt>픽업자명</dt>
							<dd><c:out value="${order.po_name}"></c:out></dd>
						</dl>
						<dl>
							<dt>연락처</dt>
							<dd id="pickPhone"></dd>
						</dl>

						<!--직접픽업 -->
						<dl>
							<dt>픽업일</dt>
							<dd><fmt:formatDate value="${order.po_booking_date}" pattern="yyyy년 MM월 dd일" type="date"/></dd>
						</dl>
						<dl>
							<dt>픽업매장</dt>
							<dd><c:out value="${order.store.s_name}"></c:out></dd>
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
							<dd><fmt:formatNumber value="${order.po_total_price + order.po_mileage}" pattern="#,###" /> 원</dd>
						</dl>
						<dl>
							<dt>마일리지</dt>
							<dd>- <fmt:formatNumber value="${order.po_mileage}" pattern="#,###" /> 원</dd>
							
						</dl>
						<dl class="total">
							<dt>최종결제금액</dt>
							<dd><fmt:formatNumber value="${order.po_total_price}" pattern="#,###" /> 원</dd>
						</dl>
						<dl class="pay">
							<dt>결제수단</dt>
							<dd><c:out value="${order.payment.pm_company}"></c:out></dd>
						</dl>
					</div>
				</div>


				<div class="btn_area col2">
					<button type="button" class="btn_txt"
						onclick="location.href='/'">
						<span>계속 쇼핑하기</span>
					</button>
					<button type="button" class="btn_txt btn_black"
						onclick="location.href='/mypage/orderList'">
						<span>픽업내역 확인</span>
					</button>
				</div>
			</div>
		</div>


		<script type="text/JavaScript">
			
			$(document).ready(function() {
				
				let orderPhone = "${user.MPhone}";
				let formattedNumber1 = orderPhone.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
				$('#orderPhone').text(formattedNumber1);
				
				let pickPhone = "${order.po_phone}";
				let formattedNumber2 = pickPhone.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
				$('#pickPhone').text(formattedNumber2);
				
			});
			
			
		
			var log = '{"03M728":"1"}';
			log = JSON.parse(log);

			RC_Method({
				sign_up_data : "2023-02-28 14:36:32",
				page_type : "paymentComplete_page",
				behavior : "page_view",
				extra : {
					purchased_products : log
				}
			});
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
		var page = 'order_ok';
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