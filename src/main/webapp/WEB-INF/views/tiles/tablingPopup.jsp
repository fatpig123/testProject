<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<style>
.popup_dim {
	display: none;
	overflow: hidden;
	position: fixed;
	left: 0;
	top: -100%;
	width: 100%;
	height: 100%;
	z-index: 9;
	background-color: rgba(0, 0, 0, 0.6);
	opacity: 0;
}

.popup {
	height: auto;
	margin-top: 0;
	padding-bottom: 0;
	z-index: auto;
}

.popAdEvent {
	overflow: hidden;
}

.popup_dim .popup .popup_container {
	max-height: 80vh;
}

.popup .popup_container {
	position: static;
	height: auto;
	padding-bottom: 0;
}

.popAdEvent .popup_container {
	overflow-y: auto;
	background-color: #fff;
	border-radius: 16px 16px 0 0;
}

.container.gutter-sm {
	padding: 0 20px;
}

.form-block .form-block-header {
	padding: 10px 0;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.searched-keyword-list-item {
	display: flex;
	align-items: center;
	padding: 12px 0;
}

.searched-keyword-list-item .tb {
	margin-right: 12px;
}

.searched-keyword-list-item .tb .img {
	width: 48px;
	height: 64px;
	border-radius: 6px;
	background: 50% 50% no-repeat;
	background-size: cover;
}

.btn_adEvent_wrap {
	overflow: hidden;
	width: 85.333%;
	margin: 24px auto 0;
}

.btn_adEvent_wrap .btn_adEvent_close {
	float: right;
	font-weight: 500;
	font-size: 14px;
	color: #666;
	line-height: 17px;
}

.popAdEvent .popup_container .container_content {
	padding: 30px 0 !important;
}

.btn_adEvent_wrap .adEvent_form input[type="checkbox"].com_checkbox3+label:before
	{
	content: '';
	display: block;
	float: left;
	width: 14px;
	height: 14px;
	margin-right: 5px;
	padding: 0;
	background: #fff url(data : image/ svg + xml; charset =UTF-8,%3csvg
	xmlns='http :// www.w3.org/ 2000/ svg ' width=' 12 ' height=' 9
	'%3e%3cpath d=' M10.58.22a.749.749 0 011.132 .976l- .072 .084 -7.467
	7.467a .75 .75 0 01 -.977 .073l- .084 -.073L .22 5.855a .749 .749 0
	01.976 -1.133l .084 .072 2.362 2.362L10 .579 .22z ' fill=' % 23bfbfbf
	' fill-rule=' nonzero '/ % 3e % 3c/ svg % 3e) center scroll no-repeat;
	background-size: 11px 8px;
	border: 1px solid #d9d9d9;
	border-radius: 3px;
}
</style>
<script>
	jQuery(function($) {
		/* S 팝업
		       Description: 
		       1. property 'data-popup-direction' 값에 따라 애니메이션 다름
		           - UP   : bottom -> top
		           - DOWN   : top -> bottom 
		           - RIGHT : left -> right
		           - LEFT   : right -> left
		       2. property 'data-popup-depth' 값에 따라 2중 이상 팝업 처리가능
		   
		       3. property 'data-popup-onclick' 값에 따라 onclick 이벤트로 팝업 open 사용가능
		           - data-popup-onclick = false (기본 false 세팅) onclick 삭제처리
		           - data-popup-onclick = true
		               onclick 에 jQuery.fn.openPopup(this)에 처리
		   
		   
		       3. 팝업내 class 'btn_close', 'btnPopClose' 둘중 하나인경우 property 'data-popup-onclick' 값에 따라 onclick 이벤트로 팝업 close 사용가능
		           - data-popup-onclick = false (기본 false 세팅) onclick 삭제처리
		           - data-popup-onclick = true
		               onclick 에 jQuery.fn.closePopup( popupID )에 처리
		   
		       4. 수동으로 팝업 열기 처리 $.fn.openPopup( popupID, popupDir, popupDepth );
		           - popupID : 열고 싶은 팝업 아이디 
		           - popupDir : 열고 싶은 팝업 방향 'UP', 'DOWN', 'RIGHT', 'LEFT', 'CENTER'
		           - popupDepth : 팝업의 Depth (다중팝업일 경우 기존 팝업을 안닫고 열경우 설정)
		   
		       5. 수동으로 팝업 닫기 처리 $.fn.closePopup( popupID )
		   
		 */
		$.setClosePopup = function(_target, _popupDir) {
			var _depth = _target.data('popupDepth') || null;

			if (_target.data('popupDepth') != null) {
				_target.css({
					'z-index' : Number(_target.css('zIndex')) - Number(_depth)
				});
			}
			switch (_popupDir) {
			case 'UP':
				_target.children('.popup').animate({
					bottom : '-100%'
				}, 300);
				break;
			case 'RIGHT':
				_target.children('.popup').animate({
					left : '-100%'
				}, 300);
				break;
			case 'DOWN':
				_target.children('.popup').animate({
					top : '-100%'
				}, 300);
				break;
			case 'LEFT':
				_target.children('.popup').animate({
					right : '-100%'
				}, 300);
				break;

			case 'CENTER':
			default:
				break;
			}

			_target.animate({
				opacity : '0',
			}, 300, function() {
				$(this).css({
					'top' : '-100%'
				});

				var targetId = $(this).get(0).id;

				if (targetId == 'popMyVIPScoreHistory'
						|| targetId == 'popSetting') {
					$(this).css({
						'display' : 'none'
					});
				}

				if ($(this).data('popupDepth') == undefined
						|| $(this).data('popupDepth') == null) {
					$("body").removeClass("scrlOff");
				}
			});
		};
		//popup open
		$('[data-popup]')
				.on(
						{
							click : function(e) {
								var isOnclick = $(this).data('popupOnclick') || false;

								if (!isOnclick) {
									var popupTarget = $(this).data('popup')
											|| null;
									var popupDir = $(this).attr(
											'data-popup-direction')
											|| null;
									var popupDepth = $(this).data('popupDepth')
											|| null;
									$.fn.openPopup(popupTarget, popupDir,
											popupDepth);
								}
							}
						});

		// popup close
		$('.popup_dim').find('.btn_close, .btnPopClose').on(
				'click',
				function(e) {
					console.log('popup DIM CLOSE - btn_close or btnPopClose');
					e.stopPropagation();
					var isOnclick = $(this).data('popupOnclick') || false;

					if (!isOnclick) {
						var $target = jQuery(this).closest('.popup_dim');
						var popupDir = $target.attr('data-popup-direction')
								|| null;

						$.setClosePopup($target, popupDir);

						var _type = $(this).data('type') || null;

						switch (_type) { /* D 간편결제 */
						case 'select':
							$('.' + this.id).addClass('active').siblings()
									.removeClass('active');
							$('.' + this.id).parents('.select_area').addClass(
									'selected');
							break;
						default:
							break;
						}
					}
				});

		$('.popup_dim').on('click', function(e) {
			console.log('popup DIM CLOSE');
			var isOnclick = $(this).data('popupOnclick') || false;

			if (!isOnclick) {
				if (e.currentTarget === e.target) { // console.log("DIM 영역");
					var popupDir = $(this).attr('data-popup-direction');
					//   console.log('popup_dim', popupDir);
					$.setClosePopup($(this), popupDir);
				} else { //   console.log("DIM 이외 영역");
					var idStr = $(e.currentTarget).attr("id");
					if (idStr == "wrapSelectCard") {
						$("body").removeClass("scrlOff");
					}
				}
			}
		});

		$.fn.closePopup = function(_targetId) {

			var $target = $("#" + _targetId);
			var popupDir = $target.attr('data-popup-direction');

			$.setClosePopup($target, popupDir);
		};

		$.fn.openPopup = function(_target, _dir, _depth) {
			console.log('openPopup Click');
			var popupTarget = _target || null;
			popupTarget = 'popAdEvent';
			var popupDir = _dir || null;
			var popupDepth = _depth || null;

			if (popupDepth != null) {
				$('#' + popupTarget).css(
						{
							'z-index' : Number($('#' + popupTarget).css(
									'zIndex'))
									+ Number(_depth)
						});
			}

			$('#' + popupTarget).css({
				'top' : '0'
			});
			$('#' + popupTarget).attr('data-popup-direction', popupDir);
			$('[data-popup="' + popupTarget + '"]').attr(
					'data-popup-direction', popupDir);

			switch (popupDir) {
			case 'UP':
				$('#' + popupTarget).children('.popup').css({
					'position' : 'absolute',
					'top' : 'auto',
					'right' : '0',
					'bottom' : '-100vh',
					'left' : '0',
					'transform' : 'none'
				});
				$('#' + popupTarget).children('.popup').stop().animate({
					bottom : '0'
				}, 300);
				break;
			case 'RIGHT':
				$('#' + popupTarget).children('.popup').css({
					'position' : 'absoulte',
					'top' : 'auto',
					'right' : 'auto',
					'bottom' : 'auto',
					'left' : '-100vw',
					'transform' : 'none'
				});
				$('#' + popupTarget).children('.popup').animate({
					left : '0'
				}, 300);
				break;
			case 'DOWN':
				$('#' + popupTarget).children('.popup').css({
					'position' : 'absoulte',
					'top' : '-100vh',
					'right' : '0',
					'bottom' : 'auto',
					'left' : '0',
					'transform' : 'none'
				});
				$('#' + popupTarget).children('.popup').animate({
					top : '0'
				}, 300);
				break;
			case 'LEFT':
				$('#' + popupTarget).children('.popup').css({
					'position' : 'absoulte',
					'top' : 'auto',
					'right' : '-100vw',
					'bottom' : 'auto',
					'left' : 'auto',
					'transform' : 'none'
				});
				$('#' + popupTarget).children('.popup').animate({
					right : '0'
				}, 300);
				break;
			case 'CENTER':
			default: /* D 'transform':'translate(0, -50.2%)' 흐릿한 현상 해결을 위한 예외처리 */
				$('#' + popupTarget).children('.popup').css({
					'position:' : 'relative',
					'top' : '50%',
					'right' : '0',
					'bottom' : '0',
					'left' : '0',
					'transform' : 'translate(0, -50.2%)'
				});
				break;
			}

			if (popupDepth != null) { // 2Depth 이상 처리를 위한 값 세팅
				$('#' + popupTarget).attr('data-popup-depth', popupDepth);
			}

			$('#' + popupTarget).show().animate({
				opacity : '1'
			}, 300, function() {
				$("body").addClass("scrlOff");
			});
		};
	});

	function closePopAdEvent() {
		$('.top').css('display', 'block');
		$('#popAdEvent').css('z-index', 0);
		$.fn.closePopup('popAdEvent');
	}
	function openPopAdEvent() {
		$('.top').css('display', 'none');
		$('#popAdEvent').css('z-index', 1111);
		$.fn.openPopup('popAdEvent', 'UP');
	}
	/* E 팝업 */
</script>
<div id="popAdEvent" class="popup_dim" data-popup-direction="UP"
	onclick="closePopAdEvent();"
	style="top: 0px; display: none; opacity: 1;">
	<div class="popup popAdEvent"
		style="position: absolute; inset: auto 0px 70px; transform: none; max-width: 465px; margin: 0 auto;">
		<div class="popup_container">
			<div class="container_content">
				<div>
					<div>
						<section class="section">
							<div class="container gutter-sm">
								<div class="form-block">
									<div class="form-block-header">
										<h3 class="form-block-title title-sm"
											style="font-weight: 600; font-size: x-large; color: black;">와인웍스</h3>
										<sec:authorize access="isAnonymous()"><p style="font-size:12px;">* 로그인이 필요합니다.</p></sec:authorize>
									</div>
									<div class="form-block-body">
										<div class="searched-keyword-list">
											<div class="searched-keyword-list-item" id="scode1">
												<div class="tb">
													<div class="img"
														style="background-image: url(&quot;https://image.toast.com/aaaaaqx/catchtable/shopinfo/s25872/25872_226816340817840_thumbMenuImage.png&quot;);"></div>
												</div>
												<div class="keyword">
													<h4 class="name">
														<span class="label"><span style="color: #46675c">와인웍스</span>-더현대서울점</span>
													</h4>
													<div class="location">
														<div class="address">서울특별시 영등포구 여의대로 108 파크원 B1</div>
													</div>
												</div>
											</div>
											<div class="searched-keyword-list-item" id="scode2">
												<div class="tb">
													<div class="img"
														style="background-image: url(&quot;https://image.toast.com/aaaaaqx/catchtable/shopinfo/skHMWRHd6cDGgM6nwvtmabw/khmwrhd6cdggm6nwvtmabw_231211150537274_thumbMenuImage.jpg&quot;);"></div>
												</div>
												<div class="keyword">
													<h4 class="name">
														<span class="label"><span style="color: #46675c">와인웍스</span>
															-더현대 대구점</span>
													</h4>
													<div class="location">
														<div class="address">대구광역시 중구 달구벌대로 2077 현대백화점 B1</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
				<div class="btn_adEvent_wrap">
					<a href="#none" class="btn_adEvent_close"
						onclick="closePopAdEvent();">닫기</a>
				</div>
			</div>

		</div>
	</div>
</div>
<script>
	$('.searched-keyword-list-item').on("click", function() {
		location.href = '/tabling/store?store=' + $(this).attr('id');
	})
	
	$('.searched-keyword-list-item').hover(function() {
		$(this).css('cursor','pointer');
	})
</script>