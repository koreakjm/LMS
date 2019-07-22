<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!Doctype html>
<head>
<title>글로벌IT경영학과 실습실 예약</title>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="author" content="Webestica.com">
   <meta name="description" content="Creative Multipurpose Bootstrap Template">

   <!-- Favicon -->
   <link rel="shortcut icon" href="/resources/images/favicon.ico">

   <!-- Google Font -->
   <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900%7CPlayfair+Display:400,400i,700,700i%7CRoboto:400,400i,500,700" rel="stylesheet">

   <!-- Plugins CSS -->
   <link rel="stylesheet" type="text/css" href="/resources/vendor/font-awesome/css/font-awesome.min.css" />
   <link rel="stylesheet" type="text/css" href="/resources/vendor/themify-icons/css/themify-icons.css" />
   <link rel="stylesheet" type="text/css" href="/resources/vendor/animate/animate.min.css" />
   <link rel="stylesheet" type="text/css" href="/resources/vendor/fancybox/css/jquery.fancybox.min.css" />
   <link rel="stylesheet" type="text/css" href="/resources/vendor/owlcarousel/css/owl.carousel.min.css" />
   <link rel="stylesheet" type="text/css" href="/resources/vendor/swiper/css/swiper.min.css" />

   <!-- Theme CSS -->
   <link rel="stylesheet" type="text/css" href="/resources/css/style.css" />

   <%@ include file="/WEB-INF/views/include/header.jsp"%>

</head>

<body>
   <div class="preloader">
      <img src="/resources/images/preloader.svg" alt="Pre-loader">
   </div>



   <!-- =======================
   portfolio -->
   <div class="container">
      <div class="row mb-4">

         <input type='hidden' name='userNo' value="${login.userNo}">
         
         <div class="container" style="margin-top: 3%;">
            <div
               class="bg-white border-radius-3 py-5 all-text-dark pattern-overlay-2">
            </div>
         </div>

      </div>

      <div class="table-responsive-sm">
         <table class="table table-hover">
            <div>
               <span style="font-size: 25px;">운영게시판</span> 
               <span style="font-size: 15px;"> 
               <a href="/board/list">게시글 더보기 <i class="fa fa-external-link ml-2 mr-0"></i></a></span>
               <c:if test="${empty boardList}">
                        <tr>
                           <th colspan="5" style="text-align: center; color: gray;">게시글이 없습니다.</th>
                        </tr>
                     </c:if>
               
            </div>

            <thead>
               <tr>
                  <th scope="col">번호</th>
                  <th scope="col">유형</th>
                  <th scope="col">제목</th>
                  <th scope="col">작성자</th>
               </tr>
            </thead>
            
             <c:forEach var="boardList" items="${boardList}" varStatus="var">
                  
                     <c:if test="${not empty boardList}">
                     
                     <tr>
                        <th scope="row">${var.count}</th>
                        <th>${boardList.category}</th>
                        <th>${boardList.boardTitle}</th>
                        <th>${boardList.userName}</th>
                     </tr>
                     </c:if>
                  </c:forEach>
         </table>
      </div>

      <div>
         <div style="margin-top: 15%;">
            <span style="font-size: 25px;">실습실 현황(${login.userName}),(${lab.myLabNo})</span>
         </div>

         <table class="table table-hover">
            <thead>
               <tr>
                  <th colspan="4" style="text-align: center;">
                  
                  <c:if test="${lab.myAuthority eq 0 and login.authority ne 1}">
                        <a class="btn btn-info" href="/main/labApply">참여</a>
                     </c:if>

                  <c:if test="${lab.myAuthority eq 1}">
                     <a class="btn btn-info"
                        href="/main/labReturn?myLabListNo=${lab.myLabListNo}&myLabNo=${lab.myLabNo}">퇴실</a>
                  </c:if>

                  <c:if test="${login.authority eq 1}">
                     <a class="btn btn-info" href="/admin/list">사용내역</a>
                  </c:if>
                  </th>

               </tr>
               
               <tr>
                  <th scope="col">#</th>
                  <th scope="col">학번</th>
                  <th scope="col">이름</th>
                  <th scope="col">시작시간</th>
               </tr>
            </thead>

            <c:if test="${empty list}">
               <tr>
                  <th colspan="4" style="text-align: center; color: gray;">실습실에
                     현재 사람이 없습니다.</th>
               </tr>
            </c:if>

            <c:forEach var="list" items="${list}" varStatus="var">
               <tr>
                  <th scope="row">${var.count}</th>
                  <td>${list.userNo}</td>
                  <td>${list.userName}</td>
                  <td><fmt:formatDate pattern="YYYY-MM-dd HH:mm"
                        value="${list.startTime}" /></td>
               </tr>
            </c:forEach>
         </table>
      </div>

   </div>
   <div class="row" style="margin-top: 10%;">
      <div class="col-md-12">
         <!-- tag and share -->
         <div class="divider mb-4"></div>

         <div class="row post-navigation mt-5"></div>
      </div>
   </div>


   <!-- =======================
   footer  -->
      <%@ include file="/WEB-INF/views/include/footer.jsp"%>
   <!-- =======================
   footer  -->

   <div>
      <a href="#" class="back-top btn btn-grad"><i class="ti-angle-up"></i></a>
   </div>

   <!--Global JS-->
   <script src="/resources/vendor/jquery/jquery.min.js"></script>
   <script src="/resources/vendor/popper.js/umd/popper.min.js"></script>
   <script src="/resources/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
   <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

   <!--Vendors-->
   <script src="/resources/vendor/fancybox/js/jquery.fancybox.min.js"></script>
   <script src="/resources/vendor/owlcarousel/js/owl.carousel.min.js"></script>
   <script src="/resources/vendor/swiper/js/swiper.js"></script>
   <script src="/resources/vendor/wow/wow.min.js"></script>

   <!--Template Functions-->
   <script src="/resources/js/functions.js"></script>

</body>
</html>