<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="ko">

  <head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>스마트 제조 시스템</title>

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
      rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <!--     <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet"> -->

    <!-- CSS File -->
    <link href="assets/css/style.css" rel="stylesheet" type="text/css">

    <!-- Script -->
    <script defer src="assets/js/main.js"></script>
    <script src="https://kit.fontawesome.com/0b22ed6a9d.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

  </head>

  <body>

    <!-- ======= Header ======= -->
    <%@ include file="../header.jsp" %>

      <!-- ======= Sidebar ======= -->
      <%@ include file="../asidebar.jsp" %>

        <!-- End Sidebar-->

        <main id="main" class="main">

          <div class="pagetitle">
            <h1>기준 정보 관리</h1>
            <nav>
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">기준 정보 관리</a></li>
                <li class="breadcrumb-item active">사업장 관리</li>
              </ol>
            </nav>
          </div><!-- End Page Title -->

			<section class="section dashboard w-full">
			    <form action="CSG_ItemInsertForm" method="post">
			        <!-- 자재 정보 입력 폼 -->
			        <!--<div id="SK_itemForm" class="flex items-center justify-center min-h-screen bg-red-800"> 외부배경 회색-->
			        <div id="SK_itemForm" class="min-h-screen w-full"> <!-- 외부배경 회색 -->
			
			            <div id="content" class="bg-white p-4 shadow-lg rounded boarder-8 border-red-500">
			                <!-- 발주 등록 섹션 -->
			                <div id="orderRegistration" class="container p-4">
			                    <h2 class="text-2xl font-bold mb-4">
			                        <i class="fas fa-clipboard-list fa-lg text-primary"></i>
			                        발주 등록
			                    </h2>
			
			                    <!-- 입력 필드 그룹 -->
			                    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
			
			                        <!-- 발주번호 -->
			                        <div class="border border-green-500">
			                            <label for="order-number" class="form-label text-lg text-gray-700 font-bold mb-2">발주번호</label>
			                            <input id="order-number" type="text" placeholder="발주번호는 뷰에서 생성해주고 여기는 readOnly가 되야함"
			                                class="form-control">
			                        </div>
			
			                        <!-- 담당자 -->
			                        <div class="border border-green-500">
			                            <label for="manager-name" class="form-label text-lg text-gray-700 font-bold mb-2">발주 담당자</label>
			                            <input id="manager-name" type="text" placeholder="담당자 입력" class="form-control">
			                        </div>
			
			                        <!-- 전화번호 -->
			                        <div class="border border-green-500">
			                            <label for="phone-number" class="form-label text-lg text-gray-700 font-bold mb-2">발주 담당자 전화번호</label>
			                            <input id="phone-number" type="text" placeholder="담당자 전화번호 입력" class="form-control">
			                        </div>
			
			                        <!-- 매입처 -->
			                        <div class="border border-green-500">
			                            <label for="supplier" class="form-label text-lg text-gray-700 font-bold mb-2">매입처</label>
			                            <select id="supplier" class="form-select">
			                                <option>업체는 디비에서 불러와야겠지요</option>
			                                <option>업체A</option>
			                                <option>업체B</option>
			                                <!-- 추가 업체 옵션 -->
			                            </select>
			                        </div>
			
			                        <!-- 거래처 담당자 -->
			                        <div class="border border-green-500">
			                            <label for="manager-name" class="form-label text-lg text-gray-700 font-bold mb-2">거래처 발주 담당자</label>
			                            <input id="manager-name" type="text" placeholder="거래처 담당자 입력" class="form-control">
			                        </div>
			
			                        <!-- 전화번호 -->
			                        <div class="border border-green-500">
			                            <label for="phone-number" class="form-label text-lg text-gray-700 font-bold mb-2">거래처 발주 담당자 전화번호</label>
			                            <input id="phone-number" type="text" placeholder="거래처 담당자 전화번호 입력" class="form-control">
			                        </div>
			
			                        <!-- 담당자 이메일 -->
			                        <div class="border border-green-500">
			                            <label for="manager-email" class="form-label text-lg text-gray-700 font-bold mb-2">거래처 발주 담당자 이메일</label>
			                            <input id="manager-email" type="email" placeholder="거래처 담당자 이메일 입력" class="form-control">
			                        </div>
			
			                        <!-- 비고 -->
			                        <div class="border border-green-500">
			                            <label for="remark" class="form-label text-lg text-gray-700 font-bold mb-2">비고</label>
			                            <input id="remark" type="text" placeholder="필요한 내용을 입력" class="form-control">
			                        </div>
			
			                    </div>
			
			                    <!-- 버튼 그룹 -->
			                    <div class="mt-4">
			                        <button class="btn btn-primary">저장</button>
			                        <button class="btn btn-secondary">취소</button>
			                    </div>
			                </div>
			
			                <div class="d-flex justify-content-end pt-2 items-center">
			                    <button type="submit" class="btn btn-primary me-2">추가</button>
			                    <button class="btn btn-secondary">삭제</button>
			                </div>
			            
			
			        
			    
				
						    <h2>여기는 추가를 누르면 나오는 폼에서 자제를 등록 하게 되는 경우에 값들이 ==> 자재 등록을 하게 되는 경우에 자재들이 나오는 화면이 되는 테이블 값은 예시</h2>
						    <div id="materialsTableSection" class="container w-7/8 p-4">
						        <h2 class="text-2xl font-bold mb-4">
						            <i class="fas fa-clipboard-list fa-lg text-primary"></i>
						            자재 목록
						        </h2>
						
						        <table class="table table-striped table-bordered">
						            <thead class="bg-gray-50">
						                <tr>
						                    <th scope="col">선택</th>
						                    <th scope="col">자재 코드</th>
						                    <th scope="col">자재명</th>
						                    <th scope="col">규격</th>
						                    <th scope="col">단위</th>
						                    <th scope="col">수량</th>
						                    <th scope="col">단가</th>
						                </tr>
						            </thead>
						            <tbody>
						                <tr>
						                    <td><input type="checkbox" id="itemSelect1" name="itemSelect"></td>
						                    <td>11012ba</td>
						                    <td>건더기스프</td>
						                    <td>10mg</td>
						                    <td>mg</td>
						                    <td>100개</td>
						                    <td>500원</td>
						                </tr>
						                <tr>
						                    <td><input type="checkbox" id="itemSelect2" name="itemSelect"></td>
						                    <td>11012bb</td>
						                    <td>너네리상사</td>
						                    <td>스프용 버섯(소분류?)</td>
						                    <td>500원</td>
						                    <td>1000개</td>
						                    <td>500000원</td>
						                </tr>
						            </tbody>
						        </table>
						    </div>
				    	</div>
				    </div>
			    </form>
			</section>

        </main>
        <!-- End #main -->

        <!-- ======= Footer ======= -->
        <%@ include file="../footer.jsp" %>
          <!-- End Footer -->

          <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
              class="bi bi-arrow-up-short"></i></a>

          <!-- Vendor JS Files -->
          <!-- 	<script src="assets/vendor/apexcharts/apexcharts.min.js"></script> -->
          <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
          <!--     <script src="assets/vendor/chart.js/chart.umd.js"></script>
				    <script src="assets/vendor/echarts/echarts.min.js"></script>
				    <script src="assets/vendor/quill/quill.min.js"></script>
				 	<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
				  	<script src="assets/vendor/tinymce/tinymce.min.js"></script>
				  	<script src="assets/vendor/php-email-form/validate.js"></script> -->

  </body>


  </html>