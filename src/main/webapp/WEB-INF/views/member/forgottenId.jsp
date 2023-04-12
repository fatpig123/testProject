<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<html lang="ko">

<body>

    <form action="https://www.winenara.com/shop/login" id="LoginPostFrm" onkeydown="javascript:onEnterLogin();"
        method="post" accept-charset="utf-8">
        <input type="hidden" name="witplus_csrf_token" value="9f5ac41a8faf43d1018c8c6e54e451d9">
        <div class="layer login_layer" id="login_layer">
            <div class="display_table">
                <div class="table_cell">
                    <div class="layer_area">
                        <h2 class="layer_tit">
                            회원서비스
                            <!-- <p class="check"><span>로그인</span></p>
                                <p><span><a href="/shop/member/join/law_agreement">회원가입</a></span></p> -->
                        </h2>
                        <button type="button" class="layer_close" onclick="commonUI.layer.close()">닫기</button>
                        <div class="layer_con">
                            <div class="login_tab">
                                <p class="check"><span>기존회원</span></p>
                                <p><span><a href="/shop/member/join/law_agreement">신규회원가입</a></span></p>
                            </div>
                            <div class="social_login">
                                <h2 class="social_tit">소셜아이디로 로그인</h2>
                                <ul>
                                    <li><a href="#none" class="social_btn naver">네이버</a></li>
                                    <li><a href="#none" class="social_btn kakao">카카오</a></li>
                                    <li><a href="#none" class="social_btn google">구글</a></li>
                                    <!-- <li><a href="#none" class="social_btn apple">애플</a></li> -->
                                </ul>
                            </div>
                            <div class="form_area">
                                <ul>
                                    <li>
                                        <div class="form_box">
                                            <input type="text" id="login_user_id" name="login_user_id" value=""
                                                placeholder="아이디를 입력하세요">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form_box">
                                            <input type="password" id="login_passwd" name="login_passwd"
                                                placeholder="비밀번호를 입력하세요">
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <input type="hidden" id="login_return_url_param" name="login_return_url_param">
                            <div class="save_box">
                                <div class="checkbox">
                                    <input type="checkbox" name="login_auto" id="login_auto" value="Y" checked="">
                                    <label for="login_auto">로그인유지</label>
                                </div>
                                <div class="checkbox">
                                    <input type="checkbox" name="id_save" id="id_save" value="Y">
                                    <label for="id_save">아이디저장</label>
                                </div>
                                <p class="input_info_txt">※ 공공장소에서는 꺼주세요.</p>
                            </div>
                            <div class="btn_area">
                                <button type="button" class="btn_txt btn_black" id="loginBtn"><span>로그인</span></button>
                            </div>
                            <div class="login_sub_btn">
                                <a href="/shop/member/forgoten/forgoten_id" class="btn">아이디 찾기</a>
                                <a href="/shop/member/forgoten/forgoten_pw" class="btn">비밀번호 재발급</a>
                            </div>
                            <div class="non_member_order">
                                <a href="javascropt:void(0)"
                                    onclick="commonUI.layer.close(); commonUI.layer.open('buy_process_layer');"
                                    class="btn_txt">비회원 주문하기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- 와인 프로파일 레이어 -->
    <!-- /shop/mypage/shopping/wine_profile_ajax.php LOAD -->
    <div class="layer wine_profile_layer">

    </div>
    <!-- //와인 프로파일 레이어 -->

    <!-- 회원 등급현황 레이어 - 로그인 했을 때만 노출 -->
    <div class="layer grade_layer">
        <div class="display_table">
            <div class="table_cell">
                <div class="layer_area">
                    <button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer
                            Close</span></button>
                    <div class="layer_tit">등급현황</div>
                    <div class="layer_con">
                        <ul class="grade_status">
                            <li>
                                <p class="ico_silver"><span><i>Silver</i></span></p>
                                <em>실버</em>
                            </li>
                            <li>
                                <p class="ico_gold"><span><i>Gold</i></span></p>
                                <em>골드</em>
                            </li>
                            <li>
                                <p class="ico_diamond"><span><i>Diamond</i></span></p>
                                <em>다이아몬드</em>
                            </li>
                            <li>
                                <p class="ico_trinity"><span><i>Trinity</i></span></p>
                                <em>트리니티</em>
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
                                    <li class="tit">등급<br class="mb_hidden">조건</li>
                                    <li>일반회원</li>
                                    <li>200만원 <br class="mb_hidden">이상구매</li>
                                    <li>500만원 <br class="mb_hidden">이상구매</li>
                                    <li>1000만원 <br class="mb_hidden">이상구매</li>
                                </ul>
                            </div>
                            <div class="btn_area">
                                <button type="button" class="btn_txt btn_black"
                                    onclick="location.href='/shop/company/member_benefit'"><span>혜택
                                        자세히보기</span></button>
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
                    <button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer
                            Close</span></button>
                    <div class="layer_tit">알림설정</div>
                    <div class="layer_con">
                        <ul>
                            <li>
                                <div class="btn switch">
                                    <strong class="tit">푸시알림</strong>
                                    <div class="btn_switch_module js_switch css_switch">
                                        <input type="checkbox" id="btn_switch01" class="btn_switch_check" onchange="">
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
                                        <input type="checkbox" id="btn_switch02" class="btn_switch_check" onchange="">
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
                                        <input type="checkbox" id="btn_switch03" class="btn_switch_check" onchange="">
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
                    <button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer
                            Close</span></button>
                    <div class="layer_tit">알림내역</div>
                    <div class="layer_con">
                        <ul>
                            <li>
                                <strong class="tit">4월 이달의 와인</strong>
                                <p class="info">봄에 어울리는 색, 그리고 향을 테마로 준비한 이달의 와인 5종을 소개합니다.</p>
                                <div class="img">
                                    <img src="/resources/asset/images/shop/product/mb_recom_lnb.jpg" alt="">
                                </div>
                                <div class="btn_box">
                                    <span class="date">2022.04.01</span>
                                    <button type="button" class="btn_more">자세히보기</button>
                                </div>
                            </li>
                            <li>
                                <strong class="tit">아발론 브랜드 기획전</strong>
                                <p class="info">최고 가성비 와인, 아바론 브랜드 기획전</p>
                                <div class="btn_box">
                                    <span class="date">2022.04.01</span>
                                    <button type="button" class="btn_more">자세히보기</button>
                                </div>
                            </li>
                            <li>
                                <strong class="tit">아발론 브랜드 기획전</strong>
                                <p class="info">최고 가성비 와인, 아바론 브랜드 기획전</p>
                                <div class="btn_box">
                                    <span class="date">2022.04.01</span>
                                    <button type="button" class="btn_more">자세히보기</button>
                                </div>
                            </li>
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
                    <button type="button" class="layer_close btn_close" onclick="commonUI.layer.close()"><span>Layer
                            Close</span></button>
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

    <link rel="stylesheet" type="text/css" href="/resources/asset/css/shop/slick.css">
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
    <section id="contents" style="margin-top: 122px;">
        <div class="lnb event_lnb lnb_wrap">
            <div class="pc_hidden">
                <a href="javascript:history.go(-1);" class="prev">이전</a>
                <div class="select_brand js_select" id="select_brand">
                    <button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>아이디
                            찾기</span></button>
                    <ul class="mb_lnb_lists">
                        <li class="on"><a href="/shop/member/forgoten/forgoten_id">아이디 찾기</a></li>
                        <li><a href="/shop/member/forgoten/forgoten_pw">비밀번호 재발급</a></li>
                    </ul>
                </div>
            </div>
            <div class="pc_lnb mb_hidden">
                <div class="page_tit">
                    <h2><span>아이디 찾기</span></h2>
                </div>
                <ul class="menu tab2">
                    <li class="on"><a href="/shop/member/forgoten/forgoten_id"><span>아이디 찾기</span></a></li>
                    <li><a href="/shop/member/forgoten/forgoten_pw"><span>비밀번호 재발급</span></a></li>
                </ul>
            </div>
        </div>
        <div class="wrap">
            <div class="content member forgoten_id_page">
                <div class="top_txt">
                    <p>아이디가 생각나지 않을 경우, <br class="pc_hidden">가입 당시 이름과 휴대폰 정보를 아래에 입력하시면<br>아이디 정보를 받으실 수 있습니다.</p>
                </div>
                <div class="form_area">
                    <form action="https://www.winenara.com/shop/member/forgoten/forgoten_id_ok" name="find_form"
                        id="find_form" method="post" accept-charset="utf-8">
                        <input type="hidden" name="witplus_csrf_token" value="9f5ac41a8faf43d1018c8c6e54e451d9">
                        <ul>
                            <li>
                                <div class="l_tit">
                                    <label for="user_nm">이름</label>
                                </div>
                                <div class="form_box">
                                    <input type="text" name="user_nm" id="user_nm" placeholder="가입한 이름을 입력하세요.">
                                </div>
                            </li>
                            <li>
                                <div class="l_tit">
                                    <label for="phone">연락처</label>
                                </div>
                                <div class="form_box">
                                    <input type="text" id="phone" name="phone" placeholder=" '-'제외한 숫자만 입력해주세요."
                                        maxlength="11"
                                        oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                </div>
                            </li>
                        </ul>
                    </form>
                </div>
                <div class="btn_area">
                    <button type="button" class="btn_txt btn_black" onclick="find_submit()"><span>아이디 찾기</span></button>
                </div>
            </div>
        </div>

        <script>

            function input_reset(input, append) {
                var appendTo = typeof appendTo == 'undefined' ? '.form_box' : appendTo;
                $(input).closest('.form_box').removeClass('error success');
                $(input).closest(appendTo).find('p').remove();
            }

            function input_success(input, msg, appendTo) {
                var msg = typeof msg == 'undefined' ? '' : msg;
                var msg = msg ? msg : '정상 입력입니다.';
                var appendTo = typeof appendTo == 'undefined' ? '.form_box' : appendTo;

                input_reset(input);

                $(input).closest('.form_box').addClass('success');
                $(input).closest(appendTo).append('<p class="input_info_txt">' + msg + '</p>');
            }

            function input_error(input, msg, appendTo) {
                var appendTo = typeof appendTo == 'undefined' ? '.form_box' : appendTo;

                input_reset(input);

                $(input).closest('.form_box').addClass('error');
                $(input).closest(appendTo).append('<p class="input_info_txt">' + msg + '</p>');
            }

            $(find_form.user_nm).on('keyup', function () {
                form_check.user_nm(this);
            });

            $(find_form.phone).on('keyup', function () {
                form_check.phone(this);
            });

            var form_check = {
                user_nm: function (input) {
                    if (!$(input).val()) {
                        input_error(input, '이름을 입력해주세요.');
                        return false;
                    } else {
                        if ($(input).val().length < 2 || $(input).val().length > 12) {
                            input_error(input, '정확한 이름을 입력해주세요.');
                            return false;
                        }
                        input_success(input);
                        return true;
                    }
                },
                phone: function (input) {
                    if ($(input).val() == '') {
                        input_error(input, '연락처를 입력해주세요.');
                        return false;
                    } else {
                        if (!/^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/.test($(input).val())) {
                            input_error(input, '휴대폰번호 양식이 정확하지 않습니다.');
                            return false;
                        }
                    }
                    input_success(input, '');
                    return true;
                }
            }

            function find_submit() {
                var check = true;
                if (!form_check.user_nm(find_form.user_nm)) {
                    check = false;
                }
                if (!form_check.phone(find_form.phone)) {
                    check = false;
                }
                if (!check) {
                    return false;
                } else {
                    Csrf.Set(_CSRF_NAME_);
                    $('#find_form').submit();
                }
            }
        </script>
    </section>
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
	var page = 'forgoten_id';
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
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/lozad/dist/lozad.min.js"></script>
    <script>
        const observer = lozad();
        observer.observe();
    </script>
    <!--lazy_loading-->
</body>

</html>