<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Wizixo | Creative Multipurpose Bootstrap Template</title>
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
	<header>
		<%@ include file="/WEB-INF/views/include/header.jsp"%>
	</header>
	<!-- =======================
	header End-->
	
	<!-- =======================
	feature box -->
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
						<h3 class="feature-box-title">이름: ${login.userName}</h3>
						<h3 class="feature-box-title">이름: ${login.userName}</h3>
						<h3 class="feature-box-title">이름: ${login.userName}</h3>
					</div>
				</div>
				<div class="col-lg-4 mt-4">
					<div class="feature-box f-style-3 h-100 icon-grad">
						<div class="feature-box-icon"><i class="ti-palette"></i></div>
						<h3 class="feature-box-title">Client Satisfaction</h3>
						<p class="feature-box-desc">Helping our customers better manage their web presence in order to achieve greater success online. </p>
					</div>
				</div>
				<div class="col-lg-4 mt-4">
					<div class="feature-box f-style-3 h-100 icon-grad">
						<div class="feature-box-icon"><i class="ti-gift"></i></div>
						<h3 class="feature-box-title">Experienced Staff</h3>
						<p class="feature-box-desc">We provide digital transformation solutions, enabling companies to make their visions reality.</p>
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