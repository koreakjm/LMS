<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!Doctype html>
<head>
<title>신청</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Webestica.com">
<meta name="description"
	content="Creative Multipurpose Bootstrap Template">

<!-- Favicon -->
<link rel="shortcut icon" href="../resources/images/favicon.ico">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900%7CPlayfair+Display:400,400i,700,700i%7CRoboto:400,400i,500,700"
	rel="stylesheet">

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/vendor/themify-icons/css/themify-icons.css" />
<link rel="stylesheet" type="text/css"
	href="resources/vendor/animate/animate.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/vendor/fancybox/css/jquery.fancybox.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/vendor/owlcarousel/css/owl.carousel.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/vendor/swiper/css/swiper.min.css" />

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="resources/css/style.css" />

</head>

<body>
	<div class="preloader">
		<img src="resources/images/preloader.svg" alt="Pre-loader">
	</div>

	<!-- =======================
	header Start-->
	<header>
		<%@ include file="/WEB-INF/views/include/header.jsp"%>
	</header>
	<!-- =======================
	header End-->
<!-- =======================
   Banner innerpage -->
	<div class="innerpage-banner center bg-overlay-dark-7 py-7" style="background:url(../assets/images/bg/04.jpg) no-repeat; background-size:cover; background-position: center center;">
		<div class="container">
			<div class="row all-text-white">
				<div class="col-md-12 align-self-center">
					<h1 class="innerpage-title"><%-- ${meetingVo.metName} --%></h1>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<!-- <li class="breadcrumb-item active"><a href=""><i class="ti-home"></i>멤버쉽 가입</a></li> -->
						</ol>
					</nav>
				</div>	
			</div>
		</div>
	</div>
   <!-- =======================
   Banner innerpage -->
		<div class="container">
		<div class="col-md-5 align-self-center" style="margin-top:7%;">
		<form role="form" method="post">
		<table class="table table-hover">

		
								<tr>
									<th>현재시간</th>
									<td><fmt:formatDate pattern="YYYY-MM-dd HH:mm" value="${joinTime}"/></td>
								</tr>
								
								
		</table>
			<div class="text-center text-md-center mt-md-0 align-self-center" style="margin-top:7%;">
			
					<!-- <button type="button" name="ajax" id="send" onclick="sendMessage()" class="btn btn-grad">신청</button> -->
					<button type="submit" class="btn btn-grad">신청</button>
					<button type="button" onclick="goBack()" class="btn btn-grad">취소</button>
			</div>
			</form>
			
		</div>
		</div>
	 <script>
	/* function sendMessage(){
		var memNum = $("#memNum").val();
		var metNum = $("#metNum").val();
		var memName = $("#memName").val();
		var memId = $("#memId").val();
	
		$.ajax({
			url : '/meeting?command=joinMeetingAction',
			type : 'post',
			data : {memNum : memNum,
					metNum : metNum,
					memName : memName,
					memId : memId},
			success : function(data){
				alert("신청되었습니다.");
				 self.close();
				opener.parent.location.reload();
				
			}
		});
	} */
	
	function goBack(){
	self.close();
	}
	
	var result = '${result}';
	if (result != '') {
	alert(result);
	}
	
/* 
	if (result == 'success') {
		alert("참여되었습니다.");
	} */
	
</script>
	
	
	
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