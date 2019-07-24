<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글로벌IT경영학과 실습실 예약</title>
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
	<!-- ======================= header End-->


	<!-- ======================= Table -->
	<div class="container">
		<div class="row mb-4">
			<input type='hidden' name='userNo' value="${login.userNo}">

			<!-- <div class="container" style="margin-top: 3%;">
				<div
					class="bg-white border-radius-3 py-5 all-text-dark pattern-overlay-2">
				</div>
			</div> -->
		</div>
		
		<div class="table-responsive-sm">
			<div style="margin-top: 5%;">
				<span style="font-size: 25px;"><a href=""><b>실습실 현황</b></a></span> &nbsp; &nbsp;
					<c:if test="${lab.myAuthority eq 0 and login.authority ne 1}">
							<a class="btn btn-link" href="/main/labApply"><i class="fa fa-arrow-circle-right"></i><b>참여</b></a>
						</c:if> <c:if test="${lab.myAuthority eq 1}">
							<a class="btn btn-link"
								href="/main/labReturn?myLabListNo=${lab.myLabListNo}&myLabNo=${lab.myLabNo}"><i class="fa fa-arrow-circle-right"></i><b>퇴실</b></a>
						</c:if> <c:if test="${login.authority eq 1}">
							<a class="btn btn-link" href="/admin/list"><i class="fa fa-arrow-circle-right"></i><b>사용내역</b></a>
						</c:if>

				<div class="divider divider-grad"></div>
			</div>
			<table class="table table-hover">
				<thead>


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
						<td><fmt:formatDate pattern="YYYY-MM-dd HH:mm"
								value="${list.startTime}" /></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		
		<div class="table-responsive-sm">			
		<div style="margin-top: 5%;">
			<span style="font-size: 25px;"><a href=""><b>운영게시판</b></a></span> &nbsp; &nbsp;
			<a class="btn btn-link" href="/board/list"><i class="fa fa-arrow-circle-right"></i><b>more</b></a>
			<div class="divider divider-grad"></div>
		</div>
		<table class="table table-hover">
			<c:if test="${empty boardList}">
				<tr>
					<th colspan="5" style="text-align: center; color: gray;">게시글이
						없습니다.</th>
				</tr>
			</c:if>


			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">유형</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
				</tr>
			</thead>

			<c:forEach var="boardList" items="${boardList}" varStatus="var">

				<c:if test="${not empty boardList}">

					<tr>
						<th scope="row">${var.count}</th>
						<th>${boardList.category}</th>
						<th>${boardList.boardTitle}</th>
						<th>${boardList.userName}</th>
					</tr>
				</c:if>
			</c:forEach>
		</table>
		</div>
		
		<div class="table-responsive-sm"></div>
		<div style="margin-top: 5%;" >
		<div id="table-responsive-sm">
		<img src="/resources/images/insta.jpg" width=150px, height=300px>
		</div>
		<div class="table-responsive-sm">
					<div id="fb-root"></div>
					<script type="text/javascript">
						var userFeed = new Instafeed(
								{
									get : 'user',
									userId : 8752161969,
									sortBy : "most-recent",
									limit : 11,
									template : '<a href="{{link}}" target="_blank" style="margin-right:5px"><img src="{{image}}" width="100" height="100" /></a>',
									accessToken : '8752161969.3d0b6d9.945e8d04c0c74f8aa10dd46e6be1b56e'
								});

						userFeed.run();
					</script>
					
					<div id="instafeed"></div>
				</div>
				
	
		</div>

	</div>
	<div class="row" style="margin-top: 10%;">
		<div class="col-md-12">
			<!-- tag and share -->
			<div class="divider mb-4"></div>

			<div class="row post-navigation mt-5"></div>
		</div>
	</div>

</body>
<script>
	var result = '${RESULT}';

	if (result != '') {
		alert(result);
	}
</script>   

	<footer>
		<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	</footer>

</html>