<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<script type="text/javascript" src="/resources/asset/admin/js/jsQR.js"></script>


<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary qr" data-toggle="modal"
		data-target="#checkModal" data-rid="230323008">Launch static
		backdrop modal</button>

	<!-- Modal start -->
	<div class="modal fade text-black" id="checkModal"
		data-backdrop="static" data-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg">
			<div class="modal-content p-3" style="font-weight: bold;">
				<div class="modal-body">
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">QR CODE SCAN</h6>
						</div>
						<div class="card-body">
							<div>
								<div id="test" style="display: flex;flex-direction: column;">
									<div class="col-xl-3 col-md-6 mb-4" style="max-width: 100%;">
										<div class="card border-left-primary shadow h-100 py-2">
											<div class="card-body">
												<div class="row no-gutters align-items-center">
													<div class="col mr-2">
														<div
															class="text-xs font-weight-bold text-primary text-uppercase mb-1">
															QR CODE SCAN</div>
														<div class="h5 mb-0 font-weight-bold text-gray-800">QR
															코드를 제시하여 주십시오.</div>
													</div>
													<div class="col-auto">
														<i class="fas fa-calendar fa-2x text-gray-300"></i>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="card border-left-success shadow h-100 py-2" style="display:none">
										<div class="card-body">
											<div class="row no-gutters align-items-center">
												<div class="col mr-2">
													<div
														class="text-xs font-weight-bold text-success text-uppercase mb-1">
														이동 URL</div>
													<div class="h5 mb-0 font-weight-bold text-gray-800">
														<div id="output">
															<div id="outputMessage">이동 URL이 표시됩니다.</div>
															<div id="outputLayer" hidden>
																<span id="outputData"></span>
															</div>
														</div>
													</div>
												</div>
												<div class="col-auto">
													<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xl-4 col-lg-5" style="max-width: 100%;">
									<div class="card shadow mb-4">
										<!-- Card Header - Dropdown -->
										<div
											class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
											<h6 class="m-0 font-weight-bold text-primary">Revenue
												Sources</h6>
											<div class="dropdown no-arrow">
												<a class="dropdown-toggle" href="#" role="button"
													id="dropdownMenuLink" data-toggle="dropdown"
													aria-haspopup="true" aria-expanded="false"> <i
													class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
												</a>
												<div
													class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
													aria-labelledby="dropdownMenuLink" style="">
													<div class="dropdown-header">Dropdown Header:</div>
													<a class="dropdown-item" href="#">Action</a> <a
														class="dropdown-item" href="#">Another action</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#">Something else here</a>
												</div>
											</div>
										</div>
										<!-- Card Body -->
										<div class="card-body">
											<div
												style="display: flex; flex-direction: column; flex-wrap: wrap;">
												<div id="frame"
													style="width: fit-content; display: flex; flex-direction: column; justify-content: center;">
													<div id="loadingMessage">
														🎥 비디오 스트림에 액세스 할 수 없습니다<br />웹캠이 활성화되어 있는지 확인하십시오
													</div>
													<div>
														<canvas id="canvas" style="width: 100%"></canvas>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>



</div>
<!-- /.container-fluid -->
<script type="text/javascript">
	document.addEventListener("DOMContentLoaded", function() {
		var video = document.createElement("video");
		var canvasElement = document.getElementById("canvas");
		var canvas = canvasElement.getContext("2d");
		var loadingMessage = document.getElementById("loadingMessage");
		var outputContainer = document.getElementById("output");
		var outputMessage = document.getElementById("outputMessage");
		var outputData = document.getElementById("outputData");
		function drawLine(begin, end, color) {
			canvas.beginPath();
			canvas.moveTo(begin.x, begin.y);
			canvas.lineTo(end.x, end.y);
			canvas.lineWidth = 4;
			canvas.strokeStyle = color;
			canvas.stroke();
		}
		// 카메라 사용시
		navigator.mediaDevices.getUserMedia({
			video : {
				facingMode : "environment"
			}
		}).then(function(stream) {
			video.srcObject = stream;
			video.setAttribute("playsinline", true); // iOS 사용시 전체 화면을 사용하지 않음을 전달
			video.play();
			requestAnimationFrame(tick);
		});
		function tick() {
			loadingMessage.innerText = "⌛ 스캔 기능을 활성화 중입니다."
			if (video.readyState === video.HAVE_ENOUGH_DATA) {
				loadingMessage.hidden = true;
				canvasElement.hidden = false;
				outputContainer.hidden = false;
				// 읽어들이는 비디오 화면의 크기
				canvasElement.height = video.videoHeight;
				canvasElement.width = video.videoWidth;
				canvas.drawImage(video, 0, 0, canvasElement.width,
						canvasElement.height);
				var imageData = canvas.getImageData(0, 0, canvasElement.width,
						canvasElement.height);
				var code = jsQR(imageData.data, imageData.width,
						imageData.height, {
							inversionAttempts : "dontInvert",
						});
				// QR코드 인식에 성공한 경우
				if (code) {
					// 인식한 QR코드의 영역을 감싸는 사용자에게 보여지는 테두리 생성
					drawLine(code.location.topLeftCorner,
							code.location.topRightCorner, "#FF0000");
					drawLine(code.location.topRightCorner,
							code.location.bottomRightCorner, "#FF0000");
					drawLine(code.location.bottomRightCorner,
							code.location.bottomLeftCorner, "#FF0000");
					drawLine(code.location.bottomLeftCorner,
							code.location.topLeftCorner, "#FF0000");
					outputMessage.hidden = true;
					outputData.parentElement.hidden = false;
					// QR코드 메시지 출력
					outputData.innerHTML = code.data;
					setTimeout(function() {
						// Redirect to the URL
						window.location.href = code.data;
					}, 1000);
					// return을 써서 함수를 빠져나가면 QR코드 프로그램이 종료된다.
					// return;
				}
				// QR코드 인식에 실패한 경우 
				else {
					outputMessage.hidden = false;
					outputData.parentElement.hidden = true;
				}
			}
			requestAnimationFrame(tick);
		}
	});
	$(".qr").on("click", function() {
	      $('#checkModal').modal('show');
	      $(".modal-backdrop").removeClass("show");
	      $(".modal-backdrop").attr("style", 'z-index:0');
	      $('.modal-footer').html(`<button type="button" class="btn btn-secondary"
                  data-dismiss="modal">닫기</button>
               <button type="button" class="btn btn-primary" id="confirmButton">확인</button>`);
	   });
</script>
</html>