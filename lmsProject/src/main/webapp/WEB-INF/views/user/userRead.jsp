<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					<form role="form" action="modifyPage" method="post">
						<input type='hidden' name='page' value="${cri.page}"> 
						<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
						<input type='hidden' name='searchType' value="${cri.searchType}">
						<input type='hidden' name='keyword' value="${cri.keyword}">
					<div class="container">
						<div class="row">
							<div class="col-sm-12 mb-5">
								<h5 class="text-center mb-4">Student Register</h5>
								<div class="table-responsive-sm">
									<table class="table table-hover">
										<tr>
											<th scope="col">Student Number</th>
											<td><input type="text" name="userNo" value="${userVO.userNo}" 
											readonly="readonly" class="form-control" placeholder="학번을 입력해주세요.">
											</td>
										</tr>
										
										<tr>
											<th scope="col">Name</th>
											<td><input type="text" name="userName" value="${userVO.userName}" 
											readonly="readonly" class="form-control" placeholder="이름을 입력해주세요.">
											</td>
										</tr>
											
										<tr>
											<th scope="col">State</th>
											<td><!-- Select -->
												<div class="form-group">
													<select name="state" class="custom-select select-big mb-3" disabled>
														<option value="재학" selected="selected" >${userVO.state}</option>
													</select>
												</div></td>
										</tr>
									</table>
									
									<div align="right">
										<button type="submit" class="btn btn-warning">MODIFY</button>
										<button type="submit" class="btn btn-danger">REMOVE</button>
										<button type="submit" class="btn btn-primary">GO LIST</button>
									</div>
									
								</div>
							</div>
						</div>
					</div>
					</form>
				</section>
	
	
	<!-- ======================= footer  -->
	<footer>
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	</footer>
	<!-- ======================= footer  -->
	
	<script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		$(".btn-warning").on("click", function() {
			formObj.attr("action", "/user/userModify");
			formObj.attr("method", "get");
			formObj.submit();
		});

		$(".btn-danger").on("click", function() {
			formObj.attr("action", "/user/userRemove");
			formObj.submit();
		});

		$(".btn-primary").on("click", function() {
			formObj.attr("method", "get");
			formObj.attr("action", "/user/userList");
			formObj.submit();
		});

	});
	</script>
	

</body>

</html>