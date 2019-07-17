<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글로벌IT경영전공 : 내정보</title>
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
	
	<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("비밀번호가 성공적으로 변경되었습니다.");
	} 
	</script>
	
	<script>
	var result = '${msg}';

	if (result == 'FAIL') {
		alert("비밀번호를 확인해 주세요.");
	} 
	</script>
	
	

</head>
<body>

	<!-- ======================= header Start-->
	<header>
		<%@ include file="/WEB-INF/views/include/header.jsp"%>
	</header>
	<!-- ======================= header End-->
	
	<!-- ======================= feature box -->
	<section>
		<div class="container">

			<!-- style 3 -->
			<div class="row">
				<div class="col-sm-12 text-center mt-5 mb-4">
					<h2>내 정보</h2>
				</div>
				<div class="col-lg-4 mt-4">
					<div class="feature-box f-style-3 h-100 icon-grad">
						<div class="feature-box-icon"><i class="ti-panel"></i></div>
						<h3 class="feature-box-title">이름 : ${login.userName}</h3>
						<h3 class="feature-box-title">학번 : ${login.userNo}</h3>
						<h3 class="feature-box-title">재학상태 : ${login.state}</h3>
					</div>
				</div>
				<div class="col-lg-4 mt-4">
					<div class="feature-box f-style-3 h-100 icon-grad">
						<div class="feature-box-icon"><i class="ti-palette"></i></div>
						<h3 class="feature-box-title">비밀번호 변경 <br><a href="/user/pwModify?userNo=${login.userNo}">변경하기</a></h3>
					</div>
				</div>
			</div>
			<!-- style 3 end-->
		</div>
	</section>
			
			<!-- =======================
	footer  -->
	<footer>
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	</footer>
	<!-- =======================
	footer  -->
</body>
</html>