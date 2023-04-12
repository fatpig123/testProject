<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang="ko">

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
<!-- //회원 등급현황 레이어 -->

<!-- 알림설정 레이어 -->
<div class="layer push_layer" id="push_layer" style="display: none;">
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
<div class="layer push_lists_layer" id="push_lists_layer"
	style="display: none;">
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
								<img src="/resources/asset/images/shop/product/mb_recom_lnb.jpg"
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

	$(document).ready(function() {
		$("#loginBtn").on("click", function() {
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

			Csrf.Set(_CSRF_NAME_); //토큰 초기화
			$.ajax({
				type : 'POST',
				url : "/shop/auth/login_check",
				dataType : 'json',
				data : $("#LoginPostFrm").serialize(),
				success : function(res) {
					console.log(res);
					if (res.status == 'Y') {
						console.log(JSON.stringify(res.data));
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
						if (confirm(res.msg)) {
							// location.href = res.url;
							$('#dormant_layer').show();
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
									html += "'" + keyword_list[i]['keyword']
											+ "'";
									html += ')" style="cursor:pointer;">'
											+ keyword_list[i]['keyword']
											+ '</span>';
									html += '<button type="button" class="del_btn" onclick="del_item(';
									html += "'" + keyword_list[i]['keyword']
											+ "'";
									html += ')"></button></li>';
								}
								$("#result_list").empty();
								$("#result_list").html(html);
							} else {
								$("#result_list").empty();
								$("#result_list").html(
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
									html += "'" + keyword_list[i]['keyword']
											+ "'";
									html += ')" style="cursor:pointer;">'
											+ keyword_list[i]['keyword']
											+ '</span>';
									html += '<button type="button"  class="del_btn" onclick="del_item(';
									html += "'" + keyword_list[i]['keyword']
											+ "'";
									html += ')"></button></li>';
								}
								$("#result_list").empty();
								$("#result_list").html(html);
							} else {
								$("#result_list").empty();
								$("#result_list").html(
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
					$("#result_list").empty();
					$("#result_list").html(
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
		var form = document.searchForm;
		form.keyword.value = keyword;
		form.submit();
	}

	$('.social_login .social_btn.naver').click(
			function() {
				Cookie.Set('join_gb', 'N', 1, true);
				Cookie.Set('sns_btn_type', 'L', 1, true);
				Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
				Cookie.Set('error_url', location.href, 1, true);

				if ($('#login_return_url_param').val()) {
					Cookie.Set('login_return_url_param', $(
							'#login_return_url_param').val(), 1, true);
				}

				location.href = '/shop/auth/oauth';
			});

	$('.social_login .social_btn.kakao').click(
			function() {
				Cookie.Set('join_gb', 'K', 1, true);
				Cookie.Set('sns_btn_type', 'L', 1, true);
				Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
				Cookie.Set('error_url', location.href, 1, true);

				if ($('#login_return_url_param').val()) {
					Cookie.Set('login_return_url_param', $(
							'#login_return_url_param').val(), 1, true);
				}

				location.href = '/shop/auth/oauth';
			});

	$('.social_login .social_btn.google').click(
			function() {
				Cookie.Set('join_gb', 'G', 1, true);
				Cookie.Set('sns_btn_type', 'L', 1, true);
				Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
				Cookie.Set('error_url', location.href, 1, true);

				if ($('#login_return_url_param').val()) {
					Cookie.Set('login_return_url_param', $(
							'#login_return_url_param').val(), 1, true);
				}

				location.href = '/shop/auth/oauth';
			});

	$('.social_login .social_btn.face').click(
			function() {
				Cookie.Set('join_gb', 'F', 1, true);
				Cookie.Set('sns_btn_type', 'L', 1, true);
				Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
				Cookie.Set('error_url', location.href, 1, true);

				if ($('#login_return_url_param').val()) {
					Cookie.Set('login_return_url_param', $(
							'#login_return_url_param').val(), 1, true);
				}

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
	window.addEventListener("flutterInAppWebViewPlatformReady",
			function(event) {
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
</script>
<style>
.dk_popup r2-container{
	max-width:465px;
}
</style>
<!-- contents -->
<section id="contents" >
	<div class="lnb mypage_lnb lnb_wrap">
		<div class="pc_hidden">
			<a href="javascript:history.go(-1);" class="prev">이전</a>
			<div class="select_brand js_select" id="select_brand">
				<button type="button" class="my_value js_selectBtn"
					onclick="$(this).toggleClass('on')">
					<span>TASTING CARD 구매</span>
				</button>
				<ul class="mb_lnb_lists">
					<li><a href="/mypage/orderList">픽업내역</a></li>
						<li><a href="/mypage/wineTastingCard">시음권내역</a></li>
						<li><a href="/mypage/tabling">테이블링 내역</a></li>
						<li><a href="/shop/mypage/note/mileage_lists">나의 마일리지</a></li>
						<li><a href="/shop/mypage/recommand/recommand_expert_lists">와인추천</a></li>
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
						<!-- <li ><a href="/shop/mypage/shopping/order_pre_lists">이전주문 내역</a></li>
                    <li ><a href="/shop/mypage/shopping/order_shop_lists">오프라인 주문내역</a></li> -->
					</ul></li>
				<li><a href="#none">쇼핑수첩</a>
					<ul class="depth_02">
						<li class="on"><a href="/shop/mypage/note/giftcard_lists">나의
								기프트카드</a></li>
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
		// $(".mypage_lnb .common_lnb").remove();

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
	<div class="content mypage note giftcard_order_page top_gap"
		style="padding-top: 15px;">
		<div class="pc_lnb order_tit">
			<div class="page_tit">
				<picture>
				<source
					srcset="/resources/asset/images/shop/order/tasting_card.png"
					media="(min-width:768px)">
				<source
					srcset="/resources/asset/images/shop/order/tasting_card.png"
					media="(max-width:767px)">
				<img src="/resources/asset/images/shop/order/tasting_card.png"
					alt="스마트 픽업" draggable="false" style="border: solid 1px #ddd;">
				</picture>
			</div>
		</div>
		<div class="inner">
			<div class="top_info">
				<div class="page_tit">
					<h2 class="tit">나의 기프트카드</h2>
				</div>
				<!--                 <div class="gift_price">
                    <ul>
                        <li><p>총 보유 금액<strong class="price">0</strong></p></li>
                        <li><p>구매한 금액<strong class="price">0</strong></p></li>
                        <li><p>선물한 금액<strong class="price">0</strong></p></li>
                        <li><p>선물받은 금액<strong class="price">0</strong></p></li>
                    </ul>
                </div> -->
			</div>
			<script type="text/javascript"
				src="/resources/asset/js/wn.gift.js?v=20211207"></script>
			<form
				action="https://www.winenara.com/shop/mypage/note/giftcard_order"
				id="orderForm" name="orderForm" method="post" accept-charset="utf-8">
				<input type="hidden" name="witplus_csrf_token"
					value="03c2cfffe32506c306910afc4252878e"> <input
					type="hidden" name="order_gb" id="order_gb" value="N"> <input
					type="hidden" name="gift_gb" id="gift_gb" value="K">

				<div class="order_box tab_area"
					style="margin-top: 0px; padding-top: 0px;">
					<div class="js_tabCon on">
						<div class="g_box form_area tab_area">

							<div class="gift_way">
								<p class="form_tit">선물방법</p>
								<ul class="js_tabBtn col2">
									<li class="on"><button type="button" id="gift_gb_K"
											onclick="gift.setGiftGb('K');" class="kakao_btn">
											<span>카카오톡으로 선물</span>
										</button></li>
									<li><button type="button" id="gift_gb_S"
											onclick="gift.setGiftGb('S');" class="sms_btn">
											<span>문자(SMS)선물</span>
										</button></li>
								</ul>
								<span class="sub_txt">- 결제완료 후 카카오톡 친구를 선택할 수 있습니다.</span>
							</div>

							<div class="js_tabCon on">
								<ul>
									<li>
										<div class="l_tit">
											<label for="product_cd">TASTING CARD 금액권 선택</label>
										</div>
										<div class="form_box success">
											<select name="product_cd" id="product_cd">
												<option value="GIFT5000">TASTING CARD 5,000원</option>
												<option value="GIFT10000">TASTING CARD 10,000원</option>
												<option value="GIFT30000">TASTING CARD 30,000원</option>
												<option value="GIFT50000">TASTING CARD 50,000원</option>
												<option value="GIFT100000">TASTING CARD 100,000원</option>
											</select>
										</div>
									</li>
									<li class="kakao_on" style="display: none;">
										<div class="l_tit">
											<label for="re_name">받는사람 이름</label>
										</div>
										<div class="form_box">
											<input type="text" name="re_name" value="" id="re_name"
												placeholder="이름을 입력해주세요.">
											<p class="input_info_txt"></p>
										</div>
									</li>
									<li class="sms_on" style="display: none;">
										<div class="l_tit">
											<label for="re_hp">휴대폰번호</label>
										</div>
										<div class="form_box">
											<input type="text" name="re_hp" value="" id="re_hp"
												placeholder=" '-'제외한 숫자만 입력해주세요." class="numeric">
											<p class="input_info_txt"></p>
										</div>
									</li>
									<li class="sms_on" style="display: none;">
										<div class="l_tit">
											<label for="re_hp_check">휴대폰번호 확인</label>
										</div>

										<div class="form_box">
											<input type="text" name="re_hp_check" value=""
												id="re_hp_check" placeholder="휴대폰번호를 확인해주세요."
												class="numeric">
											<p class="input_info_txt"></p>
										</div>
									</li>
									<li class="kakao_on" style="display: none;">
										<div class="l_tit">
											<label for="gift_msg">메시지</label>
										</div>
										<div class="form_box">
											<textarea name="gift_msg" id="gift_msg"
												placeholder="내용을 입력해주세요."></textarea>
											<p class="input_info_txt"></p>
										</div>
									</li>

									<li>
										<div class="l_tit">
											<label for="gift_msg">결제수단</label>
										</div>
										<div class="form_box">
											<div class="radiobox">
												<input type="radio" name="otype_cd" id="otype_cd_20"
													value="otype_cd_20" checked=""> <label for="otype_cd_20">신용카드</label>
											</div>
											<!--div class="radiobox">
				                            <input type="radio" name="otype_cd" id="otype_cd_10" value="10">
				                            <label for="otype_cd_10">가상계좌</label>
				                        </div-->
											<div class="radiobox">
												<input type="radio" name="otype_cd" id="otype_cd_70"
													value="otype_cd_70"> <label for="otype_cd_70">카카오페이</label>
											</div>

										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="btn_area col2">
							<button type="button"
								onclick="location.href='/mypage/wineTastingCard'"
								class="btn_txt">
								<span>취소하기</span>
							</button>
							<button type="button" class="btn_txt btn_black" id="orderButton">
								<span>결제하기</span>
							</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- page_script -->
	<script>
		$(document).ready(function() {

			$(orderForm.gift_msg).on('keyup', function() {
				form_check.gift_msg(this);
			});

			$(orderForm.re_hp_check).on('keyup', function() {
				form_check.re_hp_check(this);
			});

			$(orderForm.re_name).on('keyup', function() {
				form_check.re_name(this);
			});

			$(orderForm.re_hp).on('keyup', function() {
				form_check.re_hp(this);
			});

			//기본값 추가
			gift.setOrderGb('N');
			
			
			
			
			$("#orderButton").on("click", function(e) {
				e.preventDefault();
				let csrfHeaderName = "${_csrf.headerName}";
    			let csrfTokenValue = "${_csrf.token}";
    			let tc_money = $("#product_cd").val().onlyNum();
    			let name = "${user.MName}";
    			let phone = "${user.MPhone}";
    			let email = "${user.MEmail}";
    			let pm_code = $('input[name=otype_cd]:checked').val();
    			
    			console.log(name);
    			console.log(phone);
    			console.log(email);
    			console.log(pm_code);
    			console.log(tc_money);
    			
    			let IMP = window.IMP;
                IMP.init('imp08862324');
    			
    			if (pm_code == 'otype_cd_20') {
         			IMP.request_pay({
                        //신용카드 결제시 사용할 정보 입력
         				pg: 'nice',
                        paymentCode: 'kakaopay',
                        customer_uid : name,
                        buyer_name : name,
                        buyer_tel : phone,
                        buyer_email : email,
                        name : "H-WNE 테이스팅 카드" + tc_money + "원 권",
                        amount : tc_money,
                        niceMobileV2 : true
                      }, function (rsp) {
                      if (rsp.success) {
                        var msg = '결제가 완료되었습니다.';
                        console.log(msg);
                        $.ajax({
                            url: '/order/TastingCardWrite',
                            type: 'post',
                            data: JSON.stringify({
                              tc_to: email,
                              tc_from: email,
                              tc_money: tc_money
                            }),
                            beforeSend: function (xhr) {
                              xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
                            },
                            contentType: "application/json",
                            success: function (data) {
                              console.log("주문하기 잘 넘어감");
                              let today = new Date();
                              let dto = {
                              		pickupName : name,
                              		pickupDate : today,
                              		to : phone,
                              		status : true,
                              		result : "주문완료문자전송",
                              		orderStatus : 3
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
                              window.location.href="/mypage/wineTastingCard";
                            },
                            error: function () {
                              console.log("주문하기 ajax 오류 발생");
                            }
                          });
                      }
                      else {
                        //결제 실패시
                        var msg = '결제에 실패하였습니다.';
                        msg += '에러내용 : ' + rsp.error_msg;

                        alert(msg);
                      }
                    });
         		}
    			if (pm_code == 'otype_cd_70') {
         			IMP.request_pay({
                        //카카오페이 결제시 사용할 정보 입력
                        pg: 'kakaopay.TC0ONETIME',
                        paymentCode: 'kakaopay',
                        customer_uid : name,
                        buyer_name : name,
                        buyer_tel : phone,
                        buyer_email : email,
                        name : "H-WNE 테이스팅 카드" + tc_money + "원 권",
                        amount : tc_money
                      }, function (rsp) {
                      if (rsp.success) {
                        var msg = '결제가 완료되었습니다.';
                        console.log(msg);
                        $.ajax({
                            url: '/order/TastingCardWrite',
                            type: 'post',
                            data: JSON.stringify({
                                tc_to: email,
                                tc_from: email,
                                tc_money: tc_money
                              }),
                            beforeSend: function (xhr) {
                              xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
                            },
                            contentType: "application/json",
                            success: function (data) {
                              console.log("주문하기 잘 넘어감");
                              let today = new Date();
                              let dto = {
                              		pickupName : name,
                              		pickupDate : today,
                              		to : phone,
                              		status : true,
                              		result : "주문완료문자전송",
                              		orderStatus : 3
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
                              window.location.href="/mypage/wineTastingCard";
                            },
                            error: function () {
                              console.log("주문하기 ajax 오류 발생");
                            }
                          });
                      }
                      else {
                        //결제 실패시
                        var msg = '결제에 실패하였습니다.';
                        msg += '에러내용 : ' + rsp.error_msg;

                        alert(msg);
                      }
                    });
         		}
			});
		});
	</script>
	<!-- //page_script -->

	<script type="text/javascript"
		src="/resources/asset/js/kcp/approval_key.js"></script>
	<script>
		function call_pay_form() {
			var v_frm = document.order_info;

			// 인코딩 방식에 따른 변경 -- Start
			if (v_frm.encoding_trans == undefined) {
				v_frm.action = PayUrl;
			} else {
				if (v_frm.encoding_trans.value == "UTF-8") {
					v_frm.action = PayUrl.substring(0, PayUrl.lastIndexOf("/"))
							+ "/jsp/encodingFilter/encodingFilter.jsp";
					v_frm.PayUrl.value = PayUrl;
				} else {
					v_frm.action = PayUrl;
				}
			}
			// 인코딩 방식에 따른 변경 -- End

			if (v_frm.Ret_URL.value == "") {
				/* Ret_URL값은 현 페이지의 URL 입니다. */
				alert("연동시 Ret_URL을 반드시 설정하셔야 됩니다.");
				return false;
			} else {
				v_frm.submit();
			}
		}
	</script>

	<script type="text/javascript"
		src="https://pay.kcp.co.kr/plugin/payplus_web.jsp"></script>
	<style type="text/css">
.kcpTransDiv {
	filter: alpha(opacity = 10);
	-khtml-opacity: 0.1;
	-moz-opacity: 0.1;
	opacity: 0.1;
	top: 0px;
	left: 0;
	background-color: #000000;
	width: 100%;
	height: 100%;
	position: absolute;
	z-index: 10000;
}
</style>
	<div id="kcp_content" style="background-color: white;"></div>
	<div id="kcp_mask" class="kcpTransDiv" style="display: none"></div>
	<div id="kcp_progress" class="spin_container"></div>
	<script type="text/javascript"
		src="https://pay.kcp.co.kr/plugin/js/ajax.js?ZL0XLIMJ4U0LQXMHAYX935VOJL6S8OJ5"
		charset="EUC-KR"></script>
	<script type="text/javascript"
		src="https://pay.kcp.co.kr/plugin/cross_service/extends/util.js?ZL0XLIMJ4U0LQXMHAYX935VOJL6S8OJ5"
		charset="EUC-KR"></script>
	<script type="text/javascript"
		src="https://pay.kcp.co.kr/plugin/cross_service/extends/spin.min.js?ZL0XLIMJ4U0LQXMHAYX935VOJL6S8OJ5"></script>
	<script type="text/javascript"
		src="https://pay.kcp.co.kr/plugin/js/payplus_webExe.js?ZL0XLIMJ4U0LQXMHAYX935VOJL6S8OJ5"
		charset="EUC-KR"></script>
	<script type="text/javascript"
		src="https://npay.kcp.co.kr/plugin/web_cross_hub.js?ZL0XLIMJ4U0LQXMHAYX935VOJL6S8OJ5"
		charset="EUC-KR"></script>
	<script type="text/javascript"
		src="https://npay.kcp.co.kr/js/kcp_jquery-1.8.0.js?ver=2SB8UCTOC3TL5EB0ZEI0R1RGT2AXNCGT"
		charset="EUC-KR"></script>
	<script type="text/javascript"
		src="https://npay.kcp.co.kr/js/kcp_jquery.blockUI.js" charset="EUC-KR"></script>
	<script type="text/javascript"
		src="https://npay.kcp.co.kr/js/ClientDataHandler.js?ver=2SB8UCTOC3TL5EB0ZEI0R1RGT2AXNCGT"
		charset="EUC-KR"></script>
	<script type="text/javascript" src="https://npay.kcp.co.kr/js/json2.js"
		charset="EUC-KR"></script>
	<div id="kcp_event_form">
		<form name="KCP_Auth_Hidden">
			<input name="res_cd" value="3001" type="hidden"><input
				name="res_msg" value="사용자 결제 취소" type="hidden">
		</form>
	</div>
	<script type="text/javascript"
		src="https://npay.kcp.co.kr/js/npayUtils.js?ver=2SB8UCTOC3TL5EB0ZEI0R1RGT2AXNCGT"
		charset="EUC-KR"></script>
	<script>
		/****************************************************************/
		/* m_Completepayment  설명                                      */
		/****************************************************************/
		/* 인증완료시 재귀 함수                                         */
		/* 해당 함수명은 절대 변경하면 안됩니다.                        */
		/* 해당 함수의 위치는 payplus.js 보다먼저 선언되어여 합니다.    */
		/* Web 방식의 경우 리턴 값이 form 으로 넘어옴                   */
		/****************************************************************/
		function m_Completepayment(FormOrJson, closeEvent) {
			var frm = document.order_info;

			/********************************************************************/
			/* FormOrJson은 가맹점 임의 활용 금지                               */
			/* frm 값에 FormOrJson 값이 설정 됨 frm 값으로 활용 하셔야 됩니다.  */
			/* FormOrJson 값을 활용 하시려면 기술지원팀으로 문의바랍니다.       */
			/********************************************************************/
			GetField(frm, FormOrJson);

			if (frm.res_cd.value == "0000") {
				frm.submit();
			} else {
				alert("[" + frm.res_cd.value + "] " + frm.res_msg.value);

				closeEvent();
			}
		}

		/* 표준웹 실행 */
		function jsf__pay(form) {
			try {
				KCP_Pay_Execute(form);
			} catch (e) {
				console.log(e.message);
				/* IE 에서 결제 정상종료시 throw로 스크립트 종료 */
			}
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
														yMove = startY - lastY;

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
	var page = 'giftcard_order';
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