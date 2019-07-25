<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LMS : 로그인</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Creative Multipurpose Bootstrap Template">

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
<body class="login-page">
	<div class="preloader">
		<img src="../resources/images/preloader.svg" alt="Pre-loader">
	</div>

	<!-- =======================
	Sign in -->
	<section class="p-0 d-flex align-items-center">
		<div class="container-fluid">
			<div class="row">
				<!-- left -->
				<div class="col-12 col-md-5 col-lg-4 d-md-flex align-items-center bg-grad h-sm-100-vh">
					<div class="w-100 p-3 p-lg-5 all-text-white">
						<div class="justify-content-center align-self-center">
							<a class="navbar-brand" href="/">
								<!-- SVG Logo Start -->
								 <img src="https://i.ibb.co/nmFmRjD/LMS-Logo-h.png" width="300" height="3 50" alt="LMS Logo" />
								<!-- SVG Logo End -->
							</a>
						</div>
						<ul class="list-group list-group-borderless mt-4">
							<li class="list-group-item text-white"><i class="fa fa-check"></i>로그인에 필요한 학번과 비밀번호는 학과 사무실에 문의</li>
							<li class="list-group-item text-white"><i class="fa fa-check"></i>실습실 열쇠는 경상대학 경비실에 반납</li>
							<li class="list-group-item text-white"><i class="fa fa-check"></i>비밀번호 분실 시 학과 사무실 문의</li>
							<li class="list-group-item text-white"><i class="fa fa-check"></i>학과 사무실 전화번호 : 042)629-7611</li>
						</ul>
					</div>
				</div>
				<!-- Right -->
				<div class="col-12 col-md-7 col-xl-8 mx-auto my-5">
					<div class="row h-100">
						<div class="col-12 col-md-10 col-lg-5 text-left mx-auto d-flex align-items-center">
							<div class="w-100">
							<form action="/loginPost" method="post" onsubmit="return loginCheck()">
								<h2><a href="">Global IT Business</a></h2>
								<h5 class="font-weight-light">- 실습실 관리 시스템 -</h5>
								<div class="form mt-4 ">
									<div>
										<p class="text-left mb-2">Student Number</p>
										<span class="form-group">
										<input type="text" name="userNo" id="userNo" class="form-control" placeholder="Student Number"></span>
									</div>
									<div>
										<div class="d-flex justify-content-between align-items-center">
											<p class="text-left mb-2">Password</p>
										</div>
										<span class="form-group"><input type="password" name="userPw" id="userPw" class="form-control" placeholder="*********"></span>
									</div>
									<div class="row align-items-center no-gutters m-0">
										<div class="col-6 col-md-8"></div>
										<div class="col-6 col-md-4 text-right">
											<button type="submit" class="btn btn-outline-grad">로그인</button></div>
									</div>
								</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================
	Sign in -->
	
	<!-- /.login-box -->

	<!--Global JS-->
	<script src="../resources/vendor/jquery/jquery.min.js"></script>
	<script src="../resources/vendor/popper.js/umd/popper.min.js"></script>
	<script src="../resources/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!--Template Functions-->
	<script src="../resources/js/functions.js"></script>
	
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});
		
		var result = '${msg}';

		if(result == "FAIL"){
		   alert("학번 또는 비밀번호가 일치하지 않습니다.");
		}
		
		function loginCheck(){
			   var userNo = $("#userNo").val();
			   var userPw = $("#userPw").val();
			   
			   if(userNo == ""){
			      alert("학번을 입력해주세요.");
			      document.getElementById("userNo").focus();
			      return false;
			   }
			   if(userPw == ""){
			      alert("비밀번호를 입력해주세요.");
			      document.getElementById("userPw").focus();
			      return false;
			   }
			   
			}
	</script>
</body>
</html>