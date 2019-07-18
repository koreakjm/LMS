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
<meta name="description"
	content="Creative Multipurpose Bootstrap Template">

	<!-- Favicon -->
	<link rel="shortcut icon" href="../resources/images/favicon.ico">

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900%7CPlayfair+Display:400,400i,700,700i%7CRoboto:400,400i,500,700" rel="stylesheet">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="../resources/vendor/font-awesome/css/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" href="../resources/vendor/themify-icons/css/themify-icons.css" />
	<link rel="stylesheet" type="text/css" href="../resources/vendor/animate/animate.min.css" />
	<link rel="stylesheet" type="text/css" href="../resources/vendor/fancybox/css/jquery.fancybox.min.css" />
	<link rel="stylesheet" type="text/css" href="../resources/vendor/owlcarousel/css/owl.carousel.min.css" />
	<link rel="stylesheet" type="text/css" href="../resources/vendor/swiper/css/swiper.min.css" />

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="../resources/css/style.css" />


</head>
<body>
	<header>
		<%@ include file="../include/header.jsp"%>
	</header>

	<!-- =======================
   Banner innerpage -->
	<div class="innerpage-banner center bg-overlay-dark-7 py-7"
		style="background: url(../assets/images/bg/04.jpg) no-repeat; background-size: cover; background-position: center center;">
		<div class="container">
			<div class="row all-text-white">
				<div class="col-md-12 align-self-center">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item active"><a
								href="/main?command=loginForm"><i class="ti-home"></i>Home</a></li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- =======================
   Banner innerpage -->

	<!-- =======================
   공지사항 글쓰기 폼 시작 -->
	<section>
		<div class="container">
			<form role="form" method="post">
			<input type="hidden" name="userNo" value="${login.userNo}">
				<div class="row mt-5">
					<div class="col-md-12">
						<h2 class="mb-2">운영게시글 등록</h2>
						<br>
					</div>

					<div class="col-md-2">
						<select class="custom-select select-big mb-3"
							name="category">
							<option value="공지사항">공지사항</option>
							<option value="건의">건의</option>
							<option value="분실물">분실물</option>
						</select>
					</div>
					<div class="col-md-7">
						<span class="form-group"><input type="text"
							class="form-control" placeholder="제목을 입력하세요." name="boardTitle"></span>
					</div>

					<!-- <div class="col-md-3">
						<div class="form-group">
							<input type="file" name="boardFile" class="form-control-file"
								id="exampleFormControlFile1">
						</div>
					</div> -->

					<div class="col-md-12" style="min-height: 480px;">
						<span class="form-group"> <textarea cols="40" rows="20"
								name="boardContent" class="form-control"
								placeholder="내용을 입력하세요."></textarea>
						</span>
					</div>
				</div>
				<div align="right">
					<input type="submit" value="등록" class="btn btn-grad"/>
					 <input type="button" value="취소 " class="btn btn-grad"/>
						<%-- onclick="location.href='/meeting?command=metBoardListFormAction&metNum=${meetingVo.metNum}'"  --%>
				</div>
			</form>
		</div>

	</section>
	<!-- =======================
   footer  -->
	<footer>
		<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	</footer>
	<!-- =======================
   footer  -->

	<div>
		<a href="#" class="back-top btn btn-grad"><i class="ti-angle-up"></i></a>
	</div>

	<!--Global JS-->
	<script src="../resources/vendor/jquery/jquery.min.js"></script>
	<script src="../resources/vendor/popper.js/umd/popper.min.js"></script>
	<script src="../resources/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!--Vendors-->
	<script src="../resources/vendor/fancybox/js/jquery.fancybox.min.js"></script>
	<script src="../resources/vendor/owlcarousel/js/owl.carousel.min.js"></script>
	<script src="../resources/vendor/swiper/js/swiper.js"></script>
	<script src="../resources/vendor/wow/wow.min.js"></script>

	<!--Template Functions-->
	<script src="../resources/js/functions.js"></script>
</body>
</html>