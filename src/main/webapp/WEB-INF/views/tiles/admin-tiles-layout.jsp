<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 공통변수 처리 -->
<c:set var="CONTEXT_PATH" value="${pageContext.request.contextPath}" scope="application" />
<c:set var="RESOURCES_PATH" value="${CONTEXT_PATH}/resources/asset/admin" scope="application" />

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<!-- Custom fonts for this template-->
<link href="${RESOURCES_PATH}/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="${RESOURCES_PATH}/css/sb-admin-2.min.css" rel="stylesheet">
<!-- Bootstrap core JavaScript-->
<script src="${RESOURCES_PATH}/vendor/jquery/jquery.min.js"></script>
<script
	src="${RESOURCES_PATH}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script
	src="${RESOURCES_PATH}/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="${RESOURCES_PATH}/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="${RESOURCES_PATH}/vendor/chart.js/Chart.min.js"></script>



<!-- Page level plugins -->
<script
	src="${RESOURCES_PATH}/vendor/datatables/jquery.dataTables.min.js"></script>
<script
	src="${RESOURCES_PATH}/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="${RESOURCES_PATH}/js/demo/datatables-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script type="text/javascript" src="${RESOURCES_PATH}/js/jsQR.js"></script>
<style>
.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.5);
}

.modal-content {
	background-color: #fff;
	margin: 10% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
}

.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
</style>
</head>
<body class="vsc-initialized" id="page-top">
	<div id="wrapper">
		<tiles:insertAttribute name="sidebar" />
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<tiles:insertAttribute name="admin_nav" />
				<tiles:insertAttribute name="body" />
				<!-- Footer -->
				<footer class="sticky-footer bg-white">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Copyright &copy; H-WINE 조일우 노희진 차민수 김주현</span>
						</div>
					</div>
				</footer>
				<!-- End of Footer -->
			</div>
		</div>
	</div>
	<!-- end Wrapper -->
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">로그아웃</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">로그아웃 하시겠습니까?</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">취소</button>
					<form action="/logout" method="post">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
						<button type="submit" class="logout btn btn-primary">로그아웃</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Logout Modal End -->

	<!-- QR CODE SCAN Modal start -->
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
								<div id="test" style="display: flex; flex-direction: column;">
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
									<div class="card border-left-success shadow h-100 py-2"
										style="display: none">
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
				<div class="modal-footer qrcode"></div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		$(document).ready(function() {
			startTime();
		});

		function startTime() {
			const today = new Date();

			let year = today.getFullYear();
			let month = today.getMonth() + 1;
			let day = today.getDate();

			let h = today.getHours();
			let m = today.getMinutes();
			let s = today.getSeconds();
			m = checkTime(m);
			s = checkTime(s);
			$('#navTime').html(
					"현재시각 : " + year + "년 " + month + "월 " + day + "일 " + h
							+ "시 " + m + "분 " + s + "초 ");
			$('#currentTime').html(
					"현재시각 : " + year + "년 " + month + "월 " + day + "일 " + h
							+ "시 " + m + "분 " + s + "초 ");
			setTimeout(startTime, 1000);
		}

		function checkTime(i) {
			if (i < 10) {
				i = "0" + i
			}
			; // add zero in front of numbers < 10
			return i;
		}
	</script>

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

    function requestCameraAccess() {
        navigator.mediaDevices.getUserMedia({ video: { facingMode: "environment" } })
        .then(function(stream) {
            video.srcObject = stream;
            video.setAttribute("playsinline", true);
            video.play();
            requestAnimationFrame(tick);
        })
        .catch(function(error) {
            console.error('Error accessing camera:', error);
        });
    }

    function tick() {
        loadingMessage.innerText = "⌛ Enabling scanning feature...";
        if (video.readyState === video.HAVE_ENOUGH_DATA) {
            loadingMessage.hidden = true;
            canvasElement.hidden = false;
            outputContainer.hidden = false;
            canvasElement.height = video.videoHeight;
            canvasElement.width = video.videoWidth;
            canvas.drawImage(video, 0, 0, canvasElement.width, canvasElement.height);
            var imageData = canvas.getImageData(0, 0, canvasElement.width, canvasElement.height);
            var code = jsQR(imageData.data, imageData.width, imageData.height, {
                inversionAttempts: "dontInvert",
            });
            if (code) {
                drawLine(code.location.topLeftCorner, code.location.topRightCorner, "#FF0000");
                drawLine(code.location.topRightCorner, code.location.bottomRightCorner, "#FF0000");
                drawLine(code.location.bottomRightCorner, code.location.bottomLeftCorner, "#FF0000");
                drawLine(code.location.bottomLeftCorner, code.location.topLeftCorner, "#FF0000");
                outputMessage.hidden = true;
                outputData.parentElement.hidden = false;
                outputData.innerHTML = code.data;
                setTimeout(function() {
                    window.location.href = code.data;
                }, 1000);
            } else {
                outputMessage.hidden = false;
                outputData.parentElement.hidden = true;
            }
        }
        requestAnimationFrame(tick);
    }
	$("#qrcodeScan").on("click", function() {
	    $('#checkModal').on('shown.bs.modal', function() {
	        requestCameraAccess();
	    });
	    $('#checkModal').modal('show');
	    $(".modal-backdrop").removeClass("show");
	    $(".modal-backdrop").attr("style", 'z-index:0');
	    $('.modal-footer').html(`<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>`);
	});

	});
	$(document).on("click", "#logout", function(){
		 $(".modal-backdrop").removeClass("show");
	     $(".modal-backdrop").attr("style", 'z-index:0;');
	});
</script>

</body>

</html>