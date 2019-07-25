<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LMS : 내 정보</title>
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
	
	<!-- ======================= Banner innerpage -->
	<div class="left bg-grad pattern-overlay-4">
		<div class="container">
			<div class="row all-text-white">
				<div class="col-md-12 align-self-center">
					<h1 class="font-weight-bold display-4 display-md-1 mb-2 mb-md-n4 mt-9">내 정보</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- ======================= Banner innerpage -->

	<!-- ======================= Table -->
	<div class="container">
		<div class="table-responsive-sm">
			<div style="margin-top: 5%;">
				
			</div>
			<table class="table table-hover">
			</table>
		</div>
		
		<section class="py-4">
		
      <div class="row">
				<div class="col-md-4 mt-4">
					<div class="feature-box f-style-1 h-100 active icon-primary">
						<h3 class="feature-box-title">학번 : </h3>
						<div class="feature-box-icon"><h4>${login.userNo}</h4></div>
					</div>
				</div>
				<div class="col-md-4 mt-4">
					<div class="feature-box f-style-1 h-100 active icon-primary">
						<h3 class="feature-box-title">재학상태 : </h3>
						<div class="feature-box-icon"><h4>${login.state}</h4></div>
					</div>
				</div>
				<div class="col-md-4 mt-4">
					<div class="feature-box f-style-1 h-100 active icon-primary">
					<h3 class="feature-box-title"><a href="/user/pwModify?userNo=${login.userNo}">비밀번호변경</a></h3>
					</div>
				</div>
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
	
	<script>
		var result = '${msg}';

		if (result == 'SUCCESS') {
			alert("비밀번호가 성공적으로 변경되었습니다.");
		}
	</script>
		<script>
		var result = '${msg}';

		if (result == 'FAIL') {
			alert("현재 비밀번호를 정확하게 입력해 주세요.");
		}
	</script>
	
</html>