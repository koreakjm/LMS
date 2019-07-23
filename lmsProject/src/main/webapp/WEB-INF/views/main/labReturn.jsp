<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!Doctype html>
<html>
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
         <div class="container" style="margin-top: 3%;">
            <div
               class="bg-white border-radius-3 py-5 all-text-dark pattern-overlay-2">
            </div>
         </div>

      </div>
      <div>
         <span style="font-size: 15px;">
            마지막 퇴실자는 키를 경비실에 반납하세요!
            </span>
         <form role="form" method="post">
         <input type='hidden' name='userNo' value="${login.userNo}">
         <input type='hidden' name='labListNo' value="${myLabListNo}">
         <table class="table table-hover">
            <thead>
            
               <tr>
                  <th colspan="4" style="text-align: center;">
            <span style="font-size: 25px;">
            현재시간 <fmt:formatDate pattern="YYYY-MM-dd HH:mm" value="${returnTime}"/>
            </span>
            <button id="button1" class="btn btn-grad" onclick="out();">퇴실</button>
                  <button type="button" onclick="goBack()" class="btn btn-grad">취소</button>
                  </th>

               </tr>
               
            </thead>
         </table>
         </form>
      </div>

   </div>
   <div class="row" style="margin-top: 10%;">
      <div class="col-md-12">
         <!-- tag and share -->
         <div class="divider mb-4"></div>

         <div class="row post-navigation mt-5"></div>
      </div>
   </div>
	 <div>
      <a href="#" class="back-top btn btn-grad"><i class="ti-angle-up"></i></a>
   </div>
</body>
   <!-- =======================
   footer  -->
      <%@ include file="/WEB-INF/views/include/footer.jsp"%>
   <!-- =======================
   footer  -->

</html>