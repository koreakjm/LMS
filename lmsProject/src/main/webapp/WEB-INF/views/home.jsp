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

	<div class="innerpage-banner center bg-overlay-dark-7 py-7"
		style="background: url(../assets/images/bg/04.jpg) no-repeat; background-size: cover; background-position: center center;">
		<div class="container">
			<div class="row all-text-white">
				<div class="col-md-12 align-self-center">
					<h1 class="innerpage-title">
						<%-- ${meetingVo.metName} --%>
					</h1>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item active"><a href="/index.jsp"><i
									class="ti-home"></i>Home</a></li>
							<li class="breadcrumb-item">독서모임</li>
							<%-- <li><a class="btn btn-grad mt-4" onclick="joinPopup()">
								모임 가입하기
							<i class="fa fa-external-link ml-2 mr-0"></i></a>
							<a class="btn btn-grad mt-4" href="/meeting?command=metUpdateFormAction&metNum=${meetingVo.metNum}">
								독서모임 수정
							<i class="fa fa-external-link ml-2 mr-0"></i></a></li> --%>

						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- =======================
   Banner innerpage -->

	<!-- =======================
   portfolio -->
	<div class="container">
		<div class="row mb-4">

			<%-- <input type="hidden" name="metNum" value="${meetingVo.metNum}">
			<input type="hidden" name="metbrd" value="${metbrd.metBrdNum}"> --%>

			<div class="container" style="margin-top: 3%;">
				<div
					class="bg-white border-radius-3 py-5 all-text-dark pattern-overlay-2">
				</div>
			</div>

		</div>

		<div class="table-responsive-sm">
			<table class="table table-hover">
				<!-- 공지사항 링크연결 -->
				<div>
					<span style="font-size: 25px;">운영게시판</span> <span
						style="font-size: 15px;"> <%-- <a href="/meeting?command=metBoardListFormAction&metNum=${meetingVo.metNum}"> --%>게시글
						더보기 <i class="fa fa-external-link ml-2 mr-0"></i>
					<!-- </a> --></span>

				</div>

				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">유형</th>
						<th scope="col">제목</th>
						<th scope="col">작성자</th>
					</tr>
				</thead>
			</table>
		</div>

		<div>
			<div style="margin-top: 15%;">
				<span style="font-size: 25px;">실습실 현황</span> 
			</div>

			<table class="table table-hover">
				<thead>
					 <tr>
					<th colspan="4" style="text-align: center;">
					
					<a class="btn btn-info" href="/main/labJoin">신청</a>
					<a class="btn btn-info" href="/main/labApply">참여</a>
					<a class="btn btn-info" href="/main/labOut">퇴실</a>
					<a class="btn btn-info" href="/main/labReturn">반납</a>
					<a class="btn btn-info" href="/admin/list">사용내역</a>
					 </th>
				</tr>
					<tr>
						<th scope="col">#</th>
						<th scope="col">학번</th>
						<th scope="col">이름</th>
						<th scope="col">시작시간</th>
					</tr>
				</thead>

				<c:if test="${empty list}">
					<tr>
						<th colspan="4" style="text-align: center; color: gray;">실습실에
							현재 사람이 없습니다.</th>
					</tr>
				</c:if>

				<c:forEach var="list" items="${list}" varStatus="var">
					<tr>
						<th scope="row">${var.count}</th>
						<td>${list.userNo}</td>
						<td>${list.userName}</td>
						<td><fmt:formatDate pattern="YYYY-MM-dd HH:mm" value="${list.startTime}"/></td>
					</tr>
				</c:forEach>

				<%-- <c:forEach var="memList" items="${memList}">
				<c:if test="${memList.approval eq 'F'}">
					<input type="hidden" name="memNum" value="${memList.memNum}">
					<tr style="text-align: center;">
						<td>${memList.memId}</td>
						<td>${memList.memName}</td>
						<td>
							<a href="/member?command=approvalMeeting&memNum=${memList.memNum}&metNum=${meetingVo.metNum}">
							<button type="button" class="btn btn-primary btn-sm">승인</button></a>&nbsp;&nbsp;
							<a href="/member?command=refuseMemberShip&memNum=${memList.memNum}&metNum=${meetingVo.metNum}">
							<button type="button" class="btn btn-danger btn-sm">거절</button></a></td>
					</tr>
				</c:if>
			</c:forEach> --%>
			</table>
		</div>

	</div>
	<div class="row" style="margin-top: 10%;">
		<div class="col-md-12">
			<!-- tag and share -->
			<div class="divider mb-4"></div>

			<div class="row post-navigation mt-5"></div>
		</div>
	</div>


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

</body>
</html>