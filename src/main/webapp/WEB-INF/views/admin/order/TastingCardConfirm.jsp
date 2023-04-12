<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<style>
.text-black {
	color: black !important;
}
</style>
<body>

	<!-- Begin Page Content -->
	<div class="container-fluid">

		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">와인 픽업 확인</h1>
		<p class="mb-4"></p>

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
					<div class="modal-body"></div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>
		<!-- Modal end -->
	</div>
	<!-- /.container-fluid -->

	<script>
	
	$(document).ready(function() {
		$(".qr").click();
	});
   
   function getYmd20(date) {
  		//yyyy-mm-dd 포맷 날짜 생성
   	let d = new Date(date);
   	return d.getFullYear() + "/" + ((d.getMonth() + 1) > 9 ? (d.getMonth() + 1).toString() : "0" + (d.getMonth() + 1)) + "/" + (d.getDate() > 9 ? d.getDate().toString() : "0" + d.getDate().toString());
	}
   
   function printWithCommasRegex(number) {
		let numString = String(number); // convert number to string
		let result = numString.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
		  
		return result;
	}
   
   function formatPhoneNumber(phoneNumber) {
	   var formattedNumber = phoneNumber.replace(/^(\d{3})(\d{4})(\d{4})$/, '$1-$2-$3');
	   return formattedNumber;
	 }
   
   function isEmpty(str){
		if(typeof str == "undefined" || str == null || str == "")
			return true;
		else
			return false ;
	}
   
   function loadQRInfo(tc_id) {
	   $.ajax({
		   url : "/admin/tastingCard/confirm/detail?tc_id="+tc_id,
		   type : "GET",
           success : function(data) {
        	   console.log(data);
        	   let card = data.card;
        	   let user = data.user;
        	   let str = '';
        	   $(".modal-body").empty();
        	   str += `
                      <div class="row">
                         <div class="col-11"></div>
                         <div class="col-1">
                            <button type="button" class="close" data-dismiss="modal"
                               aria-label="Close">
                               <span aria-hidden="true">&times;</span>
                            </button>
                         </div>
                      </div>
                      <div class="row">
                      	<div class="col-2 text-center"><img src="/resources/asset/images/shop/table/reservation.png" class="img-responsive"  style="max-width:50px"></div>
                         <div class="col-8">
                            <div class="row">
                               <h3><strong>TASTIG CARD QR코드 확인</strong></h3>
                            </div>
                            <div class="row p-1">TASTING CARD 번호 | \${card.tc_id}</div>
                            <input type="hidden" value="\${card.tc_id}" id="tc_id">
                         </div>
                      </div>
                      <div class="row mt-2 p-3" style="background: #FFF0D3;" id="currentTime">현재시각: </div>
                      <div class="row mt-3 mb-1 ml-2">
                         <h4><strong>TASTING CARD 정보</strong></h4>
                      </div>
                      <div class="">
                         <table class="table table-hover text-black">
                            <tbody>
                               <tr>
                                  <th scope="row">고객이름</th>
                                  <td colspan="2">\${user.mname}</td>
                               </tr>
                               <tr>
                                  <th scope="row">구매날짜</th>
                                  <td colspan="2">\${getYmd20(card.tc_date)}</td>
                               </tr>
                               <tr>
                                  <th scope="row">핸드폰번호</th>
                                  <td colspan="2">\${formatPhoneNumber(user.mphone)}</td>
                               </tr>
                               <tr>
                                  <th scope="row">TASTING CARD 구매금액</th>
                                  <td colspan="2">\${printWithCommasRegex(card.tc_money)} 원</td>
                               </tr>
                               
                            `;
                           str += `
                            </tbody>
                         </table>
                      </div>
                      <div class="form-group">
                      	<label for="confirm"><h4><strong>관리자 확인번호</strong></h4></label>
                      	<input type="password" class="form-control mt-n2" id="confirm" aria-describedby="help" placeholder="관리자용 확인 번호를 입력해주세요.">
                    </div>
                		`;
                $(".modal-body").append(str);
                startTime();
                $('.modal-footer').html(`<button type="button" class="btn btn-secondary"
                        data-dismiss="modal">닫기</button>
                     <button type="button" class="btn btn-primary" id="confirmButton">확인</button>`);
           },
           error: function (error) {
               console.log(error);
           }
	   });
   }
   
   $(".qr").on("click", function() {
      loadQRInfo($(this).data('rid'));
      $('#checkModal').modal('show');
      $(".modal-backdrop").removeClass("show");
      $(".modal-backdrop").attr("style", 'z-index:0');
   });
   
   $(document).on("click", "#confirmButton", function() {
	   console.log("안녕");
	   let tc_confirm_admin = $("#confirm").val();
		   let tc_id = $("#tc_id").val();
		   let csrfHeaderName = "${_csrf.headerName}";
		   let csrfTokenValue = "${_csrf.token}";
		   console.log(tc_confirm_admin);
		   console.log(tc_id);
		   $.ajax({
			  url : '/admin/tastingCard/confirm/detail/tasting/ok',
			  type : 'POST',
			  beforeSend : function(xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			  },
			  data : JSON.stringify({
					tc_id : tc_id,
					tc_confirm_admin : tc_confirm_admin 
			  }),
	      	  contentType : "application/json",
	      	  success : function(data) {
					console.log(data);
					if (data == 0) {
						console.log("일치하는 아이디가 없음");
						Swal.fire({
			                 icon: 'error',
			                 text: '처리 권한이 없습니다.',
			                 confirmButtonText: '닫기'
			            });
					}
					else {
						console.log("일치하는 아이디 있음");
						Swal.fire({
				              title: '픽업이 확인되었습니다.',
				              text: "창이 닫힙니다.",
				              icon: 'success',
				              showCancelButton: false,
				              confirmButtonColor: '#46675c',
				              timer: 1500,
				              confirmButtonText: '닫기'
				        }).then((result) => {
				               $('#checkModal').modal('hide');
				               window.location.href="/admin/order/controll"
				        });
					}
			  },	
			  error : function(e) {
					console.log(e);
			  }
		   });
	   
	  
   });
   
   /* $(".resv-confirm").on("click", function() {
      let confirm_data = {
            "rid": $('input[name=rid]').val(),
            "confirm": $('input[name=confirm]').val().trim(),
            "scode": $('input[name=scode]').val(),
            "table" : $('input[name=table]').data('before')
      };
      
      console.log("확인", confirm_data);
      
      $.ajax({
         url : "/api/admin/tabling/confirm",
         type : "POST",
         contentType : "application/json",
         data: JSON.stringify(confirm_data),
         beforeSend : function(xhr) {
            let header = $("meta[name='_csrf_header']").attr("content");
            let token = $("meta[name='_csrf']").attr("content");
            xhr.setRequestHeader(header, token);
         },
         success : function(res, status) {
            console.log(res, status);
            
            Swal.fire({
              title: '예약 확인되었습니다.',
              text: "창이 닫힙니다.",
              icon: 'success',
              showCancelButton: false,
              confirmButtonColor: '#46675c',
              timer: 1500,
              confirmButtonText: '닫기'
            }).then((result) => {
               $('#checkModal').modal('hide');
            });
         },
         error : function(error, status) {
            console.log(error, status, error.responseJSON);
            
            let txt = '오류가 발생했습니다.';
            if(error.responseJSON.code == "NOT_THIS_PLACE_ADMIN"){
               txt = error.responseJSON.message;
               error.responseJSON.message = '처리 권한이 없습니다.';
            }
            Swal.fire({
                 icon: 'error',
                 title: error.responseJSON.message,
                 text: txt,
                 confirmButtonText: '닫기'
               });
         }
      });
   }); */
   
   /* function loadQRInfo(resvId) {
      $.ajax({
         url : "/api/admin/tabling/qr_show/" + resvId,
         type : "GET",
         beforeSend : function(xhr) {
            let header = $("meta[name='_csrf_header']").attr("content");
            let token = $("meta[name='_csrf']").attr("content");
            xhr.setRequestHeader(header, token);
         },
         success : function(res, status) {
            console.log(res, status);
            let input = `
               <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text">관리자</span>
                </div>
                <input type="text" name="confirm" class="form-control form-control-lg"  placeholder="아이디를 입력해주세요.">
              </div>
              <input type="hidden" name="rid" value="\${res.rid}" />
              <input type="hidden" name="scode" value="\${res.scode}" />
              <input type="hidden" name="table" value="\${res.table}" data-before="\${res.table}" />
              `;
            //$('.modal-body').html(JSON.stringify(res));
            //$('.modal-body').append(input);
            $('#checkModal').modal('show');
         },
         error : function(status, error) {
            console.log(error);
         }
      });
   } */
   
   </script>
</html>