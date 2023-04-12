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
            dots: false,
            arrows: false,
            autoplay: true,
            autoplaySpeed: 8000,
            slidesToShow: 1,
        });
        $(window).scroll(function () {
            if (!$("#header").hasClass("fixed")) {
                $('.top_banner .top_banner_slide').slick('refresh');
            }
        });

        $(".top_banner.time_out").hide();
        $(".top_banner.time_out").slideDown('300');
        setTimeout(function () {
            $(".top_banner.time_out").slideUp('300');
        }, 3000);

        function onEnterLogin() {
            if (window.event.keyCode === 13) {
                $("#loginBtn").trigger("click");
            }
        }

        //모바일 gnb toggle menu
        $(".mb_gnb_area .menu_list li button").on("click", function () {
            $(this).next("ul").slideToggle();
            $(this).parent("li").siblings().find("ul").slideUp();
        });

        //테이스트 프로파일 타이틀 주석
        $(".ico_note").on("click", function () {
            $(this).toggleClass("on");
        });

        //선택한 sns 노출
        $(".sns_area li").on("click", function () {
            var selSns = $(this).find("span").attr("class");
            $(".sns_area .btn_sel span").attr("class", selSns);
            $(".sns_area").removeClass("on");
        });
        //선택한 store 노출
        $(".store_area li").on("click", function () {
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
            RC_Method({ page_type: 'product_page', behavior: 'user_action', action: 'sharing' });
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
                window.open('http://www.facebook.com/sharer.php?u=' + encodeURIComponent(url));
            } else if (e == 'K') {

                Kakao.init('b129fd9215e06b4366c1a76b2c37d98b');
                Kakao.Link.sendDefault({
                    objectType: 'feed',
                    content: {
                        title: '와인나라',
                        description: "",
                        imageUrl: 'https://www.winenara.com/resources/asset/images/shop/default/pc_logo.png',
                        link: {
                            mobileWebUrl: location.href,
                            webUrl: location.href,
                        },
                    },
                    buttons: [
                        {
                            title: '와인나라',
                            link: {
                                mobileWebUrl: location.href,
                            },
                        },
                    ]
                });
            }
        };

        $(document).ready(function () {
            $("#loginBtn").on("click", function () {
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
                Cookie.Set('login_return_url_param', location.href, 1, true);

                Csrf.Set(_CSRF_NAME_); //토큰 초기화
                $.ajax({
                    type: 'POST',
                    url: "/shop/auth/login_check",
                    dataType: 'json',
                    data: $("#LoginPostFrm").serialize(),
                    success: function (res) {
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
                            $('#dormant_last_login_date').text(res.last_login_date);
                            $('#dormant_dormant_date').text(res.dormant_date);
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
        $('#keyword').click(function () {
            get_keyword_list_ajax();
        });

        $('#mb_search_btn').click(function () {
            get_keyword_list_ajax();
        });


        //});

        function get_keyword_list_ajax() {
            var html = "";
            Csrf.Set(_CSRF_NAME_); //토큰 초기화
            $.ajax({
                type: "POST",
                url: "/shop/product/get_keyword_list_ajax",
                data: { mode: 'list' },
                success: function (res) {
                    if (typeof (res) == 'string') { res = JSON.parse(res); }
                    if (res.status == 'ok') {
                        var keyword_list = res.data.keyword_list;
                        if (keyword_list.length > 0) {
                            for (var i = 0; i < keyword_list.length; i++) {
                                html += '<li><span onclick="sch_item(';
                                html += "'" + keyword_list[i]['keyword'] + "'";
                                html += ')" style="cursor:pointer;">' + keyword_list[i]['keyword'] + '</span>';
                                html += '<button type="button" class="del_btn" onclick="del_item(';
                                html += "'" + keyword_list[i]['keyword'] + "'";
                                html += ')"></button></li>';
                            }
                            $(".result_list").empty();
                            $(".result_list").html(html);
                        } else {
                            $(".result_list").empty();
                            $(".result_list").html('<li id="nodata">최근검색어 내역이 없습니다.</li>');
                        }
                    } else {
                        //alert(res.msg);
                        return;
                    }
                },
                error: function (res) {
                    console.log("최근 검색어 리스트에 오류가 발생했습니다.");
                    // alert(res.responseText);
                }
            });
        }

        // 키워드 개별 삭제
        function del_item(keyword) {

            var html = "";
            Csrf.Set(_CSRF_NAME_); //토큰 초기화
            $.ajax({
                type: 'POST',
                url: "/shop/product/update_keyword_ajax",
                dataType: 'json',
                data: { keyword: keyword, mode: 'single' },
                success: function (res) {
                    if (typeof (res) == 'string') { res = JSON.parse(res); }

                    if (res.status == 'ok') {

                        var keyword_list = res.data.keyword_list;
                        if (keyword_list.length > 0) {
                            for (var i = 0; i < keyword_list.length; i++) {
                                html += '<li><span onclick="sch_item(';
                                html += "'" + keyword_list[i]['keyword'] + "'";
                                html += ')" style="cursor:pointer;">' + keyword_list[i]['keyword'] + '</span>';
                                html += '<button type="button"  class="del_btn" onclick="del_item(';
                                html += "'" + keyword_list[i]['keyword'] + "'";
                                html += ')"></button></li>';
                            }
                            $(".result_list").empty();
                            $(".result_list").html(html);
                        } else {
                            $(".result_list").empty();
                            $(".result_list").html('<li id="nodata">최근검색어 내역이 없습니다.</li>');
                        }
                    }
                },
                error: function (res) {
                    alert("검색 키워드 삭제시 에러가 발생했습니다.");
                    alert(res.responseText);
                }
            });
        }

        // 키워드 전체 삭제
        function all_del_item() {
            Csrf.Set(_CSRF_NAME_); //토큰 초기화
            $.ajax({
                type: 'POST',
                url: "/shop/product/update_keyword_ajax",
                dataType: 'json',
                data: { mode: 'all' },
                success: function (res) {
                    if (res.status == 'ok') {
                        $(".result_list").empty();
                        $(".result_list").html('<li id="nodata">최근검색어 내역이 없습니다.</li>');
                    }
                },
                error: function (res) {
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
            location.href = '/shop/product/search_product_lists?keyword=' + keyword
        }

        $('.social_login .social_btn.naver').click(function () {
            Cookie.Set('join_gb', 'N', 1, true);
            Cookie.Set('sns_btn_type', 'L', 1, true);
            Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
            Cookie.Set('error_url', location.href, 1, true);


            Cookie.Set('login_return_url_param', location.href, 1, true);


            location.href = '/shop/auth/oauth';
        });

        $('.social_login .social_btn.kakao').click(function () {
            Cookie.Set('join_gb', 'K', 1, true);
            Cookie.Set('sns_btn_type', 'L', 1, true);
            Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
            Cookie.Set('error_url', location.href, 1, true);


            Cookie.Set('login_return_url_param', location.href, 1, true);


            location.href = '/shop/auth/oauth';
        });

        $('.social_login .social_btn.google').click(function () {
            Cookie.Set('join_gb', 'G', 1, true);
            Cookie.Set('sns_btn_type', 'L', 1, true);
            Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
            Cookie.Set('error_url', location.href, 1, true);


            Cookie.Set('login_return_url_param', location.href, 1, true);


            location.href = '/shop/auth/oauth';
        });

        $('.social_login .social_btn.face').click(function () {
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
                type: "POST",
                url: "/shop/auth/store_setting_ajax",
                data: { "store_code": store_code },
                success: function (res) {
                    console.log(res);
                    location.reload();
                },
                error: function (res) {
                    console.log(res.responseText);
                }
            });

        }


        /*
        * 바코드 스크립트
         */
        window.addEventListener("flutterInAppWebViewPlatformReady", function (event) {
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
                type: "POST",
                url: "/shop/mypage/shopping/wine_profile_ajax",
                data: {},
                success: function (res) {
                    $(".wine_profile_layer").html(res);
                    commonUI.layer.open('wine_profile_layer');
                },
                error: function (res) {
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
            if (target.checked === true) { yn = 'Y'; }
            Csrf.Set(_CSRF_NAME_); //토큰 초기화
            $.ajax({
                type: "POST",
                url: "/shop/mypage/push/push_setting_ajax",
                dataType: 'json',
                data: { "mode": mode, "yn": yn },
                success: function (res) {
                    if (res.status == 'err') {
                        // alert(res.msg);
                    } else {
                        //해당 주석 해제하면 최초 실행시에 click 트리거가 설정되어있어서 alert이 뜰 수 있음. 주의
                        // alert(res.msg);
                    }
                }, error: function (res) {
                    alert(res.responseText);
                }
            });
        }

    </script>
	<!-- contents -->
	<section id="contents" class="mb_margin_0" style="margin-top: 0px;">
		<div class="lnb order_lnb lnb_wrap step_wrap">
			<div class="pc_hidden">
				<a href="javascript:history.go(-1);" class="prev">이전</a>
				<div class="select_brand" id="select_brand">
					<h2 class="my_value js_selectBtn">주문서 작성</h2>
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
			<script type="text/javascript"
				src="/resources/asset/js/wn.order.js?v=221122171948"></script>
			<style>
.quick_menu {
	display: none
}
</style>

			<form action="https://www.winenara.com/shop/order/order_write"
				id="orderForm" name="orderForm" method="post" accept-charset="utf-8">
				<input type="hidden" name="witplus_csrf_token"
					value="4c3f38de0322b0992836382ee40f91ac"> <input
					type="hidden" name="session_id" id="session_id"
					value="0crb3jcjl8212din36har9bqpk5qc33t">
				<div class="content order order_write_page" style="padding-top: 0px;">
					<div class="form_area left">
						<div class="f_top" style="margin-top: 0px;">
							<h2>주문자 정보</h2>
							<!-- <div class="checkbox type2">
                                        <input type="checkbox" id="info_update" name="info_update" value="Y">
                    <label for="info_update">회원정보로 자동 업데이트</label>
                                    </div> -->
						</div>
						<ul>
							<li>
								<div class="l_tit">
									<label for="or_name">이름</label>
								</div>
								<div class="form_box">
									<input type="text" id="or_name" name="or_name"
										placeholder="이름을 입력해주세요."
										value="<c:out value="${user.MName}"/>" readonly="readonly">
								</div>
							</li>
							<li>
								<div class="l_tit">
									<label for="or_email">이메일</label>
								</div>
								<div class="form_box">
									<input type="text" id="or_email" name="or_email"
										placeholder="이메일을 입력해주세요."
										value="<c:out value="${user.MEmail}"/>">
									<!-- <p class="input_info_txt">이메일을 입력해주세요.</p> -->
								</div>
							</li>
							<li>
								<div class="l_tit">
									<label for="or_hp">연락처</label>
								</div>
								<div class="form_box">
									<input type="text" id="or_hp" name="or_hp"
										placeholder="'-'제외한 숫자만 입력해주세요."
										value="<c:out value="${user.MPhone}"/>">
									<!-- <p class="input_info_txt">'-'제외한 숫자만 입력해주세요.</p> -->
								</div>
							</li>

						</ul>

						<div class="f_top">
							<h2>픽업 정보</h2>
							<div class="checkbox type2">
								<input type="checkbox" name="copy_mem_info" id="copy_mem_info"
									value="Y" onclick="order.setReAddr();"> <label
									for="copy_mem_info">주문자와 동일</label>
							</div>
						</div>
						<ul>
							<!-- <li>
                    <div class="l_tit">
                        <p>수령방법</p>
                    </div>
                    <div class="form_box">
                        <div class="radio_area col3">
                                                        <div class="radiobox type2 ">
                                <input type="radio" name="receive_way" id="pickup" checked value="P">
                                <label for="pickup">직접픽업</label>
                            </div>
                                                                                                            </div>
                    </div>
                </li> -->
							<input type="hidden" name="order_gb" value="P">

							<!-- 수령방법 - 직접픽업 선택시 -->
							<li class="receive_way_con pickup">
								<ul>
									<li>
										<div class="l_tit">
											<label for="re_name">픽업자명</label>
										</div>
										<div class="form_box">
											<input type="text" id="receipt_name" name="re_name"
												placeholder="이름을 입력해주세요.">
											<p class="input_info_txt">픽업자명을 입력해주세요.</p>
										</div>
									</li>
									<li>
										<div class="l_tit">
											<label for="re_hp">연락처</label>
										</div>
										<div class="form_box">
											<input type="text" id="receipt_tel" name="re_hp"
												placeholder="'-'제외한 숫자만 입력해주세요.">
											<p class="input_info_txt">연락처를 입력해주세요.</p>
										</div>
									</li>
									<li>
										<div class="l_tit">
											<label for="pickup_store_cd">픽업장소</label>
										</div> <input type="hidden" id="store_holiday" name="store_holiday">
										<div class="form_box">
											<select name="pickup_store_cd" id="pickup_store_cd">
												<option value="">매장 선택</option>
												<option value="scode1">더현대 서울</option>
												<option value="scode2">더현대 대구</option>
											</select>
										</div>
									</li>
									<li class="date">
										<div class="l_tit">
											<label for="receipt_date">픽업 예정일 (D-3)</label>
										</div>
										<div class="form_box">
											<div style="display: flex; justify-content: space-between;;">
												<div class="checkbox type2 cancel" id="today_checkbox">
													<input type="radio" id="r_today" name="pickup_date"
														value=""> <label for="r_today"></label>
												</div>
												<div class="checkbox type2 cancel" id="tomorrow_checkbox">
													<input type="radio" id="r_tomorrow" name="pickup_date"
														value=""> <label for="r_tomorrow"></label>
												</div>
												<div class="checkbox type2" id="next_tomorrow_checkbox">
													<input type="radio" id="r_next_tomorrow" name="pickup_date"
														value=""> <label for="r_next_tomorrow"></label>
												</div>
											</div>

											<div class="pick_area">
												<button id="store_map" type="button"
													class="btn_txt btn_black" onclick="" style="width: 100%;margin-left: 0px;margin-top: 8px;">매장위치</button>
											</div>


										</div>
									</li>

								</ul>
							</li>
							<!-- //수령방법 - 직접픽업 선택시 -->


						</ul>
					</div>
					<div class="c_lists" style="margin-top: 40px;">
						<h2 style="display: inline-block;line-height: 1.2;font-size: 20px;font-weight: 500;color: #111;margin-bottom: 20px;">상품 정보</h2>
						<ul class="productList">
							<c:forEach items="${products}" var="product">
								<li>
									<div class="box ip_img">
										<picture style="margin-top: ;margin-top: 0px;">
										<source srcset="${product.productDetail.w_img }"
											media="(min-width:768px)">
										<!-- pc이미지 -->
										<source srcset="${product.productDetail.w_img }"
											media="(max-width:767px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="${product.productDetail.w_img }" alt=""><!-- pc이미지 -->
										</picture>
									</div>
									<div class="box con">
										<div class="more_info">
											<p class="prd_name" style="margin-bottom: 5px;">
												<a href="/product/item?w_id=${product.productDetail.w_id}"><c:out value="${product.productDetail.w_name_kor }"></c:out></a>
											</p>
											<div id="storeAmount${product.productDetail.w_id}">
<%-- 												<span class="label" style="background: #46675c"> <c:out value="${product.productDetail.stocks[1].store.s_name}" /> : <c:out value="${product.productDetail.stocks[1].sws_stock}" /> 개</span> --%>
<%-- 												<span class="label" style="background: #46675c"> <c:out value="${product.productDetail.stocks[0].store.s_name}" /> : <c:out value="${product.productDetail.stocks[0].sws_stock}" /> 개</span> --%>
<!-- 												<br> -->
											</div>
											<div class="quantity type2" style="margin-top: 5px;" id="amount${product.productDetail.w_id}">
												<input type="hidden" value="${product.productDetail.w_price}">
												<button type="button" class="min"
													onclick="change_qty(this, -1, ${product.productDetail.w_price}, 0,${product.productDetail.w_price} )">빼기</button>
												<input type="text" class="qty" value="1" readonly="readonly" id="qty${product.productDetail.w_id}">
												<button type="button" class="plus"
													onclick="change_qty(this, 1, ${product.productDetail.w_price}, 0,${product.productDetail.w_price} )">추가</button>
											</div>


										</div>
										<div class="box price_amount">
											<div class="box price" style="display: flex;margin-top: 1px;">
												<ins class="supply_ins" style="margin-top: 5px;margin-right: 10px;" id="supply_ins${product.productDetail.w_id}">
													<fmt:formatNumber value="${product.productDetail.w_price}"
														pattern="#,###" />
													 원
												</ins>
												<p class="amount" style="margin-top: 5px;color:#808080;">
													<fmt:formatNumber value="${product.productDetail.w_price}"
														pattern="#,###" />
													 원
												</p>
											</div>
										</div>
										<input type="hidden" id="cNo" name="cNo"
											value="${product.w_id }"> <input type="hidden"
											id="qty${product.w_id}" name="qty${product.w_id}"
											value="${product.quantity }"> <input type="hidden"
											id="sum_product_price${product.w_id }"
											name="sum_product_price${product.w_id }"
											value="${product.productDetail.w_price * product.quantity}">
										<!-- 합계액 -->
										<input type="hidden" id="product_cd${product.w_id }"
											name="product_cd${product.w_id }" value="04E381"> <input
											type="hidden" id="reserve_price${product.w_id }"
											name="reserve_price${product.w_id }" value="0">
										<!-- 상품별 적립금 -->
								</li>


							</c:forEach>
						</ul>
					</div>
					<div class="form_area right">
						<div class="f_top">
							<h2>주문계산기</h2>
						</div>
						<ul>
							<li class="mileage">
								<div class="l_tit">
									<label for="mileage">마일리지</label>
								</div>
								<div class="form_box">
									<div class="ip_box">
										<input type="text" id="use_reserve" name="use_reserve"
											value="0" class="numeric" title="사용할 마일리지">
									</div>
									<p class="input_info_txt">
										(<span class="info"> <fmt:formatNumber value="${user.MMileage}" pattern="#,###" /> P
										</span> 사용가능 )
									</p>
									<div class="checkbox type2">
										<input type="checkbox" id="all_use_reserve" value="Y">
										<label for="all_use_reserve">전액사용</label>
									</div>
								</div>
							</li>

						</ul>


						<input type="hidden" id="mb_reserve" name="mb_reserve"
							value="${user.MMileage }"> <input type="hidden"
							id="order_origin_price" name="order_origin_price" value="">


						<div class="f_top">
							<h2>결제정보</h2>
						</div>
						<div class="t_price_info">
							<dl>
								<dt>총 구매금액</dt>
								<dd id="order_price_dd"></dd>
							</dl>
							<dl>
								<dt>마일리지</dt>
								<dd id="reserve_price_dd">- 0원</dd>
							</dl>
							<dl class="total">
								<dt>최종결제금액</dt>
								<dd id="finish_price_span"></dd>
							</dl>

							<dl class="pay">
								<dt>결제수단</dt>
								<dd>
									<div class="radiobox type2">
										<input type="radio" name="otype_cd" id="otype_cd_20"
											value="otype_cd_20"> <label for="otype_cd_20">신용카드</label>
									</div>
									<div class="radiobox type2">
										<input type="radio" name="otype_cd" id="otype_cd_70"
											value="otype_cd_70"> <label for="otype_cd_70">카카오페이</label>
									</div>
								</dd>
							</dl>
						</div>
						<!-- <p class="txt">
                - 가상계좌, 실시간계좌이체 중 세금계산서 발행을 원하실 경우 상단 ‘배송 시 요구사항’에 메모하시거나 1:1 게시판에 요청하여 주시기 바랍니다.<br>
                - 부가세법 시행령에 따라 지출증빙용 현금영수증을 신청하신 경우 세금계산서 발급이 가능하지 않습니다.
            </p> -->
					</div>

					<div class="btn_area col2">
						<button type="button" class="btn_txt"
							onclick="location.href='/mypage/cartList'">
							<span>취소</span>
						</button>
						<button type="button" class="btn_txt btn_black" id="doOrderBtn">
							<span>주문하기</span>
						</button>
					</div>
				</div>

				<!-- 매장위치 레이어 -->
				<div class="layer store_layer" id="store_layer">
					<div class="display_table">
						<div class="table_cell">
							<div class="layer_area">
								<button type="button" class="layer_close"
									onclick="commonUI.layer.close()">
									<span>Layer Close</span>
								</button>
								<div class="layer_con">
									<div id="daumRoughmapContainer1678343989347"
										name="daumRoughmap"
										class="root_daum_roughmap root_daum_roughmap_landing"
										style="width: 640px;"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- //매장위치 레이어 -->
			</form>
		</div>

		<!-- kakao 지도 -->

		<script charset="UTF-8" class="daum_roughmap_loader_script"
			src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
		<script charset="UTF-8"
			src="https://t1.daumcdn.net/kakaomapweb/place/jscss/roughmap/6af7869e/roughmapLander.js"></script>
		<script charset="UTF-8">

            function openStoreLayout(code, key) {
                $("div[name='daumRoughmap']").empty();
                $("div[name='daumRoughmap']").attr("id", "daumRoughmapContainer" + code);
                console.log(code);
        		console.log(key);
                new daum.roughmap.Lander({
                	"timestamp" : code,
            		"key" : key,
            		"mapWidth" : "640",
            		"mapHeight" : "360"
            	}).render();

                commonUI.layer.open('store_layer', { bg: true, alert: true });
            }
            
			
        </script>
		<!-- //kakao 지도 -->

		<!-- DAUM 주소 API -->
		<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
		<script charset="UTF-8" type="text/javascript"
			src="//t1.daumcdn.net/postcode/api/core/221018/1666013742754/221018.js"></script>
		<div id="daum_layer"
			style="display: none; position: fixed; overflow: hidden; z-index: 101; -webkit-overflow-scrolling: touch;">
			<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
				id="btnCloseLayer"
				style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
				onclick="Address.Close()" alt="닫기 버튼">
		</div>
		<!-- DAUM 주소 API -->

		<!-- page_script -->

		<script>
			
			function isEmpty(str){
    			if(typeof str == "undefined" || str == null || str == "")
    				return true;
    			else
    				return false ;
    		}
		
        	// 픽업 날짜 계산
            const WEEKDAY = ['일', '월', '화', '수', '목', '금', '토'];
            
            for (var i = 1; i <= 3; i++) {
            	
            	let today = new Date();
				let now = new Date(today.setDate(today.getDate() + i));
				let year = now.getFullYear();
				let month = ('0' + (now.getMonth() + 1)).slice(-2);
				let date = ('0' + now.getDate()).slice(-2);
            	let day = WEEKDAY[now.getDay()];
            	
            	if (i==1) {
            		$("label[for='r_today']").text(month  + '월' + date + '일' + ' (' + day + ')');
            		$("#r_today").attr("value", year + '/' + month + '/' + date);
            	}
            	if (i==2) {
            		$("label[for='r_tomorrow']").text(month  + '월' + date + '일' + ' (' + day + ')');
            		$("#r_tomorrow").attr("value", year + '/' + month + '/' + date);
            	}
            	else {
            		$("label[for='r_next_tomorrow']").text(month  + '월' + date + '일' + ' (' + day + ')');
            		$("#r_next_tomorrow").attr("value", year + '/' + month + '/' + date);
            	}
            }
            // 픽업 날짜 계산 끝
            
            // 총 가격 계산
            
			let total_price = 0;
            
         	<c:forEach items="${products}" var="product">
         		total_price += ${product.productDetail.w_price};
         	</c:forEach>
         	$("#order_origin_price").val(total_price); 
         	console.log("안녕");
         	console.log(total_price);
         	$("#order_price_dd").text(total_price.toLocaleString('ko-KR') + ' 원');
         	$("#order_price_span").text(total_price.toLocaleString('ko-KR') + ' 원');	
         	let used_mileage = $("#use_reserve").val();
         	$("#reserve_price_dd").text('- ' + used_mileage.toLocaleString('ko-KR') + ' 원');
         	$("#finish_price_span").text(total_price.toLocaleString('ko-KR') + ' 원');
         	$("#finish_price_span").text(($("#order_price_dd").text().onlyNum() - used_mileage).toLocaleString('ko-KR') + ' 원');
         	
			$("#use_reserve").on('propertychange change keyup paste input', function() {
				if(isEmpty($("#use_reserve").val())) {
					console.log('에베베')					
					$("#finish_price_span").text(Functions.NumberFormat(total_price) + ' 원');	
				}
				else {
					var test = $("#use_reserve").val().onlyNum();
					if (test < 1000) return false;
					else if (test > ${user.MMileage}) return false;
					console.log('왜 이러지');
					$("#reserve_price_dd").text('- ' + Functions.NumberFormat(test) + ' 원');
					$("#finish_price_span").text(Functions.NumberFormat($("#order_price_dd").text().onlyNum() - test) + ' 원');
				}
			});
         	
         	$("#all_use_reserve").on("change",function(e){
				console.log("안녕");
				console.log(used_mileage);
				
				if($(this).is(":checked") && ($("#mb_reserve").val()>=1000) ){
					var mb_reserve = $("#mb_reserve").val().onlyNum();
					
					console.log(total_price);
					console.log(mb_reserve);
					
					if(mb_reserve >= total_price){
						console.log("첫 if");
						$("#use_reserve").val(Functions.NumberFormat(total_price));
					}else{
						if(mb_reserve < order_origin_price ){
							console.log("두번째 if");
							$("#use_reserve").val(Functions.NumberFormat(mb_reserve));
						}else{
							console.log("첫 else 문");
							$("#use_reserve").val(Functions.NumberFormat(mb_reserve));
							$("#reserve_price_dd").text('- ' + Functions.NumberFormat(mb_reserve) + ' 원');
							console.log('총가격' + total_price);
							console.log('마일리지' + mb_reserve);
							$("#finish_price_span").text(Functions.NumberFormat($("#order_price_dd").text().onlyNum() - mb_reserve) + ' 원');
							$("#reserve_price_dd").text('- ' + mb_reserve.toLocaleString('ko-KR') + ' 원');
						}
					}
					
				}else{
					$("#reserve_price_dd").text("- 0원");
					$("#use_reserve").val(0);
					var mb_reserve = $("#mb_reserve").val().onlyNum();
					console.log('총가격' + total_price);
					console.log('마일리지' + mb_reserve);
					$("#finish_price_span").text(Functions.NumberFormat($("#order_price_dd").text().onlyNum()) + ' 원');
					
					if($(this).prop("checked") == true){
						swalert('마일리지는 1000P부터 사용가능합니다.');
						$(this).prop("checked", false);
					}
				}
         	});
         	
         	function swalert(text){
		    	  Swal.fire({
		    	  text: text
		    	});
		    }
         	
         	function imgAlert(str){
		    	  Swal.fire({
		    	  html : str
		    	});
		    }
         	
         	// 총 가격 계산
            
         	// 주문하기
         	$(document).on("click", "#doOrderBtn", function(e) {
         		e.preventDefault();
         		
         		let csrfHeaderName = "${_csrf.headerName}";
    			let csrfTokenValue = "${_csrf.token}";
    			let po_booking_date = $('input[name=pickup_date]:checked').val();
        		let po_status = 1;
        		let po_total_price = $("#finish_price_span").text().onlyNum();
        		let m_email = $("#or_email").val();
        		let po_mileage = $("#reserve_price_dd").text().onlyNum();
        		let po_phone = $("#receipt_tel").val();
        		let po_name = $("#receipt_name").val();
        		let pm_code = $('input[name=otype_cd]:checked').val();
        		let s_code = $('#pickup_store_cd').val();
    				
        		if ($('#btn_del').parents('li:visible').length) {
         		   	console.log("하이하");
         		   	imgAlert("재고가 품절된 와인이 포함되었습니다.<br>품절 와인을 삭제해주세요.");
         		   	return false;
         		}
         		else if (isEmpty(po_name)) {
   					swalert('픽업자명을 입력해주세요');
   					return false;
       			}
       			else if (isEmpty(po_phone)) {
       				swalert('픽업자 휴대폰 번호를 입력해주세요');
       				return false;
       			}
       			else if (isEmpty(po_booking_date)) {
       				swalert('픽업 날짜를 지정해주세요.');
       				return false;
       			}
       			else if (isEmpty(pm_code)) {
       				swalert('결제 방법을 지정해주세요.');
       				return false;
       			}
       			else {
        			console.log(po_phone);
        			console.log(po_booking_date);
        			console.log(po_total_price);
        			console.log(po_name);
        			console.log(po_phone);
        			console.log(pm_code);
        			console.log(m_email);
        			console.log(s_code);
        			
        			/* let gaOrderArrayArg = new Array();
        			<c:forEach items="${products}" var="product">
        				var gaOrderGoodsinfo = new Object();
        				gaOrderGoodsinfo.w_id = ${product.w_id};
        		        gaOrderGoodsinfo.poi_quantity = $("#qty"+${product.w_id}).val();
        		        gaOrderArrayArg.push(gaOrderGoodsinfo);
             		</c:forEach> */
             		
             		var productsArray = $("ul.productList li:not(:hidden)").map(function() {
             			  var productId = $(this).find("#cNo").val();
             			  var productCount = parseInt($(this).find(".qty").val());
             			  return { w_id: productId, poi_quantity: productCount};
             			}).get();
             		var nameArray = $("ul.productList li:not(:hidden)").map(function() {
           			  var productName = $(this).find('a').text();
           			  return {w_name : productName };
           			}).get();
             		/* console.log(gaOrderArrayArg); */
             		console.log(productsArray);
             		let kakaoName = nameArray[0].w_name;
             		if (nameArray.length != 1) {
						kakaoName += " 외" + (nameArray.length - 1) + " 건";             			
             		}
             		console.log(kakaoName);
             		var IMP = window.IMP;
                    IMP.init('imp08862324');
                    
                    	
                    
             		if (pm_code == 'otype_cd_20') {
             			IMP.request_pay({
                            //신용카드 결제시 사용할 정보 입력
             				pg: 'nice',
                            paymentCode: 'kakaopay',
                            customer_uid : po_name,
                            buyer_name : po_name,
                            buyer_tel : po_phone,
                            buyer_email : m_email,
                            name : kakaoName,
                            amount : po_total_price,
                            niceMobileV2 : true
                          }, function (rsp) {
                          if (rsp.success) {
                            var msg = '결제가 완료되었습니다.';
                            console.log(msg);
                            $.ajax({
                                url: '/order/orderWrite',
                                type: 'post',
                                data: JSON.stringify({
                                  po_booking_date: po_booking_date,
                                  po_status: po_status,
                                  po_total_price: po_total_price,
                                  m_email: m_email,
                                  s_code: s_code,
                                  po_mileage: po_mileage,
                                  po_phone: po_phone,
                                  pm_code: pm_code,
                                  po_name: po_name,
                                  items: productsArray
                                }),
                                beforeSend: function (xhr) {
                                  xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
                                },
                                contentType: "application/json",
                                success: function (data) {
                                  console.log("주문하기 잘 넘어감");
                                  console.log(data);
                                  let dto = {
                                		pickupName : data.po_name,
                                		pickupDate : data.po_booking_date,
                                		to : data.po_phone,
                                		status : true,
                                		result : "주문완료문자전송"
                                  };
                                  $.ajax ({
                    				  url	: "/api/order/complete",
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
                                  window.location.href="/order/orderOk?po_id="+data.po_id;
                                  
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
                            customer_uid : po_name,
                            buyer_name : po_name,
                            buyer_tel : po_phone,
                            buyer_email : m_email,
                            name : kakaoName,
                            amount : po_total_price

                        }, function (rsp) {
                        	if (rsp.success) {
                            	var msg = '결제가 완료되었습니다.';
                            	console.log(msg);
                            	$.ajax({
                                	url: '/order/orderWrite',
                                	type: 'post',
                                	data: JSON.stringify({
                                 	po_booking_date: po_booking_date,
                                  	po_status: po_status,
                                  	po_total_price: po_total_price,
                                  	m_email: m_email,
                                  	s_code: s_code,
                                  	po_mileage: po_mileage,
                                 	po_phone: po_phone,
                                  	pm_code: pm_code,
                                  	po_name: po_name,
                                  	items: productsArray
                                }),
                                beforeSend: function (xhr) {
                                  xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
                                },
                                contentType: "application/json",
                                success: function (data) {
                                  console.log("주문하기 잘 넘어감");
                                  console.log(data);
                                  let dto = {
    									pickupId : data.po_id,                            		  
                                  		pickupName : data.po_name,
                                  		pickupDate : data.po_booking_date,
                                  		to : data.po_phone,
                                  		status : true,
                                  		result : "주문완료문자전송",
                                  		orderStatus : 1
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
                                   window.location.href="/order/orderOk?po_id="+data.po_id;
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
                    }
         	});
         	
            $(".datepicker").on("click", function () {
                if ($("#pickup_store_cd").val() == '') {
                    swalert('수령 장소를 먼저 선택해주세요.');
                    $(".ui-datepicker").hide();
                    return;
                } else {
                    $(".ui-datepicker").show();
                }
            });

            //수령일 - 선택
            $("#receipt_date").on("change", function () {
                $("#r_day_pick").prop("checked", true);
                $("#r_day_pick").val($(this).val());

                var date_d = new Date($(this).val()).getDay();
                var date_mm = $(this).val().split('-')[1];
                var date_dd = $(this).val().split('-')[2];

            });


            $("#store_map").on("click", function () {
                if ($("#pickup_store_cd").val() == '') {
                	swalert('수령 장소를 먼저 선택해주세요.');

                    $("#r_today").prop("checked", false);
                    $("#r_tomorrow").prop("checked", false);
                    $("#r_next_tomorrow").prop("checked", false);
                    return;
                }
            });

            $("#r_today, #r_tomorrow, #r_next_tomorrow").on("click", function () {
                if ($("#pickup_store_cd").val() == '') {
                	swalert('수령 장소를 먼저 선택해주세요.');

                    $("#r_today").prop("checked", false);
                    $("#r_tomorrow").prop("checked", false);
                    $("#r_next_tomorrow").prop("checked", false);
                    return;
                }
            });
			
            // 품절 상품 삭제
            $(document).on("click", "#btn_del", function(){
            	$(this).parents("li").hide();
            	console.log("삭제 버튼 클릭");
            	var testPrice = 0;
            	var tmp = 0;
            	$('ul.productList li').each(function() {
            		  if ($(this).css('display') !== 'none') { // check if li is visible
            		    var price = parseFloat($(this).find('.supply_ins').text().onlyNum());
            		 	console.log(price);
            		    testPrice += price;
            		  }
            		  else {
            			tmp += 1;
            			console.log(tmp);
            		  }
            	});
            	console.log(tmp);
            	console.log($('ul.productList li').length);
            	if ($('ul.productList li').length == tmp) {
            		Swal.fire({
		    	  	html : "픽업 예약 가능한 와인이 없습니다.<br>픽업 예약 할 와인을 다시 선택해주세요."
		    		}).then((willConfirm) => {
		    		    if (willConfirm) {
		    		        // If "Confirm" button is clicked, go back to the previous page
		    		       	console.log("ddddd");
		    		        window.history.back();
		    		      }
		    		    });
            		setTimeout(function() {
            	        window.history.back();
            	      }, 2000); // Delay of 2 seconds (2000 milliseconds)     		
            	}
            	console.log("testPrice : " + testPrice);
            	$("#order_price_dd").empty();
        		$("#order_price_dd").text(testPrice.toLocaleString()+'원');
        		$("#finish_price_span").empty();
        		$("#finish_price_span").text(testPrice.toLocaleString()+'원');

            });
            
            //수령장소 변경시
            $("#pickup_store_cd").on("change", function () {
            	console.log("안녕");
                $("#receipt_date").val('');
                $("#r_day_pick").prop("checked", false);
                $("#r_day_pick").val('');
                console.log(this.value);
                let storeAmountArr = new Array();
                
                if (this.value == 'scode1') {
                	$("#store_map").attr("onclick", "openStoreLayout('1678343989347','2ezb2');");
                	$('ul.productList li:hidden').show();
                	console.log("더현대 서울지점 선택");
                	let tPrice = 0;
                	<c:forEach items="${products}" var="list">
                		tPrice += ${list.productDetail.w_price};
                		$("#supply_ins"+${list.productDetail.w_id}).empty();
                		$("#supply_ins"+${list.productDetail.w_id}).text(`<fmt:formatNumber value="${list.productDetail.w_price}" pattern="#,###" />원`);
                		if (${list.productDetail.stocks[1].sws_stock} == 0) {
                			imgAlert('재고가 품절된 와인이 있습니다.<br>품절 와인을 삭제해주세요.');
                			$("#amount"+${list.productDetail.w_id}).empty();
                			var btn = `<a href="#" id="btn_del" style="width: 100px;line-height: 28px;border: 1px solid #ddd;color: #555; text-align: center;">삭제</a>`;
                			$("#amount"+${list.productDetail.w_id}).append(btn);
                			$("#storeAmount"+${list.productDetail.w_id}).empty();
	                		/* $("#qty"+${list.productDetail.w_id}).val('1'); */
	                		var temp = `
	                			<span class="label" style="background: #edc5e0;padding-top: 5px;padding-bottom: 5px;"> <c:out value="${list.productDetail.stocks[1].store.s_name}" /> : <c:out value="${list.productDetail.stocks[1].sws_stock}" /> 개</span><br>
	                				  `;
	                		$("#storeAmount"+${list.productDetail.w_id}).append(temp);
                		}
                		else {
                			$("#amount"+${list.productDetail.w_id}).empty();
                			var test = `
                				<button type="button" class="min"
								onclick="change_qty(this, -1, ${list.productDetail.w_price}, 0,${list.productDetail.w_price} )">빼기</button>
							<input type="text" class="qty" value="1" readonly="readonly" id="qty${list.productDetail.w_id}">
							<button type="button" class="plus"
								onclick="change_qty(this, 1, ${list.productDetail.w_price}, 0,${list.productDetail.w_price} )">추가</button>
										`;
							$("#amount"+${list.productDetail.w_id}).append(test);
							$("#storeAmount"+${list.productDetail.w_id}).empty();
	                		$("#qty"+${list.productDetail.w_id}).val('1');
	                		var temp = `
	                			<span class="label" style="background: #46675c;padding-top: 5px;padding-bottom: 5px;"> <c:out value="${list.productDetail.stocks[1].store.s_name}" /> : <c:out value="${list.productDetail.stocks[1].sws_stock}" /> 개</span><br>
	                				  `;
	                		$("#storeAmount"+${list.productDetail.w_id}).append(temp);
                		}
                		
                    </c:forEach>
                    console.log(tPrice);
                    $("#order_price_dd").empty();
            		$("#order_price_dd").text(tPrice.toLocaleString()+'원');
            		$("#finish_price_span").empty();
            		$("#finish_price_span").text(tPrice.toLocaleString()+'원');
                }
                else {
                	$("#store_map").attr("onclick", "openStoreLayout('1678344902522','2ezbu');");
                	console.log("더현대 대구지점 선택");
                	$('ul.productList li:hidden').show();
                	let tPrice = 0;
                	<c:forEach items="${products}" var="list">
            			tPrice += ${list.productDetail.w_price};
            			$("#supply_ins"+${list.productDetail.w_id}).empty();
                		$("#supply_ins"+${list.productDetail.w_id}).text(`<fmt:formatNumber value="${list.productDetail.w_price}" pattern="#,###" />원`);
                		if (${list.productDetail.stocks[0].sws_stock} == 0) {
            				imgAlert('재고가 품절된 와인이 있습니다.<br>품절 와인을 삭제해주세요.');
            				$("#amount"+${list.productDetail.w_id}).empty();
            				var btn = `<a href="#" id="btn_del" style="width: 100px;line-height: 28px;border: 1px solid #ddd;color: #555; text-align: center;">삭제</a>`;
                			$("#amount"+${list.productDetail.w_id}).append(btn);
            				$("#storeAmount"+${list.productDetail.w_id}).empty();
	                		/* $("#qty"+${list.productDetail.w_id}).val('1'); */
	                		var temp = `
	                			<span class="label" style="background: #edc5e0;padding-top: 5px;padding-bottom: 5px;"> <c:out value="${list.productDetail.stocks[0].store.s_name}" /> : <c:out value="${list.productDetail.stocks[0].sws_stock}" /> 개</span><br>
	                				  `;
	                		$("#storeAmount"+${list.productDetail.w_id}).append(temp);
            			}
                		else {
                			$("#amount"+${list.productDetail.w_id}).empty();
                			var test = `
                				<button type="button" class="min"
								onclick="change_qty(this, -1, ${list.productDetail.w_price}, 0,${list.productDetail.w_price} )">빼기</button>
							<input type="text" class="qty" value="1" readonly="readonly" id="qty${list.productDetail.w_id}">
							<button type="button" class="plus"
								onclick="change_qty(this, 1, ${list.productDetail.w_price}, 0,${list.productDetail.w_price} )">추가</button>
										`;
							$("#amount"+${list.productDetail.w_id}).append(test);
							$("#storeAmount"+${list.productDetail.w_id}).empty();
	                		$("#qty"+${list.productDetail.w_id}).val('1');
	                		var temp = `
	                			<span class="label" style="background: #46675c;padding-top: 5px;padding-bottom: 5px;"> <c:out value="${list.productDetail.stocks[0].store.s_name}" /> : <c:out value="${list.productDetail.stocks[0].sws_stock}" /> 개</span><br>
	                				  `;
	                		$("#storeAmount"+${list.productDetail.w_id}).append(temp);
                		}
                    </c:forEach>
                    $("#order_price_dd").empty();
            		$("#order_price_dd").text(tPrice.toLocaleString()+'원');
            		$("#finish_price_span").empty();
            		$("#finish_price_span").text(tPrice.toLocaleString()+'원');
                }
                
            });

            //수령방법 - 선택한 수령방법 컨텐츠만 노출
            var receiveId = $("input[name='receive_way']");
            receiveId.change(function () {
                $check_val = $("input[name='receive_way']:checked").val();

                if ($check_val != 'P') {
                    if ($check_val == 'P') {
                        alert("매장 선택을 온라인으로 변경해주세요.");
                    } else if ($check_val == 'V') {
                        alert("매장 선택 후 매장 주문으로 주문해주세요.");
                    } else if ($check_val == 'D') {
                        alert("해당 상품은 택배 배송이 불가합니다.");
                    }

                    $("input[name='receive_way']").each(function () {
                        if ($(this).val() == 'P') {
                            $(this).prop("checked", true);
                        }
                    });

                    return;
                }

                var receiveCkdId = $("input[name='receive_way']:checked").attr("id"),
                    receiveCon = $("." + receiveCkdId);

                $(".receive_way_con").hide();
                receiveCon.show();

                if (receiveCkdId == "store") {
                    $(".t_price_info .pay").hide();
                } else {
                    $(".t_price_info .pay").show();
                }

                $("input[name='order_gb']").val(receiveId.val());
            });

            //배송지선택 - 이전주문 배송지일 때만 셀렉트 노출
            var addrId = $("input[name='shipping_addr']");
            addrId.change(function () {
                var addrCkdId = $("input[name='shipping_addr']:checked").attr("id");

                if (addrCkdId == "record_addr") {
                    $("#addr_sel").show();
                } else {
                    $("#addr_sel").hide();
                }
            });


            //숫자만 입력
            $("#or_hp, #receipt_tel, #re_hp").bind("change keyup input", function (e) {
                this.value = this.value.replace(/[^0-9]/g, '');      //숫자만
            });

            $(document).ready(function () {
                //주문 스크립트 호출
                order.initOrder();

                $(orderForm.or_name).on('keyup', function () {
                    form_check.or_name(this);
                });

                $(orderForm.or_email).on('keyup', function () {
                    form_check.or_email(this);
                });

                $(orderForm.or_hp).on('keyup', function () {
                    form_check.or_hp(this);
                });

                $(orderForm.re_name).on('keyup', function () {
                    form_check.re_name(this);
                });

                $(orderForm.re_hp).on('keyup', function () {
                    form_check.re_hp(this);
                });
            });

            $("#openCouponList").on("click", function () {
                alert('쿠폰을 사용할 수 없는 상품이 포함되어 있습니다.');

                if (fnSaleDisabled1()) {
                    commonUI.layer.open('coupon_layer', { bg: true, alert: true });
                    searchCouponData();
                }
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
                }
                else {
                    if (v_frm.encoding_trans.value == "UTF-8") {
                        v_frm.action = PayUrl.substring(0, PayUrl.lastIndexOf("/")) + "/jsp/encodingFilter/encodingFilter.jsp";
                        v_frm.PayUrl.value = PayUrl;
                    }
                    else {
                        v_frm.action = PayUrl;
                    }
                }
                // 인코딩 방식에 따른 변경 -- End

                if (v_frm.Ret_URL.value == "") {
                    /* Ret_URL값은 현 페이지의 URL 입니다. */
                    alert("연동시 Ret_URL을 반드시 설정하셔야 됩니다.");
                    return false;
                }
                else {
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
			src="https://pay.kcp.co.kr/plugin/js/ajax.js?60M66M2QX6C3DE2XPMNAB97Y8KAXW859"
			charset="EUC-KR"></script>
		<script type="text/javascript"
			src="https://pay.kcp.co.kr/plugin/cross_service/extends/util.js?60M66M2QX6C3DE2XPMNAB97Y8KAXW859"
			charset="EUC-KR"></script>
		<script type="text/javascript"
			src="https://pay.kcp.co.kr/plugin/cross_service/extends/spin.min.js?60M66M2QX6C3DE2XPMNAB97Y8KAXW859"></script>
		<script type="text/javascript"
			src="https://pay.kcp.co.kr/plugin/js/payplus_webExe.js?60M66M2QX6C3DE2XPMNAB97Y8KAXW859"
			charset="EUC-KR"></script>
		<script type="text/javascript"
			src="https://npay.kcp.co.kr/plugin/web_cross_hub.js?60M66M2QX6C3DE2XPMNAB97Y8KAXW859"
			charset="EUC-KR"></script>
		<script type="text/javascript"
			src="https://npay.kcp.co.kr/js/kcp_jquery-1.8.0.js?ver=ZMJ3UM2DJFCS4TVCLI8W0E80SENBVXUP"
			charset="EUC-KR"></script>
		<script type="text/javascript"
			src="https://npay.kcp.co.kr/js/kcp_jquery.blockUI.js"
			charset="EUC-KR"></script>
		<script type="text/javascript"
			src="https://npay.kcp.co.kr/js/ClientDataHandler.js?ver=ZMJ3UM2DJFCS4TVCLI8W0E80SENBVXUP"
			charset="EUC-KR"></script>
		<script type="text/javascript"
			src="https://npay.kcp.co.kr/js/json2.js" charset="EUC-KR"></script>
		<div id="kcp_event_form"></div>
		<script type="text/javascript"
			src="https://npay.kcp.co.kr/js/npayUtils.js?ver=ZMJ3UM2DJFCS4TVCLI8W0E80SENBVXUP"
			charset="EUC-KR"></script>
		<script>
		// 차민수 수량 변경
		function change_qty(e, add, sale_price, special_price, supply_price){
			var qty				=	$(e).siblings('.qty').val();		// 현재 개수
			var change			=	parseInt(qty) + parseInt(add);
			var quantity_set_yn =   '';
			var quantity_set	=   1;
			let totalAmount = 0;
			let store = $("#pickup_store_cd").val();
			if (isEmpty(store)) {
				imgAlert('픽업지점을 선택해주세요');
				return false;
    		}
			if(change<1){
				return false;
			}
			else if(change > 6) {
				imgAlert('1회 예약 병수는 <b>6병 이내</b>로 픽업예약 가능하며,<br>일 <b>최대 30병</b>을 초과할 수 없습니다.<br><b>대량주문은 매장으로 문의해주세요.</b>');
				return false;
			}
			
			
			quantity_set2	=   '';
			if( quantity_set_yn === 'Y' && change >= quantity_set2){
					$(e).parents("li").find('.supply_ins').text((supply_price*change).toLocaleString()+'원');
					console.log("if 문");
				
			}else{
				
				console.log("else 문");
				<c:forEach items="${products}" var="list">
					totalAmount += parseInt($("#qty"+${list.productDetail.w_id}).val());
				</c:forEach>
				console.log(totalAmount);
				if (add == -1) {
					$(e).siblings('.qty').val(change);
					console.log("마이너스");
					$(e).parents("li").find('.supply_ins').text((supply_price*change).toLocaleString()+'원');
					$("#order_price_dd").text((parseInt($("#order_price_dd").text().replace(",","")) - supply_price).toLocaleString()+'원');
					$("#finish_price_span").text((parseInt($("#finish_price_span").text().replace(",","")) - supply_price).toLocaleString()+'원');
				}
				else {
					console.log("플러스");
					let eachAmount;
					if (totalAmount >= 6) {
						imgAlert('1회 예약 병수는 <b>6병 이내</b>로 픽업예약 가능하며,<br>일 <b>최대 30병</b>을 초과할 수 없습니다.<br><b>대량주문은 매장으로 문의해주세요.</b>');
						return false;
					}
					eachAmount = $(e).siblings('.qty').attr('id').onlyNum();
					console.log(eachAmount);
					if (change > $("#storeAmount"+eachAmount).children('span').text().onlyNum()) {
						imgAlert('해당 지점의 재고량보다 더 많은 수량을 선택하였습니다.');
						return false;					
					}
					
					$(e).siblings('.qty').val(change);
					$(e).parents("li").find('.supply_ins').text((supply_price*change).toLocaleString()+'원');
					$("#order_price_dd").text((supply_price + parseInt($("#order_price_dd").text().replace(",",""))).toLocaleString()+'원');
					$("#finish_price_span").text((supply_price + parseInt($("#finish_price_span").text().replace(",",""))).toLocaleString()+'원');
					
				}
			}
			
			if( $(".qty").hasClass("g_qty") ){
				$(".g_qty").val(change);
				
			}

		}	
		$(document).ready(function(){
			let totalPrice = 0 ;
			<c:forEach items="${products}" var="list">
				totalPrice += ${list.productDetail.w_price};
			</c:forEach>
			console.log(totalPrice);
			$("#order_price_span").text(totalPrice.toLocaleString() + '원');
// 			$("#order_price_dd").text(totalPrice.toLocaleString() + '원');
		});
		
		
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
                }
                else {
                    alert("[" + frm.res_cd.value + "] " + frm.res_msg.value);

                    closeEvent();
                }
            }

            /* 표준웹 실행 */
            function jsf__pay(form) {
                try {
                    KCP_Pay_Execute(form);
                }
                catch (e) {
                    console.log(e.message);
                    /* IE 에서 결제 정상종료시 throw로 스크립트 종료 */
                }
            }

            /**
             * 인증 체크
             * @return {[type]} [description]
             */
            function auth_type_check() {
                Csrf.Set(_CSRF_NAME_); //토큰 초기화

                var auth_form = document.form_auth;
                init_orderid();

                if (auth_form.ordr_idxx.value == "") {
                    alert("요청번호는 필수 입니다.");
                    return false;
                } else {
                    if ((navigator.userAgent.indexOf("Android") > - 1 || navigator.userAgent.indexOf("iPhone") > - 1) == false) { // 스마트폰이 아닌경우

                        var return_gubun;
                        var width = 410;
                        var height = 500;

                        var leftpos = screen.width / 2 - (width / 2);
                        var toppos = screen.height / 2 - (height / 2);

                        var winopts = "width=" + width + ", height=" + height + ", toolbar=no,status=no,statusbar=no,menubar=no,scrollbars=no,resizable=no";
                        var position = ",left=" + leftpos + ", top=" + toppos;
                        var AUTH_POP = window.open('/shop/member/join/kcpcert_proc', 'auth_popup', winopts + position);
                    }
                    // auth_form.kcp_birth.value = $('#user_birth').val().replace('-','');;
                    // auth_form.method = "post";
                    // auth_form.target = "auth_popup";
                    // auth_form.action = "/shop/member/join/kcpcert_proc_ajax";

                    // auth_form.submit();

                    $('#form_auth').attr('method', 'post');

                    //아이폰의 경우 해당 target이 설정되면 왜인지 post 값이 넘어가지 않음;;
                    if ((navigator.userAgent.indexOf("Android") > - 1 || navigator.userAgent.indexOf("iPhone") > - 1) == false) { // 스마트폰이 아닌경우
                        $('#form_auth').attr('target', 'auth_popup');
                    }

                    $('#form_auth').attr('action', '/shop/member/join/kcpcert_proc_ajax');

                    $('#form_auth').submit();
                    return true;
                }
            }

            // 앱에서 webView는 opener 를 인식하지 못해서, 모바일 별도처리
            function Mobile() {
                return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
            }

            var adult_chk = false;

            function adult_auth() {
                Csrf.Set(_CSRF_NAME_); //토큰 초기화
                var site_cd = $('#site_cd').val()
                var ordr_idxx = $('#ordr_idxx').val();
                $('#up_hash').val(site_cd + ordr_idxx + "000000");
                if (Mobile()) {
                    var auth_form = document.form_auth;
                    auth_form.veri_up_hash.value = site_cd + ordr_idxx + "000000";
                    adult_chk = true;
                }
                $('#form_auth').submit();
            }

            function auth_data(frm) {

                var auth_form = document.form_auth;

                if (frm.up_hash.value != auth_form.veri_up_hash.value) {
                    alert("비정상적인 접근입니다.");
                    console.log('up_hash 변조 위험');
                }

                const today = new Date();
                const birthDate = new Date(parseInt(frm.r_birth.value.substring(0, 4)), parseInt(frm.r_birth.value.substring(4, 6)) - 1, parseInt(frm.r_birth.value.substring(6, 8)));
                let age = today.getFullYear() - birthDate.getFullYear();
                const m = today.getMonth() - birthDate.getMonth();
                if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
                    age--;
                }

                if (age < 19) {
                    alert('만 19세 이상만 구매 가능합니다.');
                    location.href = "/shop/main";
                }

                adult_chk = true;
                $('#auth_div').hide();

                location.reload();
            }

            /* 예제 */
            // document.ready(function(){
            //     init_orderid();
            // });

            function init_orderid() {
                var today = new Date();
                var year = today.getFullYear();
                var month = today.getMonth() + 1;
                var date = today.getDate();
                var time = today.getTime();

                if (parseInt(month) < 10) {
                    month = "0" + month;
                }

                var vOrderID = year + "" + month + "" + date + "" + time;
                document.form_auth.ordr_idxx.value = vOrderID;
            }

            //datepicker
            $(".datepicker input").datepicker({
                dateFormat: "yy-mm-dd",
                showOn: "both",
                buttonText: "선택",
                minDate: 0
            });

            $("#header").addClass('top_hidden');
            $("#contents").addClass('mb_margin_0');

            function fnSaleDisabled1() {
                if (parseInt($("#").val().onlyNum()) > 0) {
                    alert("쿠폰과 마일리지는 동시 사용할 수 없습니다");
                    $("#coupon_sale").val(0);
                    return false;
                } else {
                    return true;
                }
            }

        </script>
		<div class="layer coupon_layer" id="coupon_layer">
			<div class="display_table">
				<div class="table_cell">
					<div class="layer_area">
						<button type="button" class="layer_close"
							onclick="commonUI.layer.close()">
							<span>Layer Close</span>
						</button>
						<div class="layer_tit">쿠폰선택</div>
						<div class="layer_con">
							<ul id="coupon_list">
								<!--
                        <li>
                            <div class="box">
                                <p class="tit">회원가입 (15,000원 할인)</p>
                                <p class="date">2020.10.01 ~ 2020.10.31 </p>
                            </div>
                            <div class="box btn">
                                <button type="button">선택</button>
                            </div>
                        </li>
                        <li>
                            <div class="box">
                                <p class="tit">생일기념 (3% 할인)</p>
                                <p class="date">2020.10.01 ~ 2020.10.31 </p>
                            </div>
                            <div class="box btn">
                                <button type="button">선택</button>
                            </div>
                        </li>
                        <li>
                            <div class="box">
                                <p class="tit">회원등급 (5% 할인)</p>
                                <p class="date">2020.10.01 ~ 2020.10.31 </p>
                            </div>
                            <div class="box btn">
                                <button type="button">선택</button>
                            </div>
                        </li>
                        <li>
                            <div class="box">
                                <p class="tit">구매이벤트 (10% 할인)</p>
                                <p class="date">2020.10.01 ~ 2020.10.31 </p>
                            </div>
                            <div class="box btn">
                                <button type="button">선택</button>
                            </div>
                        </li>
                    -->
							</ul>

							<div class="ntc_box">
								- 쿠폰 당 1개의 상품에 1회 사용하실 수 있습니다.<br> - 쿠폰마다 사용기한이 있으므로 기간 내에
								사용해 주시기 바랍니다.<br> - 주문이 입금 완료 된 이후에는 쿠폰을 사용하실 수 없습니다. 주문 시
								꼭 쿠폰 적용을 선택하세요.<br>
							</div>

							<div class="write_box">
								<form action="https://www.winenara.com/shop/order/order_write"
									id="couponForm" name="couponForm" method="post"
									accept-charset="utf-8">
									<input type="hidden" name="witplus_csrf_token"
										value="4c3f38de0322b0992836382ee40f91ac"> <input
										type="text" width="0" height="0" style="display: none;">
									<div class="ip_box">
										<input type="text" name="coupon_number" id="coupon_number"
											title="쿠폰번호 입력란" placeholder="쿠폰번호를 입력해주세요">
										<button type="button" onclick="Reg_Submit();"
											class="btn_txt btn_black">쿠폰등록</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //쿠폰 레이어 -->

		<script>

            function searchCouponData() {
                Csrf.Set(_CSRF_NAME_); //토큰 초기화
                $.ajax({
                    type: "POST",
                    url: "/shop/order/order_coupon_ajax",
                    async: false,
                    data: { "buy_coupon_price": $("#buy_coupon_price").val() },
                    success: function (res) {
                        // console.log(res);
                        $("#coupon_list").html(res);
                    }
                });
            }

            function Reg_Submit() {
                if ($("#coupon_number").val() == "") {
                    alert("쿠폰번호를 입력해주세요.");
                    return;
                }

                Csrf.Set(_CSRF_NAME_); //토큰 초기화
                $.ajax({
                    type: "POST",
                    url: "/shop/mypage/note/coupon_proc",
                    data: $("#couponForm").serialize(),
                    dataType: 'json',
                    async: false,
                    success: function (res) {
                        alert(res.msg);
                        if ($.trim(res.status) == "ok") {
                            searchCouponData();
                            $("#coupon_number").val("");
                        }
                    },
                    error: function (res) {
                        alert("쿠폰 조회시 에러가 발생하였습니다.");
                        alert(res.responseText);
                    }

                });
            }

        </script>
	</section>
	<div id="ui-datepicker-div"
		class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all">
	</div>
	<!-- //contents -->

	<script language="javascript">
        $(window).on('load resize', function () {
            if ($(window).width() < 1023) {
                var main_scroll_Event = (function () {
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

                        $body.bind("touchstart", function (e) {
                            //console.log("touch start");
                            startY = e.originalEvent.touches[0].screenY;
                        });

                        $body.bind("touchend", function (e) {
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
                        $body.on("mousewheel DOMMouseScroll", function (event) {
                            var whellDownCheck = event.originalEvent.wheelDelta || -(event.originalEvent.detail);

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
	var page = 'order_write';
	if( page == false){
		page = 'main';
	}
	
	if( page !== 'product_view' && page !== 'order_ok'){
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