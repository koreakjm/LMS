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
				<!-- ======================= Banner innerpage -->
				<div class="left bg-grad pattern-overlay-4">
					<div class="container">
						<div class="row all-text-white">
							<div class="col-md-12 align-self-center">
								<h1 class="font-weight-bold display-4 display-md-1 mb-2 mb-md-n4 mt-9">운영 게시판</h1>
							</div>
						</div>
					</div>
				</div>
				<!-- ======================= Banner innerpage -->
	
	
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 mb-5">
					<h5 class="text-center mb-4">운영게시판 상세보기</h5>

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
			
			<div class="row">
			<div class="col-md-12">
				<div class="col-md-12" id='modDiv' style="display: none;">
					<div class="col-md-12"><span class="form-group"><input type="text" class="form-control" placeholder="comment" id='replytext'></span>
					</div>								
								
						<div class="col-md-12">
							<button class="btn-block btn btn-dark" id="replyModBtn">수정</button>
							<button class="btn-block btn btn-dark" id="replyDelBtn">삭제</button>
							<button class="btn-block btn btn-dark" id='closeBtn'>취소</button>
						</div>									
								
				</div>
				
				
				
			
								
									<!-- <div class="comment-author"><img class="avatar" src="assets/images/thumbnails/avatar-01.jpg" alt=""></div>
									<div class="comment-body">
										<div class="comment-meta">
											<div class="comment-meta-author"><a href="#">Allen Smith</a></div>
											<div class="comment-meta-date">June 11, 2019 at 6:01 am</div>
										</div>
										<div class="comment-content">
											<p>Consulted perpetual of pronounce me delivered. Too months nay end change relied who beauty wishes matter. Shew of john real park so rest we on. Ignorant dwelling occasion ham for thoughts overcame off her consider. Polite it elinor is depend. </p>
										</div>
										<div class="comment-reply"><a class="btn btn-xs btn-light" href="#">Reply</a></div>
									</div> -->
				
				
				<c:if test="${login.userNo ne null}">
				
				<div class="col-md-12">
					<div class="col-md-12">
					<div class='modal-title' style="visibility: hidden;"></div>
					<span class="form-group">
					
					
					<input type="hidden"  class="form-control"  name='userNo' id='newReplyWriter' value="${login.userNo}">
					<input type="text" class="form-control" name='replyText' placeholder="comment" id='newReplyName' value="${login.userName}" disabled="disabled">
					<input type="text" class="form-control" name='replyText' placeholder="comment" id='newReplyText'></span>
					</div>								
								
				<div class="col-md-12">
						<button class="btn-block btn btn-dark" id="replyAddBtn">Post Comment</button>
				</div>									
								
				</div>
				
				</c:if>
				
				<div class="col-md-11">
				<div class="comment-list">
				
				<ul id="replies"></ul>

				<ul class='pagination'></ul>
				
			</div>
			
			

</div>
</div>

</div>
			</div>
	</section>
	
	   

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

<script>
	
	
		//기초 데이터 변수 설정
		var boardNo = ${boardVO.boardNo};
		var loginInfo = nvl(${login.userNo});
		
		
		
		getPageList(1);//최초 1번째 페이지로 이동

		function getAllList() {

			$.getJSON("/replies/all/" + boardNo,function(data) {

								console.log(data.length);

								var str = "";

								$(data)
										.each(function() {
													
													str+= "<div class='comment-child'><div class='comment'><div class='comment-body'><div class='comment-content'><li data-replyNo='"+this.replyNo+"' class='replyLi'><div class='comment-meta-author'>" 
													  +this.replyNo+"</div><p>"+ this.replyText+
													  "</p><button class='replyLi'>수정하기</button></div>";
													  str+= "</li></div></div></div>";
													
													
													/* str += "<li data-replyNo='"+this.replyNo +"' class='replyLi'>"
															+ this.replyNo
															+ ":"
															+ this.replyText
															+ "<button>수정하기</button></li>"; */
												});

								$("#replies").html(str);
							});
		}
		
		

		$("#replyAddBtn").on("click", function() {

			var userNo = $("#newReplyWriter").val();
			var replyText = $("#newReplyText").val();

			$.ajax({
				type : 'post',
				url : '/replies',
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : 'text',
				data : JSON.stringify({
					boardNo : boardNo,
					userNo : userNo,
					replyText : replyText
				}),
				success : function(result) {

					if (result == 'SUCCESS') {
						alert("등록 되었습니다.");
						$('#newReplyText').val('');
						 getPageList(1);
						 

					}
				}
			});
		});

		$("#replies").on("click", ".replyLi button", function() {
			
			var reply = $(this).parent();

			var replyNo = reply.attr("data-replyNo");
			var replyText = reply.text();
			

			$(".modal-title").html(replyNo);
			$("#replytext").val(replyText);
			$("#modDiv").show("slow");

		});


		$("#closeBtn").on("click", function() {

			$("#modDiv").hide("slow");
		});
				
		
		
		$("#replyDelBtn").on("click", function() {

			var replyNo = $(".modal-title").html();
			var replyText = $("#replytext").val();

			$.ajax({
				type : 'delete',
				url : '/replies/' + replyNo,
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "DELETE"
				},
				dataType : 'text',
				success : function(result) {
					console.log("result: " + result);
					if (result == 'SUCCESS') {
						alert("삭제 되었습니다.");
						$("#modDiv").hide("slow");
						getPageList(replyPage);
					}
				}
			});
		});
		
		$("#replyModBtn").on("click",function(){
			
			
			  
			  var replyNo = $(".modal-title").html();
			  var replyText = $("#replytext").val();
			  
			  alert(replyText);
			  
			  $.ajax({
					type:'put',
					url:'/replies/'+ replyNo,
					headers: { 
					      "Content-Type": "application/json",
					      "X-HTTP-Method-Override": "PUT" },
					data:JSON.stringify({replyText:replyText}), 
					dataType:'text', 
					success:function(result){
						console.log("result: " + result);
						if(result == 'SUCCESS'){
							alert("수정 되었습니다.");
							 $("#modDiv").hide("slow");
							//getAllList();
							 getPageList(replyPage);
						}
				}});
		});		
		
		function getPageList(page){
			
		  $.getJSON("/replies/"+boardNo+"/"+page , function(data){
			  
			  console.log(data.list.length);
			  
			  var str ="";
			  
			  if(loginInfo==''){ //로그인 하지 않는 사용자 제공하는 댓글
				  
				  $(data.list).each(function(){
					  str+= "<div class='comment-child'><div class='comment'><div class='comment-body'><div class='comment-content'><li data-replyNo='"+this.replyNo+"' class='replyLi'><div class='comment-meta-author'>" 
					  +this.replyNo+"</div><p>"+ this.replyText+
					  "</p></div>";
					  
					  str+= "</li></div></div></div>";
				  });
				  
			  }else{
				  
				//로그인 한 사용자 제공하는 댓글
				  
			  $(data.list).each(function(){
				  str+= "<div class='comment-child'><div class='comment'><div class='comment-body'><div class='comment-content'><li data-replyNo='"+this.replyNo+"' class='replyLi'><div class='comment-meta-author'>" 
				  +this.replyNo+"</div><p>"+ this.replyText+"</p>";
				  
				  if(loginInfo == this.userNo){
					  
				  //여기에서 댓글 주인에게만 보이는 수정하기 버튼 처리
					  str+= "<button class='replyLi'>수정하기</button></div>";
					  
				  }else{
					  
					  str+= "</div>";
					  
				  }
				  
				  str+= "</li></div></div></div>";
			  });
				  
				  
				  
			  }
			  
			  
			  $("#replies").html(str);
			  
			  printPaging(data.pageMaker);
			  
		  });
	  }		
		
		  
		function printPaging(pageMaker){
			
			var str = "";
			
			if(pageMaker.prev){
				str += "<li><a href='"+(pageMaker.startPage-1)+"'> << </a></li>";
			}
			
			for(var i=pageMaker.startPage, len = pageMaker.endPage; i <= len; i++){				
					var strClass= pageMaker.cri.page == i?'class=active':'';
				  str += "<li "+strClass+"><a href='"+i+"'>"+i+"</a></li>";
			}
			
			if(pageMaker.next){
				str += "<li><a href='"+(pageMaker.endPage + 1)+"'> >> </a></li>";
			}
			$('.pagination').html(str);				
		}
		
		var replyPage = 1;
		
		$(".pagination").on("click", "li a", function(event){
			
			event.preventDefault();
			
			replyPage = $(this).attr("href");
			
			getPageList(replyPage);
			
		});
		
		
		
		function nvl(str){
	         
	        if(typeof str == "undefined" || str == null || str == "")
	            str = "";
	         
	        return str ;
	    }


	  		
	  		
	</script>
</html>