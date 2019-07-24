<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Global IT Buseiness : LMS</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Webestica.com">
<meta name="description"
	content="Creative Multipurpose Bootstrap Template">

<!-- Favicon -->
<link rel="shortcut icon" href="/resources/images/favicon.ico">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900%7CPlayfair+Display:400,400i,700,700i%7CRoboto:400,400i,500,700"
	rel="stylesheet">

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/themify-icons/css/themify-icons.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/animate/animate.min.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/fancybox/css/jquery.fancybox.min.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/owlcarousel/css/owl.carousel.min.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/swiper/css/swiper.min.css" />

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
<script src="/resources/js/instafeed.min.js"></script>

</head>
<body>
	<!-- ======================= header Start-->
	<header>
		<%@ include file="/WEB-INF/views/include/header.jsp"%>
	</header>
	<!-- ======================= header End-->


	<!-- ======================= Table -->
	<div class="container">
		<div class="table-responsive-sm">
			<div style="margin-top: 5%;">
				
			</div>
			<table class="table table-hover">
			</table>
		</div>
		
	<!-- 	<section class="py-4">
      <div class="container">
               <form role="form" method="post">
         <div class="border border-dotted p-4 p-sm-5 border-radius-3">
            <div class="text-center px-0 px-sm-5">
              
            </div>
            <div class="mt-3 text-center">
            </div>
         </div>
      </form>
      
      </div>
   </section> -->
   
   
		<section class="py-4">
      <div class="container">
         <form role="form" method="post">
         <input type='hidden' name='userNo' value="${login.userNo}">
         <div class="border border-dotted p-4 p-sm-5 border-radius-3">
            <div class="text-center px-0 px-sm-5">
               <h1><b><a href="">실습실 참여하기</a></b></h1>
               <br>
             <h4>현재시간 <fmt:formatDate pattern="YYYY-MM-dd HH:mm" value="${applyTime}"/></h4>
            <br><br><br>
             <!-- <h3>실습실 사용수칙</h3>
                     1.깨끗이 사용하기<br>
                     2.키 분실에 유의<br>
                     3.키 반납은 반드시 경비실에 !<br> -->
            <div class="mt-3 text-center">
            
		<button type="submit" class="btn btn-grad mb-0 mr-3">참여</button>
		<button type="button" class="btn btn-outline-light mb-0">취소</button>
            </div>
            </div>
         </div>
     </form>
      </div>
   </section>
		
			
	</div>

<div class="row" style="margin-top: 10%;">
		<div class="col-md-12">
			<!-- tag and share -->
			<div class="divider mb-4"></div>
			<div class="row post-navigation mt-5"></div>
		</div>
	</div>
</body>
	<footer>
		<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	</footer>

</html>