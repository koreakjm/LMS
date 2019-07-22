<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>

<!-- Favicon -->
<link rel="shortcut icon" href="../resources/images/favicon.ico">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900%7CPlayfair+Display:400,400i,700,700i%7CRoboto:400,400i,500,700"
	rel="stylesheet">

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css"
	href="../resources/vendor/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css"
	href="../resources/vendor/themify-icons/css/themify-icons.css" />
<link rel="stylesheet" type="text/css"
	href="../resources/vendor/animate/animate.min.css" />
<link rel="stylesheet" type="text/css"
	href="../resources/vendor/fancybox/css/jquery.fancybox.min.css" />
<link rel="stylesheet" type="text/css"
	href="../resources/vendor/owlcarousel/css/owl.carousel.min.css" />
<link rel="stylesheet" type="text/css"
	href="../resources/vendor/swiper/css/swiper.min.css" />

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="../resources/css/style.css" />


<head>
<title>실습실 사용내역</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Webestica.com">
<meta name="description"
	content="Creative Multipurpose Bootstrap Template">

<!-- Favicon -->
<link rel="shortcut icon" href="../assets/images/favicon.ico">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900%7CPlayfair+Display:400,400i,700,700i%7CRoboto:400,400i,500,700"
	rel="stylesheet">

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css"
	href="../assets/vendor/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/vendor/themify-icons/css/themify-icons.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/vendor/animate/animate.min.css" />

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
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
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- =======================
   Banner innerpage -->
	<section>

		<div class="container">
			<div class="row">
				<div class="col-sm-12 mb-5">
					<div class="col-md-12">
						<div class='box'>
							<div class="box-header with-border">
								<h3 class="box-title">실습실 사용내역</h3>
							</div>

							<div class='box-body'>

								<select name="searchType">
									<option value="n"
										<c:out value="${cri.searchType == null?'selected':''}"/>>
										---</option>
									<option value="t"
										<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
										이름</option>
									<option value="w"
										<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
										학번</option>
									<option value="r"
										<c:out value="${cri.searchType eq 'r'?'selected':''}"/>>
										날짜</option>

								</select> <input type="text" name='keyword' id="keywordInput"
									value='${cri.keyword}'>
								<button id='searchBtn'>Search</button>

								<!-- <form name="excelForm" id="excelForm" method="POST" action="/excelDownload">
  				  <input type="submit" id="excelDown" value="EXCEL 다운"/>
				</form> -->

							</div>
						</div>
						<div class="table-responsive-sm">
							<table class="table table-hover">

								<thead>

									<tr>
										<th scope="col">번호</th>
										<th scope="col">학번</th>
										<th scope="col">이름</th>
										<th scope="col">시작시간</th>
										<th scope="col">종료시간</th>

									</tr>
								</thead>

								<tbody>
									<c:forEach var="adminList" items="${list}">
										<tr>
											<th scope="row">${adminList.labListNo}</th>
											<td>${adminList.userNo}</td>
											<td>${adminList.userName}</td>
											<td><fmt:formatDate pattern="YYYY-MM-dd HH:mm"
													value="${adminList.startTime}" /></td>
											<td><fmt:formatDate pattern="YYYY-MM-dd HH:mm"
													value="${adminList.endTime}" /></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

						</div>
					</div>
				</div>
			</div>
	</section>
	<section class="pt-0">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-8">
					<nav>
						<ul class="pagination justify-content-center">
							<c:if test="${criteria.pageNum > 1}">
								<li class="page-item"><a class="page-link"
									href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
							</c:if>


							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<c:choose>
									<c:when test="${idx == Criteria.page}">
										<li class="page-item active"><span
											class="page-link bg-grad">${idx}</span></li>
									</c:when>

									<c:otherwise>

										<li class="page-item"><a class="page-link"
											href="list${pageMaker.makeSearch(idx)}">${idx}${Criteria.page}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li class="page-item"><a class="page-link"
									href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
							</c:if>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<script>
		$(document).ready(
				function() {
					$('#searchBtn').on(
							"click",
							function(event) {

								self.location = "list"
										+ '${pageMaker.makeQuery(1)}'
										+ "&searchType="
										+ $("select option:selected").val()
										+ "&keyword="
										+ $('#keywordInput').val();
							});
				});
	</script>

	<%@ include file="../include/footer.jsp"%>
</body>
</html>