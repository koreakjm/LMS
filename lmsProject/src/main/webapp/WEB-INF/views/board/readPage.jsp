<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!Doctype html>
<html>
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
<links
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900%7CPlayfair+Display:400,400i,700,700i%7CRoboto:400,400i,500,700"
	rel="stylesheet"> <!-- Plugins CSS -->
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

<style>
ul {
	list-style: none;
	padding-left: 0px;
}
</style> 

<script src="/resources/vendor/jquery/jQuery-2.1.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<%@ include file="../include/header.jsp"%>
</head>

<body>
	<!-- =======================
   Banner innerpage -->
	<div class="innerpage-banner center bg-overlay-dark-7 py-7"
		style="background: url(../assets/images/bg/04.jpg) no-repeat; background-size: cover; background-position: center center;">
		<div class="container">
			<div class="row all-text-white">
				<div class="col-md-12 align-self-center">
					<h1 class="innerpage-title">${boardVO.boardNo}</h1>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item active"><a
								href="/main?command=loginForm"><i class="ti-home"></i>운영게시판</a></li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- =======================
   Banner innerpage -->
	<!-- =======================
   Banner innerpage -->
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 mb-5">
					<h5 class="text-center mb-4">운영게시판</h5>

					<form role="form" action="modify" method="post">
						<input type="hidden" name="boardNo" value="${boardVO.boardNo}">
						<div class="table-responsive-sm">
							<table class="table table-hover">

								<tr>
									<th scope="col">작성자</th>
									<td>${boardVO.userNo}</td>
									<th>작성일</th>
									<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
											value="${boardVO.regdate}" /></td>

								</tr>
								<tr>
									<th scope="col">제목</th>
									<td>${boardVO.boardTitle}</td>
									<th>조회수</th>
									<td>${boardVO.viewCnt}</td>

								</tr>

								<tr>
									<th scope="col">유형</th>
									<td>${boardVO.category}</td>
								</tr>

							</table>
							<div class="col-md-12">
								<span class="form-group"> <textarea cols="40" rows="15"
										readonly="readonly" name="boardContent" class="form-control">${boardVO.boardContent}</textarea>
								</span>
							</div>
							
							<div class="form-group">
                                    <label for="exampleInputEmail1" class="col-form-label">첨부파일<span class="must-mark">*</span></label>
                                  </div>
                                     
                                <ul class="dropzone-previews">
                           
                           <c:forEach items="${fileVO}" var="fileVO" varStatus="status">
                           <li class="dropzone-previews mt-3">
                              <div class="card mt-1 mb-0 shadow-none border dz-processing dz-image-preview dz-success dz-complete">
                                 <div class="p-2">
                                 
                                    <div class="row align-items-center">
                                             <c:choose>
                                                <c:when test="checkImageType(${fileVO.fileLocation})">
                                                    <div class="col-auto">
                                                    <img data-dz-thumbnail="" class="avatar-sm rounded bg-light" src="${fileVO.fileName}">
                                                 </div>
                                                 </c:when>

                                                <c:otherwise>
                                                <div class="col-auto">
                                                   <img data-dz-thumbnail="" class="avatar-sm rounded bg-light" src="/resources/dist/assets/images/file.svg">
                                                </div>
                                                 </c:otherwise>

                                             </c:choose>

                                       <div class="col pl-0">
                                          <a href="/displayFile?fileName=${fileVO.fileLocation}" text-muted font-weight-bold data-dz-name="">${fileVO.fileName}</a>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </li>
                           </c:forEach>
                           </ul>     


							<div align="right">
								<input type="submit" class="btn btn-grad" value="수정"> <input
									type="button" value="취소" id="cancel" class="btn btn-grad">
							</div>

							<div class="box-footer">
								<button type="submit" class="btn btn-warning">Modify</button>
								<button type="submit" class="btn btn-danger">REMOVE</button>
								<button type="submit" class="btn btn-primary">GO LIST</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	
			<div class="row">
				<div class="col-md-12">
		
					<div class="box box-success">
						<div class="box-header">
							<h3 class="box-title">ADD NEW REPLY</h3>
						</div>
						<div class="box-body">
							<label for="exampleInputEmail1">Writer</label> 
							<input class="form-control" name="userNo" value="${login.userNo }" type="text" placeholder="USER ID" id="newReplyWriter"> 
							<label for="exampleInputEmail1">Reply Text</label> 
							<input class="form-control" type="text" placeholder="REPLY TEXT" id="newReplyText">
		
						</div>
						<!-- /.box-body -->
						<div class="box-footer">
							<button type="button" class="btn btn-primary" id="replyAddBtn">ADD REPLY</button>
						</div>
					</div>
		
		
					<!-- The time line -->
					<ul class="timeline">
						<!-- timeline time label -->
						<li class="time-label" id="repliesDiv"><span class="bg-green">
								Replies List </span></li>
					</ul>
		
					<div class='text-center'>
						<ul id="pagination" class="pagination pagination-sm no-margin ">
		
						</ul>
					</div>
		
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->

	<script>
		$(document).ready(function() {

			var formObj = $("form[role='form']");

			console.log(formObj);

			$(".btn-warning").on("click", function() {
				formObj.attr("action", "/board/modify");
				formObj.attr("method", "get");
				formObj.submit();
			});

			$(".btn-danger").on("click", function() {
				formObj.attr("action", "/board/remove");
				formObj.submit();
			});

			$(".btn-primary").on("click", function() {
				formObj.attr("method", "get");
				formObj.attr("action", "/board/list");
				formObj.submit();
			});

		});
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
<script>
function checkImageType(fileName) {
   
   var pattern = /jpg|gif|png|jpeg/i;

   return fileName.match(pattern);

}
</script>

<script id="template" type="text/x-handlebars-template">
{{#each .}}
<li class="replyLi" data-rno={{rno}}>
<i class="fa fa-comments bg-blue"></i>
 <div class="timeline-item" >
  <span class="time">
    <i class="fa fa-clock-o"></i>{{prettifyDate regdate}}
  </span>
  <h3 class="timeline-header"><strong>{{replyNo}}</strong> -{{userNo}}</h3>
  <div class="timeline-body">{{replyText}} </div>
    <div class="timeline-footer">
     <a class="btn btn-primary btn-xs" 
	    data-toggle="modal" data-target="#modifyModal">Modify</a>
    </div>
  </div>			
</li>
{{/each}}
</script>

<script>
	Handlebars.registerHelper("prettifyDate", function(timeValue) {
		var dateObj = new Date(timeValue);
		var year = dateObj.getFullYear();
		var month = dateObj.getMonth() + 1;
		var date = dateObj.getDate();
		return year + "/" + month + "/" + date;
	});

	var printData = function(replyArr, target, templateObject) {

		var template = Handlebars.compile(templateObject.html());

		var html = template(replyArr);
		$(".replyLi").remove();
		target.after(html);

	}

	var boardNo = ${boardVO.boardNo};
	
	var replyPage = 1;

	function getPage(pageInfo) {

		$.getJSON(pageInfo, function(data) {
			printData(data.list, $("#repliesDiv"), $('#template'));
			printPaging(data.pageMaker, $(".pagination"));

			$("#modifyModal").modal('hide');

		});
	}

	var printPaging = function(pageMaker, target) {

		var str = "";

		if (pageMaker.prev) {
			str += "<li><a href='" + (pageMaker.startPage - 1)
					+ "'> << </a></li>";
		}

		for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
			var strClass = pageMaker.cri.page == i ? 'class=active' : '';
			str += "<li "+strClass+"><a href='"+i+"'>" + i + "</a></li>";
		}

		if (pageMaker.next) {
			str += "<li><a href='" + (pageMaker.endPage + 1)
					+ "'> >> </a></li>";
		}

		target.html(str);
	};

	$("#repliesDiv").on("click", function() {

		if ($(".timeline li").size() > 1) {
			return;
		}
		getPage("/replies/" + boardNo + "/1");

	});
	

	$(".pagination").on("click", "li a", function(event){
		
		event.preventDefault();
		
		replyPage = $(this).attr("href");
		
		getPage("/replies/"+boardNo+"/"+replyPage);
		
	});
	

	$("#replyAddBtn").on("click",function(){
		 
		 var replyerObj = $("#newReplyWriter");
		 var replytextObj = $("#newReplyText");
		 var userNo = replyerObj.val();
		 var replyText = replytextObj.val();
		 
		  $.ajax({
				type:'post',
				url:'/replies/',
				headers: { 
				      "Content-Type": "application/json",
				      "X-HTTP-Method-Override": "POST" },
				dataType:'text',
				data: JSON.stringify({boardNo:boardNo, userNo:userNo, replyText:replyText}),
				success:function(result){
					console.log("result: " + result);
					if(result == 'SUCCESS'){
						alert("등록 되었습니다.");
						replyPage = 1;
						getPage("/replies/"+boardNo+"/"+replyPage );
						replyerObj.val("");
						replytextObj.val("");
					}
			}});
	});


	$(".timeline").on("click", ".replyLi", function(event){
		
		var reply = $(this);
		
		$("#replytext").val(reply.find('.timeline-body').text());
		$(".modal-title").html(reply.attr("data-rno"));
		
	});
	
	

	$("#replyModBtn").on("click",function(){
		  
		  var replyNo = $(".modal-title").html();
		  var replyText = $("#replytext").val();
		  
		  $.ajax({
				type:'put',
				url:'/replies/'+replyNo,
				headers: { 
				      "Content-Type": "application/json",
				      "X-HTTP-Method-Override": "PUT" },
				data:JSON.stringify({replyText:replyText}), 
				dataType:'text', 
				success:function(result){
					console.log("result: " + result);
					if(result == 'SUCCESS'){
						alert("수정 되었습니다.");
						getPage("/replies/"+boardNo+"/"+replyPage );
					}
			}});
	});

	$("#replyDelBtn").on("click",function(){
		  
		  var replyNo = $(".modal-title").html();
		  var replyText = $("#replytext").val();
		  
		  $.ajax({
				type:'delete',
				url:'/replies/'+replyNo,
				headers: { 
				      "Content-Type": "application/json",
				      "X-HTTP-Method-Override": "DELETE" },
				dataType:'text', 
				success:function(result){
					console.log("result: " + result);
					if(result == 'SUCCESS'){
						alert("삭제 되었습니다.");
						getPage("/replies/"+boardNo+"/"+replyPage );
					}
			}});
	});
	
</script>
</html>