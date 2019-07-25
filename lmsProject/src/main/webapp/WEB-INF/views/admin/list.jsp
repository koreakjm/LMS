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
<title>LMS : 실습실 사용내역</title>
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
				<!-- ======================= Banner innerpage -->
				<div class="left bg-grad pattern-overlay-4">
					<div class="container">
						<div class="row all-text-white">
							<div class="col-md-12 align-self-center">
								<h1 class="font-weight-bold display-4 display-md-1 mb-2 mb-md-n4 mt-9">실습실 사용내역</h1>
							</div>
						</div>
					</div>
				</div>
				<!-- ======================= Banner innerpage -->
				
	<section>

		<div class="container">
			<div class="row">
				<div class="col-sm-12 mb-5">
					<div class="col-md-12">
						<div class='box'>
							
							 <div class="float-right">
                        <div class="input-group2">
                           <select class="custom-select2 select-big " name="searchType">
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
                           </select>&nbsp;<input name='keyword' id="keywordInput"
                              value='${cri.keyword}' type="text" class="form-control2"
                              placeholder="search" size="10" width="40"> &nbsp;
                              <span class="input-group-btn">
                              <button id='searchBtn' type="submit" class="btn btn-dark ">
                                 &nbsp; <i class="ti-search"></i>
                              </button>                                  
                           </span>
                        </div>
                     </div>
                     <a class="btn btn-outline-grad" href="<c:url value='/admin/excelDown.do'/>">엑셀 다운로드</a>
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
			<!--    하단페이징 -->
		   <ul class="pagination justify-content-center">
		
		      <!-- PREV -->
		      <c:if test="${pageMaker.prev}">
		         <li class="page-item"><a class="page-link"
		            href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">PREV</a></li>
		      </c:if>
		
		      <!-- Pageing NO -->
		      <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
		         var="idx">
		         <c:choose>
		            <c:when test="${pageMaker.cri.page == idx}">
		               <li class="page-item disable active"><span
		                  class="page-link bg-grad">${idx}</span></li>
		            </c:when>
		
		            <c:otherwise>
		               <li class="page-item"><a class="page-link"
		                  href="list${pageMaker.makeSearch(idx)}">${idx}</a></li>
		            </c:otherwise>
		         </c:choose>
		      </c:forEach>
		
		      <!-- NEXT -->
		      <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		         <li class="page-item"><a class="page-link"
		            href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">NEXT</a></li>
		      </c:if>
		   </ul>
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