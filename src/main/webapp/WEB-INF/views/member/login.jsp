<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

	<script type="text/javascript">
	
		function close_login_popup() {
			if(document.referrer === window.location.href){
				console.log(document.referrer, window.location.href, "<-같아서 메인");
				location.href= '/';
			}else{
				console.log(document.referrer, window.location.href, "<-달라서 이전");
				location.href = document.referrer;
			}
		}
		
		//쿠키 저장
		function set_cookie(name, value, exp) {
			let date = new Date();
			date.setTime(date.getTime() + exp*24*60*60*1000);
		    document.cookie = encodeURIComponent(name) + '=' + encodeURIComponent(value) + ';expires=' + date.toUTCString() + ';path=/login';
		}

		//쿠키 값 읽기
		function get_cookie(name) {
		    var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
		    return value? value[2] : null;
		}

		//쿠키 삭제
		function delete_cookie(name) {
			document.cookie = encodeURIComponent(name) + '=; expires=Thu, 01 Jan 1970 00:00:01 GMT;path=/login';
		    get_cookie(name);
		}
		
		function login(){
			if(!$("#login_user_id").val()){
				alert("아이디를 입력하세요");
				$("#login_user_id").focus();
				return false;
			}
				
			if(!$("#login_passwd").val()){
				alert("비밀번호를 입력하세요");
				$("#login_passwd").focus();
				return false;
			}
			/*
			let formData = {
				username: $("#login_user_id").val(),
				password: $("#login_passwd").val(),
				rememberId: $("#id_save").is(":checked"),
				remember_me: $("#login_auto").is(":checked")
			};*/
			let formData = $("#LoginPostFrm").serialize();
			console.log(formData);
			$.ajax({
				url : "/login",
				type: "POST",
				contentType: 'application/x-www-form-urlencoded; charset=utf-8',
				data : formData,
				beforeSend : function(xhr){
					let header = $("meta[name='_csrf_header']").attr("content");
					let token = $("meta[name='_csrf']").attr("content");
					xhr.setRequestHeader(header, token);
				},
				success : function (result, status) {
					console.log(result, status);
					
					//아이디 저장
					if(result.isRememberId){ //쿠키저장
						$("input:checkbox[id='id_save']").prop('checked',true);
						set_cookie('isRememberId', result.memberId, 7);
					}else{ //쿠키삭제
						console.log('아이디 저장x');
						delete_cookie('isRememberId');
					}
					location.href = result.redirectUrl;
					console.log(result.redirectUrl, result.isRememberId, result.memberId, get_cookie('isRememberId'));
				},
				error : function (error, status){
					console.log(status, error);
					console.log(JSON.parse(error.responseText));
					$("#login_err").text(JSON.parse(error.responseText));
				}
			});
		}
		
		$( document ).ready(function() {
			let rememberedId = get_cookie('isRememberId');
			if (rememberedId){
				$("#login_user_id").val(decodeURIComponent(rememberedId));
				$("input:checkbox[id='id_save']").prop('checked',true);
			}
			console.log(decodeURIComponent(rememberedId));
		});
	</script>

	 <form id="LoginPostFrm">
		<!-- <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> -->
		<div class="layer login_layer" id="login_layer"
			style="display: block;">
			<div class="display_table">
				<div class="table_cell">
					<div class="layer_area">
						<h2 class="layer_tit">
							회원서비스
							<!-- <p class="check"><span>로그인</span></p>
                                <p><span><a href="/shop/member/join/law_agreement">회원가입</a></span></p> -->
						</h2>
						<!--  <button type="button" class="layer_close"
							onclick="commonUI.layer.close()">닫기</button>-->
						<button type="button" class="layer_close"
							onclick="close_login_popup();">닫기</button>
						<div class="layer_con">
						<div class="social_login">
								<h2 class="social_tit">로그인</h2>
							</div>
							<div class="form_area">
								<ul>
									<li>
										<div class="form_box">
											<input type="text" id="login_user_id" name="username"
												value="" placeholder="아이디를 입력하세요">
										</div>
									</li>
									<li>
										<div class="form_box">
											<input type="password" id="login_passwd" name="password"
												placeholder="비밀번호를 입력하세요">
										</div>
									</li>
								</ul>
							</div>
							<div class="save_box">
								<p id="login_err" class="input_info_txt" style="margin-bottom: 20px; margin-top: -10px;"></p>
								<div class="checkbox">
									<input type="checkbox" name="remember-me" id="login_auto"> <label for="login_auto">로그인유지</label>
								</div>
								<div class="checkbox">
									<input type="checkbox" name="id_save" id="id_save" value="Y">
									<label for="id_save">아이디저장</label>
								</div>
							</div>
							<div class="btn_area">
								<button type="button" class="btn_txt btn_black" id="loginBtn" onclick="login();">
									<span>로그인</span>
								</button>
							</div>
							<div class="login_sub_btn">
								<a href="/shop/member/forgoten/forgoten_id" class="btn">아이디
									찾기</a> <a href="/shop/member/forgoten/forgoten_pw" class="btn">비밀번호
									재발급</a>
							</div>
							<!--<div class="social_login">
								<h2 class="social_tit">소셜아이디로 로그인</h2>
								<ul>
									<li><a href="#none" class="social_btn naver">네이버</a></li>
									<li><a href="#none" class="social_btn kakao">카카오</a></li>
								</ul>
							</div>
							-->
							<div class="non_member_order">
								<a href="/joinForm" class="btn_txt">회원가입</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>