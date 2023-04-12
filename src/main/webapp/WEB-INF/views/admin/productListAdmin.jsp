<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="tiles"
uri="http://tiles.apache.org/tags-tiles"%> <%@ taglib prefix="fn"
uri="http://java.sun.com/jsp/jstl/functions"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
  <!-- Begin Page Content -->
  <div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
      <h1 class="h3 mb-0 text-gray-800">상품 대시보드</h1>
		<input type="hidden" name="userAuthorities" id="rolerole" value=<sec:authentication property="principal.authorities"/> />
      <div id="scode">
		<sec:authorize access="hasRole('ROLE_ADMIN_TOTAL')">
		   <select class="form-select form-select-lg" id="admin_scode">
		 	      <option value="all">전체보기</option>
		          <option value="scode1">와인웍스 더현대 서울점</option>
		          <option value="scode2">와인웍스 더현대 대구점</option>
        	</select>
		</sec:authorize>
		
      </div>
    </div>

    <!-- Content Row -->
    <div class="row">
      <!-- Content Row -->

      <div
        class="row"
        style="width: 100%; flex: 100%; margin-left: 0px; margin-right: 0px"
      >
        <!-- Area Chart -->
        <div class="col-xl-8 col-lg-7" style="max-width: 100%; flex: 100%">
          <div class="card shadow mb-4">
            <!-- Card Header - Dropdown -->
            <div
              class="card-header py-3 d-flex flex-row align-items-center justify-content-between"
            >
              <h6 class="m-0 font-weight-bold text-primary">전체 상품 목록</h6>
            </div>
            <!-- Card Body -->
            <div class="card-body">
              <table class="table table-hover" id="todayResvs">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">상품ID</th>
                    <th scope="col">상품명</th>
                    <th scope="col">상품 가격</th>
                    <th scope="col" class="mx-auto">등록일 (수정일)</th>
                    <th scope="col">판매량</th>
                    <th scope="col">재고량</th>
                    <th scope="col">관리</th>
                  </tr>
                </thead>
                <tbody id="productTableBody">
        		 <c:forEach items="${list}" var="list">
                    
                    <tr>
                      <td>${list.w_id }</td>
                      <td>${list.w_name_kor }</td>
                      <td>
                        <fmt:formatNumber
                          value="${list.w_price }"
                          pattern="#,###"
                        />원
                      </td>
                      <td>${list.w_register_date } (${list.w_update_date })</td>
                      <td>${list.total_wine_sales }</td>
                      <td> ${list.sws_stock }</td>
                      <td>
                        <a
                          a
                          href="admin/product/update?w_id=${list.w_id}"
                          id="modal-button"
                          class="btn btn-sm btn-primary"
                          >상품 관리</a
                        >
                      </td>
                    </tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /.container-fluid -->

    <script type="text/javascript">
   
    
    $(document).ready(function(){
    	let selectedValue = "";
    	//alert($("#rolerole").val());
    	let select = $("#rolerole").val().replace(/\[/g, "").replace(/\]/g, "").replace(/\s/g, "").replace(/ROLE_ADMIN/g, "").replace(/_/g, "").replace(/,/g, "");
    	//alert(select);
    	if (select=='TOTAL'){
    		selectedValue="all";
    	} else if (select=='SEOUL'){
    		selectedValue="scode1";
    	} else{
    		selectedValue="scode2";
    	}
    	getList(selectedValue);
    	
    	 $("#admin_scode").on("change", function () {
    	        let selectedValue = $(this).val();
    	        console.log(selectedValue);
    	        getList(selectedValue);
    	      });
    });
    
	   function getYmd20(date) {
		let d = new Date(date);
		return d.getFullYear() + "/" + ((d.getMonth() + 1) > 9 ? (d.getMonth() + 1).toString() : "0" + (d.getMonth() + 1)) + "/" + (d.getDate() > 9 ? d.getDate().toString() : "0" + d.getDate().toString());
		}
    
	    function printWithCommasRegex(number) {
	    	let numString = String(number); // convert number to string
	    	let result = numString.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	    	return result;
	    }

    
    function getList(selectedValue){
    	console.log(selectedValue);
        $.ajax({
            url: "/admin/product/list/scode?s_code=" + selectedValue,
            type: "GET",
            data: {
            	
            },
            success: function (data) {
              console.log(data);
              let str = "";
              $("#productTableBody").empty();
              for (let i = 0; i < data.length; i++) {
                  const listt = data[i];
                  str += `<tr>
    	                    <td>\${listt.w_id}</td>
    	                    <td>\${listt.w_name_kor}</td>
    	                    <td>\${printWithCommasRegex(listt.w_price)}원</td>	
    	                    <td>\${ getYmd20(listt.w_register_date)} (\${ getYmd20(listt.w_update_date)})</td>
    	                    <td>\${listt.total_wine_sales}</td>
    	                    <td>\${listt.sws_stock}</td>
    	                    <td><a href="/admin/product/update?w_id=\${listt.w_id}" id="modal-button" class="btn btn-sm btn-primary">상품 관리</a></td>
    	                    </tr>
    	                    `;
                }
              $("#productTableBody").append(str);
      
            },
            error: function () {
              console.log("ajax 에러 발생");
            },
          });
    }
    </script>
    <style>
/*     .btn {
    color:#46675c;
    } */
    </style>
  </div>
</html>
