<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 비밀번호 변경</title>
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
							<li class="list-group-item text-white"><i class="fa fa-check"></i>안전한 비밀번호로 내정보를 보호하세요 !</li>
							<li class="list-group-item text-white"><i class="fa fa-check"></i>이전에 사용한 적 없는 비밀번호가 안전합니다.</li>
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
							<form role="form" action="pwModify" method="post" onsubmit="return pwCheck()">
							<input type='hidden' name='userNo' value="${login.userNo}">
								<h2 class="">비밀번호 변경</h2>
								<div class="form mt-4 ">
									
									<div>
										<div class="d-flex justify-content-between align-items-center">
										</div>
										<span class="form-group"><input type="password" name="userPw" id="userPw" class="form-control" placeholder="현재 비밀번호"></span>
									</div>
									
									<div>
										<div class="d-flex justify-content-between align-items-center">
										</div>
										<span class="form-group">
										<input type="password" name="new_pw" id="new_pw" class="form-control" placeholder="새 비밀번호"></span>
									</div>
									
									<div>
										<div class="d-flex justify-content-between align-items-center">
										</div>
										<span class="form-group">
										<input type="password" name="comf_pw" id="comf_pw" class="form-control" placeholder="새 비밀번호 확인"></span>
									</div>
									
									<div class="alert alert-success" id="alert-success">새 비밀번호가 일치합니다.</div>
									<div class="alert alert-danger" id="alert-danger">새 비밀번호가 일치하지 않습니다.</div>


									<div class="row align-items-center no-gutters m-0">
										<div class="col-6 col-md-8"></div>
										<div class="col-6 col-md-4 text-right">
											<button type="submit" class="btn btn-outline-grad ">확인</button>
											<input type="button" class="btn btn-outline-light " value="취소" onclick="location.href='/user/mypage'"></div>
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
		
		
	</script>
	
	<script type="text/javascript">
    $(function(){
        $("#alert-success").hide();
        $("#alert-danger").hide();
        $("input").keyup(function(){
            var new_pw=$("#new_pw").val();
            var comf_pw=$("#comf_pw").val();
            if(new_pw != "" || comf_pw != ""){
                if(new_pw == comf_pw){
                    $("#alert-success").show();
                    $("#alert-danger").hide();
                    $("#submit").removeAttr("disabled");
                }else{
                    $("#alert-success").hide();
                    $("#alert-danger").show();
                    $("#submit").attr("disabled", "disabled");
                }    
            }
        });
    });
    
	function pwCheck(){
		   var userPw = $("#userPw").val();
           var new_pw=$("#new_pw").val();
           var comf_pw=$("#comf_pw").val();
           
		   if(userPw == ""){
		      alert("현재 비밀번호를 입력해주세요.");
		      document.getElementById("userPw").focus();
		      return false;
		   }
 		   if(new_pw == ""){
  		      alert("새 비밀번호를 입력해주세요.");
  		      document.getElementById("new_pw").focus();
  		      return false;
  		   }
  		   if(comf_pw == ""){
  			  alert("새 비밀번호 확인을 입력해주세요.");
  			  document.getElementById("comf_pw").focus();
  			  return false;
  			}
		   
		}
	
	</script>

</body>
</html>