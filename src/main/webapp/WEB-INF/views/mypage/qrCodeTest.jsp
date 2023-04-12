<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Title</title>
</head>
<body>
  QR CODE
  <form action="/qr", method="get">
    <input type="text" name="url"/><button type="submit">create</button>
  </form>
   <div class="save-btn" style="background: #46675c; height: 50px;">
               <button type="button" id="svbtn"
                  style="color: #fff; text-align: center; width: 100%; height: 100%;"
                  onclick="Sure()">
                  <c:choose>
                     <c:when test="${wine} == null">
                     저장
                     </c:when>
                     <c:otherwise>
                     수정
                     </c:otherwise>
                  </c:choose>
               </button>
            </div>
            <div class="bg-overlay" style="display: none;" onclick="SureOff()">

            </div>
            <div class="pop-basic pop-wine-view pop-wine-01"
               style="display: none;">
               <h3 class="pop-tit">
                  디켄팅 북을 저장하겠습니까?
                  <button type="button" class="pop-close-btn">닫기</button>
               </h3>
               <!-- end .pop-body -->
               <div class="pop-foot clear pagination-box">
                  <button type="button" class="button button-white buttonCellarSave"
                     onclick="SureOff()">취소</button>
                  <button onclick="Write()" type="button"
                     class="button button-wine buttonCellarSave"
                     style="margin-left: 15px">저장</button>
               </div>
               <!-- end .pop-foot -->
            </div>


            <div class="pop-basic pop-wine-view pop-wine-01-1"
               style="display: none;">
               <h3 class="pop-tit">
                  등록이 완료되었습니다
                  <button type="button" class="pop-close-btn">닫기</button>
               </h3>
               <!-- end .pop-body -->
               <div class="pop-foot clear pagination-box">
                  <button onclick="to_myPage()" type="button"
                     class="button button-wine buttonCellarSave" style="width: 70%;">확인</button>
               </div>
               <!-- end .pop-foot -->
            </div>
</body>
</html>