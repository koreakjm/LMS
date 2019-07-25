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
   				<!-- ======================= Banner innerpage -->
				<div class="left bg-grad pattern-overlay-4">
					<div class="container">
						<div class="row all-text-white">
							<div class="col-md-12 align-self-center">
								<h1 class="font-weight-bold display-4 display-md-1 mb-2 mb-md-n4 mt-9">실습실 참여</h1>
							</div>
						</div>
					</div>
				</div>
				<!-- ======================= Banner innerpage -->
	<div class="container">
		<div class="table-responsive-sm">
			<div style="margin-top: 5%;">
				
			</div>
			<table class="table table-hover">
			</table>
		</div>
		<section class="py-4">
      <div class="container">
         <form role="form" method="post">
         <input type='hidden' name='userNo' value="${login.userNo}">
         <div class="border border-dotted p-4 p-sm-5 border-radius-3">
            <div class="text-center px-0 px-sm-5">
             <h4><i class="mr-3 display-8 ti-time"></i>현재시간 <fmt:formatDate pattern="YYYY-MM-dd HH:mm" value="${applyTime}"/></h4>
             <h2><b><a href="">실습실 사용수칙</a></b></h2>
               <br>
            <br>
            <table border=0 align=center>
                  <tr align="left"><td ><i class="fa fa-check text-primary"></i> 깨끗이 사용하기</td></tr>
                 <tr align="left"><td ><i class="fa fa-check text-primary"></i> 키 분실에 유의</td></tr>
                 <tr align="left"><td ><i class="fa fa-check text-primary"></i> 키 반납은 반드시 경비실에 !</td></tr>
              </table>

            <div class="mt-4 text-center">
            
		<button type="submit" class="btn btn-outline-grad">참여</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="submit" class="btn btn-outline-light">취소</button>
		
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
	
	<script>
	$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	$(".btn-outline-light").on("click", function() {
		formObj.attr("method", "get");
		formObj.attr("action", "/");
		formObj.submit();
	});
	
});

</script>
</html>
