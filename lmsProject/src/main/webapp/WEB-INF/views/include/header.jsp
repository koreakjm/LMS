<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
<!DOCTYPE html>
<html>
  <head>
   <title>Global IT Buseiness : LMS</title>
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
    
  </head>
    
  <body>
    <!-- =======================
	header Start-->
	<header class="header-static navbar-sticky navbar-light">
		<!-- Search -->
		<!-- End Search -->

		<!-- Navbar top start-->
		<div class="navbar-top d-none d-lg-block">
			<div class="container">
				<div class="d-flex justify-content-between align-items-center">
					<!-- navbar top Left-->
					<div class="d-flex align-items-center">
						<!-- Top info -->
						<ul class="nav list-unstyled ml-3">
							<li class="nav-item mr-3">
								<a class="navbar-link" href="#"><strong>학과 사무실 :</strong> 042)629-7611</a>
							</li>
							<li class="nav-item mr-3">
								<a class="navbar-link" href="#"><strong>Email:</strong> mis@hnu.kr</a>
							</li>
						</ul>
					</div>

					<!-- navbar top Right-->
					<div class="d-flex align-items-center">
						
						<!-- 비로그인 -->
						<c:if test="${login eq null}">
						<ul class="nav">
			              <li class="nav-item">
			                  <a class="nav-link" href="/login">로그인</a>
			              </li>
			            </ul>
						</c:if>
						
						<!-- 학생 -->
						<c:if test="${login.authority eq 0}">
						<div class="dropdown">
						  <a class="dropdown-toggle" href="#" role="button" id="dropdownAccount" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						  	<i class="ti-user mr-2"></i>${login.userName}님 반갑습니다.</a>
						   <div class="dropdown-menu mt-2 shadow" aria-labelledby="dropdownAccount">
						    <a class="dropdown-item" href="/user/mypage">내 정보</a>
						  </div>
						</div>
						<ul class="nav">
			              <li class="nav-item">
			                  <a class="nav-link" href="/logout">로그아웃</a>
			              </li>
			            </ul>
						</c:if>
						
						<!-- 관리자 -->
						<c:if test="${login.authority eq 1}">
						<div class="dropdown">
						  <a class="dropdown-toggle" href="#" role="button" id="dropdownAccount" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						  	<i class="ti-user mr-2"></i>${login.userName}님 반갑습니다.</a>
						   <div class="dropdown-menu mt-2 shadow" aria-labelledby="dropdownAccount">
						    <a class="dropdown-item" href="/user/userList">학생 정보</a>
						  </div>
						</div>
						<ul class="nav">
			              <li class="nav-item">
			                  <a class="nav-link" href="/logout">로그아웃</a>
			              </li>
			            </ul>
						</c:if>
						
						<!-- top social -->
						<ul class="social-icons">
							<li class="social-icons-item social-facebook m-0">
								<a class="social-icons-link w-auto px-2" href="https://www.facebook.com/hannamMIS"><i class="fa fa-facebook"></i></a>
							</li>
							
							<li class="social-icons-item social-instagram m-0">
								<a class="social-icons-link w-auto px-2" href="https://www.instagram.com/hnu.gitb.hit/"><i class="fa fa-instagram"></i></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- Navbar top End-->

		<!-- Logo Nav Start -->
		<nav class="navbar navbar-expand-lg">
			<div class="container">
				<!-- Logo -->
				<a class="navbar-brand" href="/">
					<!-- SVG Logo Start -->
					 <img src="https://i.ibb.co/GHNgNk4/lms.png" width="200" height="250" alt="LMS Logo" />
					<!-- SVG Logo End -->
				</a>
			</div>
		</nav>
		<!-- Logo Nav End -->
	</header>
	<!-- =======================
	header End-->
	
	
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
	<script src="/resources/js/jquery-2.2.4.min.js"></script>
	</body>
	</html>