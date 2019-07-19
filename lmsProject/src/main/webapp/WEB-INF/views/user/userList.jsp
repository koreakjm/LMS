 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
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
	<!-- ======================= header Start-->
	<header>
		<%@ include file="/WEB-INF/views/include/header.jsp"%>
	</header>
	<!-- ======================= header End-->
	
	
				<!-- ======================= Table -->
				<section>
					<div class="container">
						<div class="row">
							<div class="col-sm-12 mb-5">
								<h5 class="text-center mb-4">Student List</h5>
									<div class="col-md-2">
									<select class="custom-select select-big mb-2" name="searchType">
										<option value="n"
											<c:out value="${cri.searchType == null?'selected':''}"/>>
											---</option>
										<option value="t"
											<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
											학번</option>
										<option value="c"
											<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
											이름</option>
										<option value="w"
											<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
											재학상태</option>
										<option value="tc"
											<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
											학번 OR 이름</option>
										<option value="cw"
											<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
											이름 OR 재학상태</option>
										<option value="tcw"
											<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
											학번 OR 이름 OR 재학상태</option>
									</select>
										<input type="text" class="form-control" name='keyword' id="keywordInput" value='${cri.keyword }'>
									<button id='searchBtn'>Search</button>
								</div>
								
								<div class="table-responsive-sm">
											
								
									<table class="table table-hover">
										<thead>
											<tr>
												<th scope="col">#</th>
												<th scope="col">Student Number</th>
												<th scope="col">Name</th>
												<th scope="col">State</th>
											</tr>
										</thead>
										<tbody>
										
										<c:forEach items="${list}" var="userVO" varStatus="var">
											<tr>
												<th scope="row">${var.count}</th>
												<td><a href='/user/userRead${pageMaker.makeSearch(pageMaker.cri.page) }&userNo=${userVO.userNo}'>
												${userVO.userNo}</a></td>
												<td>${userVO.userName}</td>
												<td>${userVO.state}</td>
											</tr>
											
										</c:forEach>
										</tbody>
									</table>
									
									<div align="right">
										<button class="btn btn-primary" id="newBtn">REGISTER</button>
									</div>
									
								</div>
							</div>
						</div>
					</div>
				</section>
	
				<!-- 페이징 -->
					<div class="container mb-6">
						<div class="row justify-content-center">
							<div class="col-md-8">
								<nav>
									<ul class="pagination justify-content-center">
			
										<c:if test="${pageMaker.prev}">
											<li class="page-item">
											<a class="page-link" href="userList${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
										</c:if>
			
										<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
											<li class="page-item active"
												<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
												<a class="page-link bg-grad" href="userList${pageMaker.makeSearch(idx)}">${idx}</a>
											</li>
										</c:forEach>
			
										<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
											<li class="page-item">
											<a class="page-link" href="userList${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
										</c:if>
			
									</ul>
								</nav>
							</div>
						</div>
					</div>
				<!-- 페이징 처리 마지막 -->
	
	
	
	
	<!-- ======================= footer  -->
	<footer>
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	</footer>
	<!-- ======================= footer  -->
	
	<script>
	$(document).ready(
			function() {

				$('#searchBtn').on(
						"click",
						function(event) {

							self.location = "userList"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();

						});

				$('#newBtn').on("click", function(evt) {

					self.location = "/user/userRegister";

				});
				

			});
	</script>
	
	<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
	</script>

</body>

</html>