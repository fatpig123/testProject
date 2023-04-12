<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">

<body>

    <form action="https://www.winenara.com/shop/login" id="LoginPostFrm" onkeydown="javascript:onEnterLogin();"
        method="post" accept-charset="utf-8">
        <input type="hidden" name="witplus_csrf_token" value="ea7823b7aa5d6fcbfcf0776c17895c41">
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
        <div class="lnb member_lnb lnb_wrap step_wrap">
            <div class="pc_hidden">
                <a href="javascript:history.go(-1);" class="prev">이전</a>
                <div class="select_brand js_select" id="select_brand">
                    <button type="button" class="my_value js_selectBtn"
                        onclick="$(this).toggleClass('on')"><span>회원가입</span></button>
                    <ul class="mb_lnb_lists">
                        <li><a href="/shop/member/join/law_agreement">약관동의 및 소셜인증</a></li>
                    </ul>
                </div>
            </div>
            <div class="pc_lnb mb_hidden">
                <div class="page_tit">
                    <h2><span>회원가입</span></h2>
                    <ul>
                        <li class="on">1. 이용약관 동의</li>
                        <li class="">2. 회원정보 입력</li>
                        <li class="">3. 회원가입 완료</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="wrap">
            <div class="content member join law_agreement_page">
                <div class="inner">
                    <p>와인나라 이용을 위한 약관에 동의해 주세요.</p>
                    <div class="check_list">
                        <div class="top">
                            <h3><span>(필수)</span> 홈페이지 이용약관</h3>
                            <div class="all_check">
                                <div class="checkbox">
                                    <input type="checkbox" id="all_chk_default" class="all_chk">
                                    <label for="all_chk_default">모두 동의하기</label>
                                </div>
                            </div>
                        </div>
                        <ul class="list all_chk_default">
                            <li>
                                <div class="chk">
                                    <div class="checkbox">
                                        <input type="checkbox" id="age_chk" class="ip_all">
                                        <label for="age_chk">만 19세 이상 성인</label>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="chk">
                                    <div class="checkbox">
                                        <input type="checkbox" id="law_chk" class="ip_all">
                                        <label for="law_chk">홈페이지 이용약관</label>
                                    </div>
                                </div>
                                <div class="view">
                                    <button type="button" class="view_btn"
                                        onclick="commonUI.layer.open('law_layer')"><span>자세히보기</span></button>
                                </div>
                            </li>
                            <li>
                                <div class="chk">
                                    <div class="checkbox">
                                        <input type="checkbox" id="pri_chk" class="ip_all">
                                        <label for="pri_chk">개인정보수집 및 이용동의</label>
                                    </div>
                                </div>
                                <div class="view">
                                    <button type="button" class="view_btn"
                                        onclick="commonUI.layer.open('privacy_layer')"><span>자세히보기</span></button>
                                </div>
                            </li>
                        </ul>

                        <div class="top">
                            <h3>(선택) 마케팅 활용 동의/철회</h3>
                            <!-- <div class="all_check">
                        <div class="checkbox">
                            <input type="checkbox" id="all_chk_select" class="all_chk">
                            <label for="all_chk_select">모두 동의하기</label>
                        </div>                
                    </div> -->
                        </div>
                        <ul class="list all_chk_select">
                            <li>
                                <div class="chk">
                                    <div class="checkbox">
                                        <input type="checkbox" id="maketing_01" class="ip_all">
                                        <label for="maketing_01">개인(신용)정보의 수집·이용에 관한 사항</label>
                                    </div>
                                </div>
                                <div class="view">
                                    <button type="button" class="view_btn"
                                        onclick="commonUI.layer.open('credit_use_layer')"><span>자세히보기</span></button>
                                </div>
                            </li>
                            <li>
                                <div class="chk">
                                    <div class="checkbox">
                                        <input type="checkbox" id="maketing_02" class="ip_all">
                                        <label for="maketing_02">개인(신용)정보에 따른 프로모션 및 할인 혜택/정보 수신 동의</label>
                                    </div>
                                </div>
                                <div class="view">
                                    <button type="button" class="view_btn"
                                        onclick="commonUI.layer.open('credit_view_layer')"><span>자세히보기</span></button>
                                </div>
                            </li>
                            <!-- <li>
                        <div class="chk">
                            <div class="checkbox">
                                <input type="checkbox" id="sms_chk">
                                <label for="sms_chk">SMS 수신동의 <span class="not_point">(선택)</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="chk">
                            <div class="checkbox">
                                <input type="checkbox" id="email_chk">
                                <label for="email_chk">이메일 수신동의 <span class="not_point">(선택)</span></label>
                            </div>
                        </div>
                    <li> -->
                        </ul>
                        <div class="expiry">
                            <div class="top">
                                <h3>(선택) 개인정보 유효기간</h3>
                            </div>
                            <ul class="expiry_list">
                                <li>
                                    <div class="checkbox">
                                        <input type="radio" name="expiry" id="term_01" class="" checked="" value="1">
                                        <label for="term_01">1년</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="checkbox">
                                        <input type="radio" name="expiry" id="term_02" class="" value="3">
                                        <label for="term_02">3년</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="checkbox">
                                        <input type="radio" name="expiry" id="term_03" class="" value="0">
                                        <label for="term_03">회원 탈퇴 시</label>
                                    </div>
                                </li>
                            </ul>
                            <p>- 기간 선택하지 않는 경우, 기본 1년 후 휴면계정 전환</p>
                        </div>
                    </div>
                    <div class="social_login">
                        <h2 class="social_tit">회원가입 방법 선택</h2>
                        <ul>
                            <li><a href="#none" class="social_btn naver">네이버</a></li>
                            <li><a href="#none" class="social_btn kakao">카카오</a></li>
                            <li><a href="#none" class="social_btn google">구글</a></li>
                            <li><a href="#none" class="social_btn id">아이디</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- page_script -->
        <script>

            function terms_check() { // 약관동의체크
                if (!$('#age_chk').is(':checked') || !$('#law_chk').is(':checked') || !$('#pri_chk').is(':checked')) {
                    alert("필수 약관에 동의해주세요.");
                    return false;
                }

                Cookie.Set('join_agreement_age', $('#age_chk').is(':checked'), 1);
                Cookie.Set('join_agreement_service', $('#law_chk').is(':checked'), 1);
                Cookie.Set('join_agreement_private', $('#pri_chk').is(':checked'), 1);
                Cookie.Set('join_agreement_marketing_1', $('#maketing_01').is(':checked'), 1);
                Cookie.Set('join_agreement_marketing_2', $('#maketing_02').is(':checked'), 1);
                Cookie.Set('join_agreement_sms', $('#sms_chk').is(':checked'), 1);
                Cookie.Set('join_agreement_email', $('#email_chk').is(':checked'), 1);
                Cookie.Set('join_expiry', $('input[name=expiry]:checked').val(), 1);

                return true;
            }

            $('.law_agreement_page .social_btn.id').click(function () {
                if (!terms_check()) {
                    return false;
                }

                Cookie.Set('join_gb', 'W', 1);

                location.href = 'join_form';
            });

            $('.law_agreement_page .social_btn.kakao').click(function () {
                if (!terms_check()) {
                    return false;
                }

                Cookie.Set('join_gb', 'K', 1, true);
                Cookie.Set('success_url', '/shop/member/join/join_form', 1, true);
                Cookie.Set('error_url', location.href, 1, true);

                location.href = '/shop/auth/oauth';
            });

            $('.law_agreement_page .social_btn.naver').click(function () {
                if (!terms_check()) {
                    return false;
                }

                Cookie.Set('join_gb', 'N', 1, true);
                Cookie.Set('success_url', '/shop/member/join/join_form', 1, true);
                Cookie.Set('error_url', location.href, 1, true);

                location.href = '/shop/auth/oauth';
            });

            $('.law_agreement_page .social_btn.face').click(function () {
                if (!terms_check()) {
                    return false;
                }

                Cookie.Set('join_gb', 'F', 1, true);
                Cookie.Set('success_url', '/shop/member/join/join_form', 1, true);
                Cookie.Set('error_url', location.href, 1, true);

                location.href = '/shop/auth/oauth';
            });

            $('.law_agreement_page .social_btn.google').click(function () {
                if (!terms_check()) {
                    return false;
                }

                Cookie.Set('join_gb', 'G', 1, true);
                Cookie.Set('success_url', '/shop/member/join/join_form', 1, true);
                Cookie.Set('error_url', location.href, 1, true);

                location.href = '/shop/auth/oauth';
            });

            $('.law_agreement_page .social_btn.apple').click(function () {
                if (!terms_check()) {
                    return false;
                }

                Cookie.Set('join_gb', 'A', 1, true);
                Cookie.Set('success_url', '/shop/member/join/join_form', 1, true);
                Cookie.Set('error_url', location.href, 1, true);

                location.href = '/shop/auth/oauth';
            });

            // 체크리스트 모두체크 해제 및 개별선택
            $('.all_chk').click(function () {
                var chkId = $(this).attr("id");

                if (chkId == "all_chk_default") {
                    $('.all_chk_default .ip_all').prop('checked', this.checked);
                    $('.all_chk_select .ip_all').prop('checked', this.checked);
                } else if (chkId == "all_chk_select") {
                    $('.all_chk_select .ip_all').prop('checked', this.checked);
                }
            });

            // 체크박스 개별 선택
            $(".ip_all").on("click", function () {
                var chkList = $(this).closest(".list"),
                    chkLength = chkList.find(".ip_all").length,
                    chkedLength = chkList.find(".ip_all:checked").length,
                    selUl = $(this).closest("ul"),
                    allChk = selUl.prev(".top").find(".all_chk");

                if (chkLength == chkedLength) {
                    allChk.prop("checked", true);
                } else {
                    allChk.prop("checked", false);
                }
            });          
        </script>
        <!-- //page_script -->
    </section>
    <!-- //contents -->

    <!-- 이용약관 -->
    <div class="layer law_layer privacy_law" id="law_layer" style="display: none;">
        <div class="display_table">
            <div class="table_cell">
                <div class="layer_area">
                    <h2 class="layer_tit">이용약관</h2>
                    <button type="button" class="layer_close" onclick="commonUI.layer.close()">닫기</button>
                    <div class="layer_con">
                        <p class="txt">
                            <!-- <strong class="tit">이용약관</strong> -->

                            <strong class="tit">제1조(목적)</strong>
                            이 약관은 ㈜와인나라아이비 제일와인셀러점 회사(전자거래 사업자)가 운영하는 ㈜와인나라아이비 제일와인셀러점 쇼핑몰(이하 "몰"이라 한다)에서 제공하는 인터넷 관련
                            서비스(이하 "서비스"라 한다)를 이용함에 있어 쇼핑몰과 이용자의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.
                            ※ 「PC통신 등을 이용하는 전자거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다」

                            <strong class="tit">제2조(정의)</strong>
                            ① "몰"이란 ㈜와인나라아이비 제일와인셀러점 회사가 재화 또는 용역을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 또는 용역을 거래할 수 있도록
                            설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.
                            ② “이용자”란 "몰"에 접속하여 이 약관에 따라 "몰"이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
                            ③ ‘회원’이라 함은 "몰"에 개인정보를 제공하여 회원등록을 한 자로서, "몰"의 정보를 지속적으로 제공받으며, "몰"이 제공하는 서비스를 계속적으로 이용할 수 있는
                            자를 말합니다.
                            ④ ‘비회원’이라 함은 회원에 가입하지 않고 "몰"이 제공하는 서비스를 이용하는 자를 말합니다.

                            <strong class="tit">제3조(약관 등의 명시와 설명 및 개정)</strong>
                            ① "몰"은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호·모사전송번호·전자우편주소,
                            사업자등록번호, 통신판매업신고번호, 개인정보관리책임자 등을 이용자가 쉽게 알 수 있도록 "몰"의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가
                            연결화면을 통하여 볼 수 있도록 할 수 있습니다.
                            ② "몰"은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회·배송책임·환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의
                            연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.
                            ③ "몰"은 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망 이용촉진 등에 관한 법률, 방문판매 등에
                            관한 법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
                            ④ "몰"이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만,
                            이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "몰“은 개정 전 내용과 개정 후 내용을 명확하게
                            비교하여 이용자가 알기 쉽도록 표시합니다.
                            ⑤ "몰"이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관조항이 그대로
                            적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 "몰"에 송신하여 "몰"의 동의를
                            받은 경우에는 개정약관 조항이 적용됩니다.
                            ⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는
                            전자상거래 등에서의 소비자보호지침 및 관계법령 또는 상관례에 따릅니다.

                            <strong class="tit">제4조(서비스의 제공 및 변경)</strong>
                            ① "몰"은 다음과 같은 업무를 수행합니다.
                            1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결
                            2. 구매계약이 체결된 재화 또는 용역의 배송
                            3. 기타 "몰"이 정하는 업무
                            ② "몰"은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이
                            경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.
                            ③ "몰"이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화 등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한
                            주소로 즉시 통지합니다.
                            ④ 전항의 경우 "몰"은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, "몰"이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.

                            <strong class="tit">제5조(서비스의 중단)</strong>
                            ① "몰"은 컴퓨터 등 정보통신설비의 보수점검·교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.
                            ② "몰"은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, "몰"이 고의 또는 과실이 없음을
                            입증하는 경우에는 그러하지 아니합니다.
                            ③ 사업종목의 전환, 사업의 포기, 업체간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 "몰"은 제8조에 정한 방법으로 이용자에게 통지하고 당초
                            "몰"에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, "몰"이 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 "몰"에서 통용되는
                            통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.

                            <strong class="tit">제6조(회원가입)</strong>
                            ① 이용자는 "몰"이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.
                            ② "몰"은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각호에 해당하지 않는 한 회원으로 등록합니다.
                            1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 "몰"의
                            회원재가입 승낙을 얻은 경우에는 예외로 한다.
                            2. 등록 내용에 허위, 기재누락, 오기가 있는 경우
                            3. 기타 회원으로 등록하는 것이 "몰"의 기술상 현저히 지장이 있다고 판단되는 경우
                            ③ 회원가입계약의 성립시기는 "몰"의 승낙이 회원에게 도달한 시점으로 합니다.
                            ④ 회원은 제15조제1항에 의한 등록사항에 변경이 있는 경우, 즉시 전자우편 기타 방법으로 "몰"에 대하여 그 변경사항을 알려야 합니다.

                            <strong class="tit">제7조(회원 탈퇴 및 자격 상실 등)</strong>
                            ① 회원은 "몰"에 언제든지 탈퇴를 요청할 수 있으며 "몰"은 즉시 회원탈퇴를 처리합니다.
                            ② 회원이 다음 각호의 사유에 해당하는 경우, "몰"은 회원자격을 제한 및 정지시킬 수 있습니다.
                            1. 가입 신청 시에 허위 내용을 등록한 경우
                            2. "몰"을 이용하여 구입한 재화 등의 대금, 기타 "몰"이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우
                            3. 다른 사람의 "몰" 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우
                            4. "몰"을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우
                            ③ "몰"이 회원 자격을 제한·정지시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 "몰"은 회원자격을 상실시킬 수
                            있습니다.
                            ④ "몰"이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할
                            기회를 부여합니다.
                            ⑤ 회원 탈퇴 시 기존 적립금은 소멸합니다.

                            <strong class="tit">제8조(회원에 대한 통지)</strong>
                            ① "몰"이 회원에 대한 통지를 하는 경우, 회원이 "몰"과 미리 약정하여 지정한 전자우편 주소로 할 수 있습니다.
                            ② "몰"은 불특정다수 회원에 대한 통지의 경우 1주일이상 "몰" 게시판에 게시함으로써 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한
                            영향을 미치는 사항에 대하여는 개별통지를 합니다.

                            <strong class="tit">제9조(구매신청) </strong>
                            "몰"이용자는 "몰"상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, "몰"은 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야
                            합니다. 단, 회원인 경우 제2호 내지 제4호의 적용을 제외할 수 있습니다.
                            1. 재화 등의 검색 및 선택
                            2. 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력
                            3. 약관내용, 청약철회권이 제한되는 서비스, 배송료, 설치비 등의 비용부담과 관련한 내용에 대한 확인
                            4. 이 약관에 동의하고 위 3.호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭)
                            5. 재화 등의 구매신청 및 이에 관한 확인 또는 "몰"의 확인에 대한 동의

                            <strong class="tit">제10조(적립금 제도 운영)</strong>
                            ① 적립금은 "몰" 내에서 현금처럼 사용할 수 있는 전자 화폐입니다.
                            ② "몰" 회원으로 가입하시고, 적립금 지급 상품을 구입하실 경우, 운영정책에 따라 상품 별로 정해진 적립금을 드립니다.
                            ③ 적립금은 "몰"에서 상품을 구매하실 경우 금액과 상관없이 현금과 동일하게 사용하실 수 있으나, 현금으로 교환할 수 없습니다.
                            ④ 회원 탈퇴 시 기존 적립금은 소멸합니다.
                            ⑤ 회원은 적립금 부여일로부터 12개월 이내에 해당 적립금을 사용하여야 합니다. 적립금은 부여된 순서에 따라 사용되며, 부여일로부터 12개월 이후에도 사용되지 않은
                            적립금은 자동 소멸됩니다.
                            ⑥ 적립금을 이용하여 부당 이득을 취하거나, 악의적인 상거래가 발생할 경우, ㈜와인나라아이비 제일와인셀러점 쇼핑몰은 해당 적립금의 지급을 중지 또는 회입할 수
                            있습니다.
                            ⑦ ㈜와인나라아이비 제일와인셀러점 오프라인 직영 와인나라 매장과 ㈜와인나라아이비 제일와인셀러점 운영 "몰"의 적립금 함께 관리되며, 함께 사용할 수 있습니다.

                            <strong class="tit">제11조(계약의 성립)</strong>
                            ① "몰"은 제9조와 같은 구매신청에 대하여 다음 각호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지
                            못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.
                            1. 신청 내용에 허위, 기재누락, 오기가 있는 경우
                            2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우
                            3. 기타 구매신청에 승낙하는 것이 "몰" 기술상 현저히 지장이 있다고 판단하는 경우
                            ② "몰"의 승낙이 제12조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.
                            ③ "몰"의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소 등에 관한 정보 등을 포함하여야 합니다.

                            <strong class="tit">제12조(지급방법) </strong>
                            "몰"에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각호의 방법 중 가용한 방법으로 할 수 있습니다. 단, "몰"은 이용자의 지급방법에 대하여 재화 등의
                            대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.
                            1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체
                            2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제
                            3. 온라인무통장입금
                            4. 수령 시 대금지급
                            5. 마일리지 등 "몰"이 지급한 포인트에 의한 결제
                            6. "몰"과 계약을 맺었거나 "몰"이 인정한 상품권에 의한 결제
                            7. 기타 전자적 지급 방법에 의한 대금 지급 등

                            <strong class="tit">제13조(수신확인통지·구매신청 변경 및 취소)</strong>
                            ① "몰"은 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.
                            ② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고 "몰"은 배송 전에
                            이용자의 요청이 있는 경우에는 지체없이 그 요청에 따라 처리하여야 합니다. 다만 이미 대금을 지불한 경우에는 제15조의 청약철회 등에 관한 규정에 따릅니다.

                            <strong class="tit">제14조(재화 등의 공급)</strong>
                            ① "몰"은 이용자와 재화 등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등
                            기타의 필요한 조치를 취합니다. 다만, "몰"이 이미 재화 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 2영업일 이내에 조치를
                            취합니다. 이때 "몰"은 이용자가 재화 등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다.
                            ② "몰"은 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 "몰"이 약정 배송기간을 초과한 경우에는 그로
                            인한 이용자의 손해를 배상하여야 합니다. 다만 "몰"이 고의·과실이 없음을 입증한 경우에는 그러하지 아니합니다.

                            <strong class="tit">제15조(환급)</strong>
                            "몰"은 이용자가 구매 신청한 재화 등이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은
                            경우에는 대금을 받은 날부터 2영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.

                            <strong class="tit">제16조(청약철회 등)</strong>
                            ① "몰"과 재화 등의 구매에 관한 계약을 체결한 이용자는 수신확인의 통지를 받은 날부터 7일 이내에는 청약의 철회를 할 수 있습니다.
                            ② 이용자는 재화 등을 배송 받은 경우 다음 각호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.
                            1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다)
                            2. 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우
                            3. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화 등의 가치가 현저히 감소한 경우
                            4. 같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우
                            ③ 제2항 제2호 내지 제4호의 경우에 "몰"이 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의 조치를 하지
                            않았다면 이용자의 청약철회 등이 제한되지 않습니다.
                            ④ 이용자는 제1항 및 제2항의 규정에 불구하고 재화 등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화 등을 공급받은 날부터 3개월
                            이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.

                            <strong class="tit">제17조(청약철회 등의 효과)</strong>
                            ① "몰"은 이용자로부터 재화 등을 반환 받은 경우 3영업일 이내에 이미 지급받은 재화 등의 대금을 환급합니다. 이 경우 "몰"이 이용자에게 재화 등의 환급을 지연한
                            때에는 그 지연기간에 대하여 공정거래위원회가 정하여 고시하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.
                            ② "몰"은 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 재화 등의 대금을 지급한 때에는 지체없이 당해 결제수단을 제공한 사업자로
                            하여금 재화 등의 대금의 청구를 정지 또는 취소하도록 요청합니다.
                            ③ 청약철회 등의 경우 공급받은 재화 등의 반환에 필요한 비용은 이용자가 부담합니다. "몰"은 이용자에게 청약철회 등을 이유로 위약금 또는 손해배상을 청구하지
                            않습니다. 다만 재화 등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 "몰"이 부담합니다.
                            ④ 이용자가 재화 등을 제공받을 때 발송비를 부담한 경우에 "몰"은 청약철회 시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록 명확하게 표시합니다.

                            <strong class="tit">제18조(개인정보보호)</strong>
                            ① "몰"은 이용자의 정보수집 시 구매계약 이행에 필요한 최소한의 정보를 수집합니다. 다음 사항을 필수사항으로 하며 그 외 사항은 선택사항으로 합니다.
                            1. 성명
                            2. 주소
                            3. 전화번호
                            4. 희망ID(회원의 경우)
                            5. 비밀번호(회원의 경우)
                            6. 전자우편주소(또는 이동전화번호)
                            ② "몰"이 이용자의 개인식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.
                            ③ 제공된 개인정보는 당해 이용자의 동의없이 목적 외의 이용이나 제3자에게 제공할 수 없으며, 이에 대한 모든 책임은 몰이 집니다. 다만, 다음의 경우에는 예외로
                            합니다.
                            1. 배송업무상 배송업체에게 배송에 필요한 최소한의 이용자의 정보(성명, 주소, 전화번호)를 알려주는 경우
                            2. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우
                            3. 재화 등의 거래에 따른 대금정산을 위하여 필요한 경우
                            4. 도용방지를 위하여 본인확인에 필요한 경우
                            5. 법률의 규정 또는 법률에 의하여 필요한 불가피한 사유가 있는 경우
                            ④ "몰"이 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및
                            이용목적, 제3자에 대한 정보제공 관련사항(제공받은 자, 제공목적 및 제공할 정보의 내용) 등 정보통신망 이용촉진 등에 관한 법률 제22조제2항이 규정한 사항을 미리
                            명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.
                            ⑤ 이용자는 언제든지 "몰"이 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 "몰"은 이에 대해 지체없이 필요한 조치를 취할 의무를
                            집니다. 이용자가 오류의 정정을 요구한 경우에는 "몰"은 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.
                            ⑥ "몰"은 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 변조 등으로 인한
                            이용자의 손해에 대하여 모든 책임을 집니다.
                            ⑦ "몰" 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체없이 파기합니다.

                            <strong class="tit">제19조(“몰“의 의무)</strong>
                            ① "몰"은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화·용역을 제공하는데 최선을
                            다하여야 합니다.
                            ② "몰"은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다.
                            ③ "몰"이 상품이나 용역에 대하여 「표시·광고의 공정화에 관한 법률」 제3조 소정의 부당한 표시·광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을
                            집니다.
                            ④ "몰"은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.

                            <strong class="tit">제20조(회원의 ID 및 비밀번호에 대한 의무)</strong>
                            ① 제18조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.
                            ② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.
                            ③ 회원이 자신의 ID 및 비밀번호를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 "몰"에 통보하고 "몰"의 안내가 있는 경우에는 그에 따라야
                            합니다.

                            <strong class="tit">제21조(이용자의 의무)</strong>
                            이용자는 다음 행위를 하여서는 안됩니다.
                            1. 신청 또는 변경 시 허위 내용의 등록
                            2. 타인의 정보 도용
                            3. "몰"에 게시된 정보의 변경
                            4. "몰"이 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시
                            5. "몰" 기타 제3자의 저작권 등 지적재산권에 대한 침해
                            6. "몰" 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
                            7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 몰에 공개 또는 게시하는 행위

                            <strong class="tit">제22조(연결"몰"과 피연결"몰" 간의 관계)</strong>
                            ① 상위 "몰"과 하위 "몰"이 하이퍼 링크(예: 하이퍼 링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 "몰"(웹
                            사이트)이라고 하고 후자를 피연결 "몰"(웹사이트)이라고 합니다.
                            ② 연결"몰"은 피연결"몰"이 독자적으로 제공하는 재화 등에 의하여 이용자와 행하는 거래에 대해서 보증책임을 지지 않는다는 뜻을 연결"몰"의 초기화면 또는 연결되는
                            시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증책임을 지지 않습니다.

                            <strong class="tit">제23조(저작권의 귀속 및 이용제한)</strong>
                            ① “몰“이 작성한 저작물에 대한 저작권 기타 지적재산권은 ”몰“에 귀속합니다.
                            ② 이용자는 "몰"을 이용함으로써 얻은 정보 중 "몰"에게 지적재산권이 귀속된 정보를 "몰"의 사전 승낙없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여
                            영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.
                            ③ "몰"은 약정에 따라 이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.

                            <strong class="tit">제24조(분쟁해결)</strong>
                            ① "몰"은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치·운영합니다.
                            ② "몰"은 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시
                            통보해 드립니다.
                            ③ "몰"과 이용자간에 발생한 전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시·도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수
                            있습니다.

                            <strong class="tit">제25조(재판권 및 준거법)</strong>
                            ① "몰"과 이용자간에 발생한 전자상거래 분쟁에 관한 소송은 서울중앙지방법원의 전속관할로 합니다.
                            ② "몰"과 이용자간에 제기된 전자상거래 소송에는 대한민국 법령을 적용합니다.

                            <strong class="tit">부칙</strong>
                            이 약관은 2022년 10월 31일부터 적용됩니다.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //이용약관 -->

    <!-- 개인정보약관동의 -->
    <div class="layer privacy_layer privacy_law" id="privacy_layer">
        <div class="display_table">
            <div class="table_cell">
                <div class="layer_area">
                    <h2 class="layer_tit">개인정보취급방침</h2>
                    <button type="button" class="layer_close" onclick="commonUI.layer.close()">닫기</button>
                    <div class="layer_con">
                        <p class="txt">
                            <!-- <strong class="tit">개인정보취급방침</strong> -->

                            <strong class="tit">총칙</strong>

                            ① 개인정보란 생존하는 개인에 관한 정보로서 당해 정보에 포함되어 있는 성명, 전화번호 등의 사항에 의하여 당해 개인을 식별할 수 있는 정보(당해 정보만으로는 특정
                            개인을 식별할 수 없더라도 다른 정보와 용이하게 결합하여 식별할 수 있는 것을 포함합니다)를 말합니다.
                            ② (주)와인나라아이비 제일와인셀러점(이하 “몰”이라 한다)은 귀하의 개인정보보호를 매우 중요시하며, 『개인정보보호법』과『정보통신망 이용촉진 및 정보보호 등에 관한
                            법률』상의 개인정보 보호규정 및 과학기술정보통신부가 제정한 『개인정보보호지침』을 준수하고 있습니다. “몰”은 개인정보취급방침을 통하여 귀하께서 제공하시는 개인정보가
                            어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.
                            ③ “몰”은 개인정보취급방침을 홈페이지 첫 화면에 공개함으로써 귀하께서 언제나 용이하게 보실 수 있도록 조치하고 있습니다.
                            ④ “몰”은 개인정보취급방침의 지속적인 개선을 위하여 개인정보취급방침을 개정하는데 필요한 절차를 정하고 있습니다. 그리고 개인정보취급방침을 개정하는 경우 버전번호
                            등을 부여하여 개정된 사항을 귀하께서 쉽게 알아볼 수 있도록 하고 있습니다.

                            <strong class="tit">개인정보의 수집범위</strong>

                            “몰”은 별도의 회원가입 절차 없이 대부분의 컨텐츠에 자유롭게 접근할 수 있습니다. “몰”의 회원제 서비스를 이용하시고자 할 경우 다음의 정보를 입력해주셔야 하며
                            선택항목을 입력하시지 않았다 하여 서비스 이용에 제한은 없습니다.
                            1) 회원 가입시 수집하는 개인정보의 범위
                            - 필수항목 : 희망 ID, 비밀번호, 비밀번호 힌트용 질문과 답변, 성명, 주소, 전화번호, 이메일주소, 이메일 수신 여부
                            - 선택항목 : 회사명, 업태, 종목, 사업자번호, 직배송 희망매장

                            <strong class="tit">개인정보 수집에 대한 동의</strong>
                            “몰”은 귀하께서 “몰”의 개인정보보호방침 또는 이용약관의 내용에 대해 「동의한다」버튼 또는 「동의하지 않는다」버튼을 클릭할 수 있는 절차를 마련하여,
                            「동의한다」버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 봅니다.

                            <strong class="tit">개인정보의 수집목적 및 이용목적</strong>

                            ① “몰”은 회원님께 최대한으로 최적화되고 맞춤화된 서비스를 제공하기 위하여 다음과 같은 목적으로 개인정보를 수집하고 있습니다.
                            - 성명, 아이디, 비밀번호 : 회원제 서비스 이용에 따른 본인 식별 절차에 이용
                            - 이메일주소, 이메일 수신여부, 전화번호 : 고지사항 전달, 본인 의사 확인, 불만 처리 등 원활한 의사소통 경로의 확보, 새로운 서비스/신상품이나 이벤트 정보의
                            안내
                            - 주소, 전화번호 : 경품과 쇼핑 물품 배송에 대한 정확한 배송지의 확보
                            - 비밀번호 힌트용 질문과 답변 : 비밀번호를 재설정하기 위한 경우의 신속한 처리를 위한 내용
                            - 그 외 선택항목 : 개인맞춤 서비스 (사업자 회원의 경우 세금계산서 별도 발급)를 제공하기 위한 자료
                            ② 단, 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 및 성생활
                            등)는 수집하지 않습니다.

                            <strong class="tit">비회원의 고객 개인정보보호</strong>

                            “몰”에서는 회원뿐만 아니라 비회원 또한 물품 및 서비스 상품의 구매를 하실 수 있습니다. “몰”은 비회원 주문의 경우 배송 및 대금 결제, 상품 배송에 반드시
                            필요한 개인정보 만을 고객에게 요청하고 있습니다.
                            “몰”에서 비회원으로 구매를 하신 경우 비회원 고객께서 입력하신 지불인 정보 및 수령인 정보는 대금 결제 및 상품 배송에 관련한 용도 외에는 다른 어떠한 용도로도
                            사용되지 않습니다.
                            “몰” 비회원의 경우도 “몰” 회원과 동일하게 개인정보를 보호합니다. 단, 비회원의 경우 회원들에게 제공되는 적립금을 제공받지 못하며, 추후 진행되는 이벤트에서
                            제외됩니다.

                            <strong class="tit">개인정보 보유, 이용기간</strong>

                            - 위 개인정보는 수집, 이용에 관한 동의일로부터 동의 철회시까지 “몰”이 보유, 이용할 수 있습니다. 단 동의 철회일 후에는 위에 기재된 목적과 관련된 사고조사,
                            분쟁해결, 민원처리, 법령상 의무이행을 위하여 필요한 범위 내에서만 보유, 이용됩니다.

                            <strong class="tit">동의를 거부할 권리 및 동의를 거부할 경우의 불이익</strong>

                            - 위 개인정보의 수집, 이용에 대한 동의를 거부할 수 있으며, 동의 후에도 언제든지 철회 가능합니다. 다만, 동의하지 않은 수집, 이용 목적과 관련된 상품안내,
                            사은행사 등의 편의는 제공받을 수 없습니다.

                            <strong class="tit">이용자 및 법정대리인의 권리, 의무 및 행사방법</strong>

                            ① 정보주체는 “몰”에 대해 언제든지 개인정보 열람․정정․삭제․처리정지 요구 등의 권리를 행사할 수 있습니다.
                            ② 제1항에 따른 권리 행사는 “몰”에 대해 개인정보보호법 시행령 제41조제1항에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며, “몰”은
                            이에 대해 지체없이 조치하겠습니다.
                            ③ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에
                            따른 위임장을 제출하셔야 합니다.
                            ④ 개인정보 열람 및 처리정지 요구는 개인정보보호법 제35조 제5항, 제37조 제2항에 의하여 정보주체의 권리가 제한될 수 있습니다.
                            ⑤ 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 할 수 없습니다.
                            ⑥ “몰”은 정보주체 권리에 따른 열람의 요구, 정정·삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.
                            ⑦ 정보주체는 개인정보보호법 등 관계 법령을 위반하여 회사가 처리하고 있는 정보주체 본인이나 타인의 개인정보 및 사생활을 침해하여서는 아니 됩니다.

                            <strong class="tit">쿠키에 의한 개인정보 수집</strong>

                            ① 쿠키(cookie)란?
                            “몰”은 귀하에 대한 정보를 저장하고 수시로 찾아내는 쿠키(cookie)를 사용합니다. 쿠키는 웹사이트가 귀하의 컴퓨터 브라우저(넷스케이프, 인터넷 익스플로러 등)로
                            전송하는 소량의 정보입니다. 귀하께서 웹사이트에 접속을 하면 “몰”의 컴퓨터는 귀하의 브라우저에 있는 쿠키의 내용을 읽고, 귀하의 추가정보를 귀하의 컴퓨터에서 찾아
                            접속에 따른 성명 등의 추가 입력 없이 서비스를 제공할 수 있습니다. 쿠키는 귀하의 컴퓨터는 식별하지만 귀하를 개인적으로 식별하지는 않습니다. 또한 귀하는 쿠키에
                            대한 선택권이 있습니다. 웹브라우저 상단의 도구 인터넷옵션 탭(option tab)에서 모든 쿠키를 다 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나,
                            아니면 모든 쿠키를 거부할 수 있는 선택권을 가질 수 있습니다.

                            ② “몰”의 쿠키(cookie) 운용
                            “몰”은 이용자의 편의를 위하여 쿠키를 운영합니다. “몰”이 쿠키를 통해 수집하는 정보는 “몰” 회원 ID에 한하며, 그 외의 다른 정보는 수집하지 않습니다.
                            “몰”이 쿠키(cookie)를 통해 수집한 회원 ID는 다음의 목적을 위해 사용됩니다.
                            - 개인의 관심 분야에 따라 차별화된 정보를 제공
                            - 회원과 비회원의 접속빈도 또는 머문 시간 등을 분석하여 이용자의 취향과 관심분야를 파악하여 타겟(target) 마케팅에 활용
                            - 쇼핑한 품목들에 대한 정보와 관심있게 둘러본 품목들에 대한 자취를 추적하여 다음 번 쇼핑 때 개인 맞춤 서비스를 제공
                            - 회원들의 습관을 분석하여 서비스 개편 등의 척도
                            - 게시판 글 등록
                            쿠키는 브라우저의 종료시나 로그아웃시 만료됩니다.

                            <strong class="tit">목적 외 사용 및 제3자에 대한 제공 및 공유</strong>

                            ① “몰”은 귀하의 개인정보를 「개인정보의 수집목적 및 이용목적」에서 고지한 범위 내에서 사용하며, 동 범위를 초과하여 이용하거나 타인 또는 타기업, 기관에 제공하지
                            않습니다.
                            특히 다음의 경우는 귀하의 동의가 있는 경우에 한하여 주의를 기울여 개인정보를 이용 및 제공할 것입니다.
                            - 제휴관계 : 보다 나은 서비스 제공을 위하여 귀하의 개인정보를 제휴사에게 제공하거나 또는 제휴사와 공유할 수 있습니다. 개인정보를 제공하거나 공유할 경우에는
                            사전에 귀하께 제휴사가 누구인지, 제공 또는 공유되는 개인정보항목이 무엇인지, 왜 그러한 개인정보가 제공되거나 공유되어야 하는지, 그리고 언제까지 어떻게 보호,
                            관리되는지에 대해 개별적으로 전자우편 및 서면을 통해 고지하여 동의를 구하는 절차를 거치게 되며, 귀하께서 동의하지 않는 경우에는 제휴사에게 제공하거나 제휴사와
                            공유하지 않습니다. 제휴관계에 변화가 있거나 제휴관계가 종결될 때도 같은 절차에 의하여 고지하거나 동의를 구합니다.
                            - 위탁처리 : 원활한 업무 처리를 위해 이용자의 개인정보를 위탁 처리할 경우 반드시 사전에 위탁처리 업체명과 위탁 처리되는 개인정보의 범위, 업무위탁 목적, 위탁
                            처리되는 과정, 위탁관계 유지기간 등에 대해 상세하게 고지합니다.
                            - 매각, 인수합병 등 : 서비스제공자의 권리와 의무가 완전 승계,이전되는 경우 반드시 사전에 정당한 사유와 절차에 대해 상세하게 고지할 것이며 이용자의 개인정보에
                            대한 동의 철회의 선택권을 부여합니다.
                            ② 고지 및 동의방법은 온라인 홈페이지 초기화면의 공지사항을 통해 최소 10일 이전부터 고지함과 동시에 이메일 등을 이용하여 1회 이상 개별적으로 고지합니다.
                            ③ 다음은 예외로 합니다.
                            - 관계 법령에 의하여 수사상의 목적으로 관계기관으로부터의 요구가 있을 경우
                            - 통계작성, 학술연구나 시장조사를 위하여 특정 개인을 식별할 수 없는 형태로 광고주, 협력사나 연구단체 등에 제공하는 경우
                            - 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우
                            - 그러나 예외 사항에서도 관계법령에 의하거나 수사기관의 요청에 의해 정보를 제공한 경우에는 이를 당사자에게 고지하는 것을 원칙으로 운영하고 있습니다. 법률상의
                            근거에 의해 부득이하게 고지를 하지 못할 수도 있습니다. 본래의 수집목적 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 최대한 노력하겠습니다.

                            <strong class="tit">개인정보의 열람, 정정</strong>

                            ① 귀하는 언제든지 등록되어 있는 귀하의 개인정보를 열람하거나 정정하실 수 있습니다. 개인정보 열람 및 정정을 하고자 할 경우에는 “몰” 홈페이지의
                            『회원정보관리』항목을 클릭하여 직접 열람 또는 정정하거나, 개인정보관리책임자 및 담당자에게 서면, 전화 또는 E-mail로 연락하시면 지체없이 조치하겠습니다.
                            ② 귀하가 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인 정보를 이용 또는 제공하지 않습니다.
                            ③ 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체없이 통지하여 정정하도록 조치하겠습니다.

                            <strong class="tit">개인정보 수집, 이용, 제공에 대한 동의철회</strong>

                            ① 회원가입 등을 통해 개인정보의 수집, 이용, 제공에 대해 귀하께서 동의하신 내용을 귀하는 언제든지 철회하실 수 있습니다. 동의철회는 홈페이지 첫 화면의
                            『동의철회(회원탈퇴)』를 클릭하거나 개인정보관리책임자에게 서면, 전화, E-mail등으로 연락하시면 즉시 개인정보의 삭제 등 필요한 조치를 하겠습니다. 동의 철회를
                            하고 개인정보를 파기하는 등의 조치를 취한 경우에는 그 사실을 귀하께 지체없이 통지하도록 하겠습니다.
                            ② “몰”은 개인정보의 수집에 대한 동의철회(회원탈퇴)를 개인정보를 수집하는 방법보다 쉽게 할 수 있도록 필요한 조치를 취하겠습니다.

                            <strong class="tit">개인정보의 보유기간 및 이용기간</strong>

                            ① 귀하의 개인정보는 다음과 같이 개인정보의 수집목적 또는 제공받은 목적이 달성되면 파기됩니다. 단, 상법 등 관련법령의 규정에 의하여 다음과 같이 거래 관련 권리
                            의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우에는 일정기간 보유합니다.
                            - 회원가입정보의 경우, 회원가입을 탈퇴하거나 회원에서 제명된 경우 등 일정한 사전에 보유목적, 기간 및 보유하는 개인정보 항목을 명시하여 동의를 구합니다.
                            - 계약 또는 청약철회 등에 관한 기록 : 5년(전자상거래 등에서의 소비자보호에 관한 법률)
                            - 대금결제 및 재화 등의 공급에 관한 기록 : 5년(전자상거래 등에서의 소비자보호에 관한 법률)
                            - 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년(전자상거래 등에서의 소비자보호에 관한 법률)
                            - 방문(로그)에 관한 기록 : 3개월(통신비밀보호법)
                            ② 귀하의 동의를 받아 보유하고 있는 거래정보 등을 귀하께서 열람을 요구하는 경우 “몰”은 지체없이 그 열람, 확인할 수 있도록 조치합니다.

                            <strong class="tit">개인정보의 파기절차 및 방법</strong>

                            회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.
                            ① 파기절차
                            회원님이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에
                            따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어 집니다.
                            별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다.
                            ② 파기방법
                            종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기하고 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.

                            <strong class="tit">개인정보보호를 위한 기술 및 관리적 대책</strong>

                            ① 기술적 대책
                            “몰”은 귀하의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적 대책을 강구하고
                            있습니다.
                            - 귀하의 개인정보는 비밀번호에 의해 보호되며 파일 및 전송데이터를 암호화하거나 파일 잠금 기능(Lock)을 사용하여 중요한 데이터는 별도의 보안기능을 통해 보호되고
                            있습니다.
                            - “몰”은 백신프로그램을 이용하여 컴퓨터바이러스에 의한 피해를 방지하기 위한 조치를 취하고 있습니다. 백신프로그램은 주기적으로 업데이트되며 갑작스러운 바이러스가
                            출현할 경우 백신이 나오는 즉시 이를 제공함으로써 개인정보가 침해되는 것을 방지하고 있습니다.
                            - “몰”은 암호알고리즘을 이용하여 네트워크 상의 개인정보를 안전하게 전송할 수 있는 보안장치(SSL 또는 SET)를 채택하고 있습니다.
                            - 해킹 등 외부침입에 대비하여 침입차단시스템 및 취약점 분석시스템 등을 이용하여 보안에 만전을 기하고 있습니다.
                            ② 관리적 대책
                            “몰”은 귀하의 개인정보에 대한 접근권한을 최소한의 인원으로 제한하고 있습니다. 그 최소한의 인원에 해당하는 자는 다음과 같습니다.
                            · 이용자를 직접 상대로 하여 마케팅 업무를 수행하는 자
                            · 개인정보관리책임자 및 담당자 등 개인정보관리업무를 수행하는 자
                            · 기타 업무상 개인정보의 취급이 불가피한 자
                            - 개인정보를 취급하는 직원을 대상으로 새로운 보안 기술 습득 및 개인정보 보호 의무 등에 관해 정기적인 사내 교육 및 외부 위탁교육을 실시하고 있습니다.
                            - 입사 시 개인정보 관련 취급자의 보안서약서를 통하여 사람에 의한 정보유출을 사전에 방지하고 개인정보취급방침에 대한 이행사항 및 직원의 준수여부를 감사하기 위한
                            내부절차를 마련하고 있습니다.
                            - 개인정보 관련 취급자의 업무 인수인계는 보안이 유지된 상태에서 철저하게 이뤄지고 있으며 입사 및 퇴사 후 개인정보 사고에 대한 책임을 명확화하고 있습니다.
                            - 개인정보와 일반 데이터를 혼합하여 보관하지 않고 별도로 분리하여 보관하고 있습니다.
                            - 전산실 및 자료 보관실 등을 특별 보호구역으로 설정하여 출입을 통제하고 있습니다.
                            - “몰”은 이용자 개인의 실수나 기본적인 인터넷의 위험성 때문에 일어나는 일들에 대해 책임을 지지 않습니다. 회원 개개인이 본인의 개인정보를 보호하기 위해서 자신의
                            ID 와 비밀번호를 적절하게 관리하고 여기에 대한 책임을 져야 합니다.
                            - 그 외 내부 관리자의 실수나 기술관리 상의 사고로 인해 개인정보의 상실, 유출, 변조, 훼손이 유발될 경우 “몰”은 즉각 귀하께 사실을 알리고 적절한 대책과
                            보상을 강구할 것입니다.

                            <strong class="tit">링크사이트</strong>

                            “몰”은 귀하께 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다.
                            -이 경우 “몰”은 외부사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다.
                            “몰”이 포함하고 있는 링크를 클릭(click)하여 타 사이트(site)의 페이지로 옮겨갈 경우 해당 사이트의 개인정보취급방침은 “몰”과 무관하므로 새로 방문한
                            사이트의 정책을 검토해 보시기 바랍니다.

                            <strong class="tit">게시물</strong>

                            ① “몰”은 귀하의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다. 그러나 다음의 경우는 그렇지 아니합니다.
                            - 스팸(spam)성 게시물 (예 : 행운의 편지, 8억 메일, 특정사이트 광고 등)
                            - 타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글
                            - 동의 없는 타인의 신상공개 “몰”의 저작권, 제 3자의 저작권 등 권리를 침해하는 내용, 기타 게시판 주제와 다른 내용의 게시물
                            - “몰”은 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개 시 특정부분을 삭제하거나 기호 등으로 수정하여 게시할 수 있습니다.
                            - 다른 주제의 게시판으로 이동 가능한 내용일 경우 해당 게시물에 이동 경로를 밝혀 오해가 없도록 하고 있습니다.
                            - 그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있습니다.
                            ② 근본적으로 게시물에 관련된 제반 권리와 책임은 작성자 개인에게 있습니다. 또 게시물을 통해 자발적으로 공개된 정보는 보호받기 어려우므로 정보 공개 전에
                            심사숙고하시기 바랍니다.

                            <strong class="tit">수집한 개인정보의 위탁</strong>

                            ① 개인정보 취급 위탁을 받는 자 : (주)위트플러스
                            ② 개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 DB시스템 구축 및 운영/관리(전산아웃소싱)
                            (주)위트플러스를 제외하고 고객님의 동의없이 고객님의 정보를 외부 업체에 위탁하지 않습니다.
                            향후 그러한 필요가 생길 경우, 위탁 대상자와 위탁 업무 내용에 대해 고객님에게 통지하고 사전 동의를 받도록 하겠습니다.

                            <strong class="tit">이용자의 권리와 의무</strong>

                            ① 귀하의 개인정보를 최신의 상태로 정확하게 입력하여 불의의 사고를 예방해 주시기 바랍니다. 이용자가 입력한 부정확한 정보로 인해 발생하는 사고의 책임은 이용자
                            자신에게 있으며 타인 정보의 도용 등 허위정보를 입력할 경우 회원자격이 상실될 수 있습니다.
                            ② 귀하는 개인정보를 보호받을 권리와 함께 스스로를 보호하고 타인의 정보를 침해하지 않을 의무도 가지고 있습니다. 비밀번호를 포함한 귀하의 개인정보가 유출되지 않도록
                            조심하시고 게시물을 포함한 타인의 개인정보를 훼손하지 않도록 유의해 주십시오. 만약 이 같은 책임을 다하지 못하고 타인의 정보 및 존엄성을 훼손할 시에는 『정보통신망
                            이용촉진 및 정보보호 등에 관한 법률』등에 의해 처벌받을 수 있습니다.

                            <strong class="tit">의견수렴 및 불만처리</strong>

                            ① “몰”은 귀하의 의견을 소중하게 생각하며, 귀하는 의문사항으로부터 언제나 성실한 답변을 받을 권리가 있습니다.
                            ② “몰”은 귀하와의 원활환 의사소통을 위해 고객센터를 운영하고 있으며 연락처는 다음과 같습니다.

                            <strong class="tit">고객센터</strong>
                            - 전화번호 : 080-732-0101
                            - 주 소 : 서울특별시 중구 퇴계로46길 23, 1층(묵정동)
                            전화상담은 평일 오전 09:00 ~ 오후 17:00까지 가능합니다.
                            근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 합니다.
                            ③ 기타 개인정보에 관한 상담이 필요한 경우에는 개인정보침해신고센터, 정보보호마크 인증위원회,
                            대검찰청 인터넷범죄수사센터, 경찰청 사이버범죄수사대 등으로 문의하실 수 있습니다.
                            개인정보 침해신고센터 (한국인터넷진흥원 운영)
                            - 소관업무 : 개인정보 침해사실 신고, 상담 신청
                            - 홈페이지 : privacy.kisa.or.kr
                            - 전화 : (국번없이) 118
                            - 주소 : (58324) 전남 나주시 진흥길 9(빛가람동 301-2) 3층 개인정보침해신고센터
                            개인정보 분쟁조정위원회
                            - 소관업무 : 개인정보 분쟁조정신청, 집단분쟁조정 (민사적 해결)
                            - 홈페이지 : www.kopico.go.kr
                            - 전화 : (국번없이) 1833-6972
                            - 주소 : (03171)서울특별시 종로구 세종대로 209 정부서울청사 4층
                            대검찰청 사이버수사과 : http://www.spo.go.kr
                            경찰청 사이버안전국 : http://cyberbureau.police.go.kr


                            <strong class="tit">개인정보관리책임자 및 담당자</strong>

                            “몰”은 귀하가 좋은 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다. 개인정보를 보호하는데 있어 귀하께 고지한 사항들에 반하는 사고가 발생할 시에
                            개인정보관리책임자가 모든 책임을 집니다.
                            그러나 기술적인 보완조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 방문자가 작성한 게시물에
                            의한 각종 분쟁에 관해서는 책임이 없습니다.
                            귀하의 개인정보를 취급하는 개인정보 보호책임자는 다음과 같으며 개인정보 관련 문의사항에 신속하고 성실하게 답변해드리고 있습니다.

                            성 명 : 정재훈
                            소속부서 : 와인나라 마케팅팀
                            전자우편 : jjh2310@winenara.com
                            전화번호 : 02)2175-0023

                            <strong class="tit">아동의 개인정보보호</strong>

                            “몰”은 온라인 환경에서 만 14세 미만 어린이의 개인정보를 보호하는 것 역시 중요한 일이라고 생각하고 있습니다.
                            “몰”은 만 14세 미만의 어린이들을 회원으로 가입할 수 없게 하고 있습니다. 즉, 만 14세 미만의 어린이들은 “몰”에서 회원 자격의 서비스를 받을 수 없습니다.

                            <strong class="tit">광고성 정보 전송</strong>

                            ① “몰”은 귀하의 명시적인 수신거부의사에 반하여 영리목적의 광고성 정보를 전송하지 않습니다.
                            ② “몰”은 귀하가 뉴스레터 등 전자우편 전송에 대한 동의를 한 경우 전자우편의 제목란 및 본문란에 다음 사항과 같이 귀하가 쉽게 알아 볼 수 있도록 조치합니다.
                            - 전자우편의 제목란 : (광고)라는 문구를 제목란에 표시하지 않을 수 있으며 전자우편 본문란의 주요 내용을 표시합니다.
                            - 전자우편의 본문란 :
                            귀하가 수신거부의 의사표시를 할 수 있는 전송자의 명칭, 전자우편주소, 전화번호 및 주소를 명시합니다.
                            귀하가 수신 거부의 의사를 쉽게 표시할 수 있는 방법을 한글 및 영문으로 각각 명시합니다.
                            귀하가 동의를 한 시기 및 내용을 명시합니다.
                            ③ “몰”은 상품정보 안내 등 온라인 마케팅을 위해 광고성 정보를 전자우편 등으로 전송하는 경우 전자우편의 제목란 및 본문란에 다음 사항과 같이 귀하가 쉽게 알아 볼
                            수 있도록 조치합니다.
                            - 전자우편의 제목란 : (광고)또는(성인광고)라는 문구를 제목란의 처음에 빈칸없이 한글로 표시하고 이어서 전자우편 본문란의 주요 내용을 표시합니다.
                            - 전자우편의 본문란 : 귀하가 수신거부의 의사표시를 할 수 있는 전송자의 명칭, 전자우편주소, 전화번호 및 주소를 명시합니다. 귀하가 수신 거부의 의사를 쉽게
                            표시할 수 있는 방법을 한글 및 영문으로 각각 명시합니다.
                            ④ 다음과 같이 청소년에게 유해한 정보를 전송하는 경우 "(성인광고)" 문구를 표시합니다.
                            - 본문란에 다음 각 항목에 해당하는 것이 부호, 문자, 영상 또는 음향의 형태로 표현된 경우(해당 전자우편의 본문란에는 직접 표현되어있지 아니하더라도 수신자가
                            내용을 쉽게 확인할 수 있도록 기술적 조치가 되어 있는 경우를 포함한다)에는 해당 전자우편의 제목란에 "(성인광고)" 문구를 표시합니다.
                            청소년(19세미만의 자를 말한다. 이하 같다)에게 성적인 욕구를 자극하는 선정적인 것이거나 음란한 것
                            청소년에게 포악성이나 범죄의 충동을 일으킬 수 있는 것
                            성폭력을 포함한 각종 형태의 폭력행사와 약물의 남용을 자극하거나 미화하는 것
                            청소년보호법에 의하여 청소년 유해매체물로 결정, 고시된 것
                            - 영리목적의 광고성 전자우편 본문란에서 제4항 각항목에 해당하는 내용을 다룬 인터넷 홈페이지를 알리는 경우에는 해당 전자우편의 제목란에 "(성인광고)" 문구를
                            표시합니다.
                            ⑤ 팩스, 휴대폰 문자전송 등 전자우편 이외의 문자전송을 통해 영리목적의 광고성 정보를 전송하는 경우에는 전송내용 처음에 "(광고)"라는 문구를 표기하고 전송내용
                            중에 전송자의 연락처를 명시하도록 조치합니다.

                            <strong class="tit">고지의 의무</strong>

                            현 개인정보취급방침은 2022년 6월 1일에 제정되었으며 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가, 삭제 및 수정이 있을 시에는 개정 최소 10일 전부터
                            홈페이지의 공지란을 통해 고지할 것입니다.


                            개인정보취급방침 시행일자: 2022년 7월 1일
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //개인정보약관동의 -->

    <!-- 개인(신용)정보의 수집·이용에 관한 사항 -->
    <div class="layer credit_use_layer privacy_law" id="credit_use_layer">
        <div class="display_table">
            <div class="table_cell">
                <div class="layer_area">
                    <h2 class="layer_tit">개인(신용)정보의 수집·이용에 관한 사항</h2>
                    <button type="button" class="layer_close" onclick="commonUI.layer.close()">닫기</button>
                    <div class="layer_con">
                        <p class="txt">
                            <!-- <strong class="tit">수집.이용에 관한 사항 내용</strong> -->

                        </p>
                        <table class="credit_use_table">
                            <colgroup>
                                <col class="col01">
                                <col class="col02">
                                <col class="col03">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>수집 목적</th>
                                    <th>수집 항목
                                    </th>
                                    <th>보유 기간
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>맞춤형 회원 서비스 제공
                                    </td>
                                    <td>성별,생년월일</td>
                                    <td><b>회원 탈퇴 <br>즉시 파기</b></td>
                                </tr>
                            </tbody>
                        </table>
                        <p></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //개인(신용)정보의 수집·이용에 관한 사항 -->

    <!-- 개인(신용)정보의 조회에 관한 사항 -->
    <div class="layer credit_view_layer privacy_law" id="credit_view_layer">
        <div class="display_table">
            <div class="table_cell">
                <div class="layer_area">
                    <h2 class="layer_tit">개인(신용)정보의 조회에 관한 사항</h2>
                    <button type="button" class="layer_close" onclick="commonUI.layer.close()">닫기</button>
                    <div class="layer_con">
                        <p class="txt">
                            할인쿠폰 및 혜택, 이벤트, 신상품 소식 등 쇼핑몰에서 제공하는 유익한 쇼핑정보를 SMS나 이메일로 받아보실 수 있습니다.
                            단, 주문/거래 정보 및 주요 정책과 관련된 내용은 수신동의 여부와 관계없이 발송됩니다.
                            선택 약관에 동의하지 않으셔도 회원가입은 가능하며, 회원가입 후 회원정보수정 페이지에서 언제든지 수신여부를 변경하실 수 있습니다.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //개인(신용)정보의 조회에 관한 사항 -->
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
	var page = 'law_agreement';
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