<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!Doctype html>
<<html>
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

<script src="/resources/js/jQuery-2.1.4.min.js"></script>
<%@ include file="../include/header.jsp"%>

<style>
ul {
	list-style: none;
	padding-left: 0px;
}
</style>
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

	<!-- =======================
   Banner innerpage -->
	<%-- <section>
		<div class="container">
			<div class="row">
				<form name="frm" action="/board/modify" method="post" role="form">
					<input type="hidden" name="boardNo" value="${boardVO.boardNo }">
					<input type="hidden" name="files" value="${boardVO.files }">

					<div class="col-sm-12 mb-5">
						<h5 class="text-center mb-4">운영게시판 수정</h5>


						<div class="table-responsive-sm">
							<table class="table table-hover">

								<tr>
									<th scope="col">작성자</th>
									<td>${boardVO.userNo}</td>
									<th>작성일</th>
									<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}" /></td>

								</tr>
								<tr>
									<th scope="col">제목</th>
									<td><input name="boardTitle" type="text" size="70" maxlength="100" value="${boardVO.boardTitle}" /></td>
									<th>조회수</th>
									<td>${boardVO.viewCnt}</td>

								</tr>
								<tr>
									<th scope="col"><label for="exampleInputPassword1">유형</label></th>

									<td><select name="category">
											<option value="--전체--"
												<c:out value="${boardVO.category eq '--전체--'?'selected':''}"/>>
												--전체--</option>
											<option value="공지사항"
												<c:out value="${boardVO.category eq '공지사항'?'selected':''}"/>>
												공지사항</option>
											<option value="건의"
												<c:out value="${boardVO.category eq '건의'?'selected':''}"/>>
												건의</option>
											<option value="분실물"
												<c:out value="${boardVO.category eq '분실물'?'selected':''}"/>>
												분실물</option>
									</select></td>
								</tr>


							</table>

							<div class="col-md-12">
								<span class="form-group"> <textarea cols="40" rows="15"
										name="boardContent" class="form-control">${boardVO.boardContent}</textarea>
								</span>
								
								<div class="form-group">
									<label for="exampleInputEmail1" class="col-sm-2 control-label">첨부파일<span class="must-mark">*</span></label>
								</div>
								
					
					

								<div id='mydropzone' class="dropzone">
									<!-- <label for="fileUpload">여기</label> -->
									<input type="file" id="fileUpload" name="fileUpload" style="visibility: hidden;" />
			
									<div class="fileDrop">
										<input type="hidden" id="uploadCount">
										<div class="dz-message needsclick">
											<i class="h1 text-muted dripicons-cloud-upload"></i>
											<h3>Drop files here or click to upload.</h3>
											<span class="text-muted font-13">첨부파일을 업로드하려면 여기에 첨부파일 파일을 끌어 넣거나 클릭해주세요</span>
										</div>
									</div>
									
									</div>
									
									<input type="hidden" id="uploadCount" value="${fn:length(fileVO)}" >
									<ul class="dropzone-previews clearfix uploadedList">
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
			                                                   <img data-dz-thumbnail="" class="avatar-sm rounded bg-light" src="/resources/images/file.png">
			                                                </div>
			                                                 </c:otherwise>
			
			                                             </c:choose>
			
			                           	           <div class="col pl-0">
			                                          <a href="/displayFile?fileName=${fileVO.fileLocation}" text-muted font-weight-bold data-dz-name="">${fileVO.fileName}</a>
			                                       </div>
			                                        <div class="col-auto">
	  														 <a href="${fileVO.fileLocation}" class="btn btn-default btn-xs pull-right delbtn"><i class="dripicons-cross"></i></a>
	 												</div>
			                                    </div>
			                                 </div>
			                              </div>
			                           </li>
		                           </c:forEach>
								</ul>
								
								
								<div>
							</div>

                           
							</div>
							<div align="right">
								<input type="submit" class="btn btn-grad" value="수정"> 
								<input type="button" value="취소" id="cancel" class="btn btn-grad">

							</div>
						</div>

					</div>
				</form>
			</div>
		</div>
	</section> --%>
	
	 <!-- =======================
   공지사항 글쓰기 폼 시작 -->
		   <section>
		      <div class="container">
		         	<form role="form" method="post" name='frm'>
		            <input type="hidden" name="userNo" value="${login.userNo }">
		            
		            
		      	<div  class="registertop">
		      			✔는 필수항목입니다.
		      	</div>
		            
		            <div class="row mt-5">
		                  <div class="divider divider-grad"></div>
		               
		
		                  <table  class="table table-hover registerform"  width="500px">
		
		                     <tr>
		                     
		                        <th>✔게시유형</th>
		                        <td>
		                        	<select class="custom-select3 select-big mb-3" name="category">
		                              <option value="--전체--"
												<c:out value="${boardVO.category eq '--전체--'?'selected':''}"/>>
												--전체--</option>
											<option value="공지사항"
												<c:out value="${boardVO.category eq '공지사항'?'selected':''}"/>>
												공지사항</option>
											<option value="건의"
												<c:out value="${boardVO.category eq '건의'?'selected':''}"/>>
												건의</option>
											<option value="분실물"
												<c:out value="${boardVO.category eq '분실물'?'selected':''}"/>>
												분실물</option>
		                        	</select></td>
		                     </tr>
		
		                     <tr>
		                        <th>✔제목</th>
		                        <td>
		                        	<span class="form-group"> 
		                        	<input type="text" class="form-control" placeholder="제목을 입력하세요." name="boardTitle" value="${boardVO.boardTitle}"></span>
		                        </td>
		                     </tr>
		
		                     <tr>
		                        <th >✔내용</th>
		
		                        <td style="min-height: 300px;"><span class="form-group">
		                              <textarea cols="40" rows="15" name="boardContent" 
		                                 class="form-control" placeholder="내용을 입력하세요.">${boardVO.boardContent}</textarea>
		                        </span></td>
		                     </tr>
		                     <tr>
		                     	<th>첨부파일</th>
		                    	 <td align="center">
		                     
		                     		
		                     		
		                     		<div id='mydropzone' class="dropzone">
		                     
		                     
				                     <!-- <label for="fileUpload">여기</label> -->
				                     <input type="file" id="fileUpload" name="fileUpload"
				                        style="visibility: hidden;" />
				
				                     <div class="fileDrop">
				                        <input type="hidden" id="uploadCount">
				                        <div class="dz-message needsclick">
				                                    
				                                    <div class="fileDrop">
				                           <i class="h1 text-muted dripicons-cloud-upload"></i>
				                           <h3>Drop files here or click to upload.</h3>
				                        <input type="hidden" id="uploadCount">
				                           <span class="text-muted font-13">첨부파일을 업로드하려면 여기에 첨부파일
				                              파일을 끌어 넣거나 클릭해주세요</span>
		                  
		                        </div>
		                     </div>
		                     </div>
		                  </div>
		                  </table>
		               </div>
		               
		               
		               <div class="divider divider-grad"></div>
		                     <input type="hidden" id="uploadCount" value="${fn:length(fileVO)}" >
									<ul class="dropzone-previews clearfix uploadedList">
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
			                                                   <img data-dz-thumbnail="" class="avatar-sm rounded bg-light" src="/resources/images/file.png">
			                                                </div>
			                                                 </c:otherwise>
			
			                                             </c:choose>
			
			                           	           <div class="col pl-0">
			                                          <a href="/displayFile?fileName=${fileVO.fileLocation}" text-muted font-weight-bold data-dz-name="">${fileVO.fileName}</a>
			                                       </div>
			                                        <div class="col-auto">
	  														 <a href="${fileVO.fileLocation}" class="btn btn-default btn-xs pull-right delbtn"><i class="dripicons-cross"></i></a>
	 												</div>
			                                    </div>
			                                 </div>
			                              </div>
			                           </li>
		                           </c:forEach>
								</ul>
			
			   <div>
		                  </div>
		
		
		
		
		               <div class="col-sm-12 mb-5">
		               <br><br>
		              	<div align="right">
								<input type="submit" class="btn btn-warning" value="수정"> 
								<input type="button" value="취소" id="cancel" class="btn btn-primary" onclick="location.href='/board/list'">

						</div>
		               </div>
		               
		               
		         </form>
		      </div>
		
		   </section>
		   
		   <br><br><br>

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

<!-- SD PROJECT JS -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<script id="template" type="text/x-handlebars-template">
<li class="dropzone-previews mt-3">
<div class="card mt-1 mb-0 shadow-none border dz-processing dz-image-preview dz-success dz-complete">
<div class="p-2">
<div class="row align-items-center">
 <div class="col-auto">
	 <img data-dz-thumbnail="" class="avatar-sm rounded bg-light" src="{{imgsrc}}">
 </div>
 <div class="col pl-0">
   <a href="/displayFile?fileName={{fullName}}" text-muted font-weight-bold" data-dz-name="">{{fileName}}</a>
 </div>
 <div class="col-auto">
   <a href="{{fullName}}" class="btn btn-default btn-xs pull-right delbtn"><i class="dripicons-cross"></i></a>
 </div>
</div>
</div>
</div>
</li>
</script>

<script>
   $(document)
         .ready(
               function() {
                  var formObj = $("form[role='form']");

                   formObj.submit(function(event) {
                	   
                	   
                           event.preventDefault();

                           var that = $(this);

                           var str = "";
                           
                           $(".uploadedList .delbtn").each(function(index) {
                        	   
                        	   
                                             str += "<input type='hidden' name='files'"
                                                   + " value='"
                                                   + $(this).attr(
                                                         "href")
                                                   + "'> ";
                                          }); 
                                       

                           that.append(str);
                           console.log(str);
                           
                           that.get(0).submit();
                        });

                  

               });
   
	

	$('#mydropzone').click(function(event) {
		
		document.frm.fileUpload.click();
		
	});

	var template = Handlebars.compile($("#template").html());

	$(".fileDrop").on("dragenter dragover", function(event) {
		event.preventDefault();
	});

	$(".fileDrop").on("drop", function(event) {
		
		alert('업로드');
		event.preventDefault();

		var uploaded = $("#uploadCount").val();

		var files = event.originalEvent.dataTransfer.files;

		var file = files[0];

		var formData = new FormData();

		formData.append("file", file);

		$.ajax({
			url : '/uploadAjax',
			data : formData,
			dataType : 'text',
			processData : false,
			contentType : false,
			type : 'POST',
			success : function(data) {

				var fileInfo = getFileInfo(data);
				var html = template(fileInfo);

				var str = "";

				$(".uploadedList").append(html);

				uploaded++;
				
				$("#uploadCount").attr("value", uploaded);

				$(".uploadedList").append(str);
			}
		});
	});

	//클릭으로 파일 업로드할 때 호출되는 함수
	$("#fileUpload").on("change", function(event) {
		event.preventDefault();

		var uploaded = $("#uploadCount").val();

		if (uploaded >= 3) {
			alert('첨부파일은 3개 까지 업로드할 수 있습니다.');
			return;
		}

		// 파일업로드 인풋에서 파일을 받음
		var file = document.getElementById("fileUpload").files[0];

		// 새로운 폼데이터를 생성
		var formData = new FormData();

		// 폼데이터에 파일을 붙임
		formData.append("file", file);

		// AJAX로 uploadAjax 메소드를 호출해서 파일을 업로드함
		$.ajax({
			url : '/uploadAjax',
			data : formData,
			dataType : 'text',
			processData : false,
			contentType : false,
			type : 'POST',
			success : function(data) {

				var fileInfo = getFileInfo(data);
				var html = template(fileInfo);

				var str = "";

				$(".uploadedList").append(html);

				uploaded++;
				$("#uploadCount").attr("value", uploaded);

				$(".uploadedList").append(str);
			}
		});
	});

	$(".uploadedList").on("click", ".delbtn", function(event) {
		event.preventDefault();

		var that = $(this);
		var uploaded = $("#uploadCount").val();

		$.ajax({
			url : "/deleteFile",
			type : "post",
			data : {
				fileName : $(this).attr("href")
			},
			dataType : "text",
			success : function(result) {

				if (result == 'deleted') {

					that.closest("li").remove();
					uploaded--;
					$("#uploadCount").attr("value", uploaded);

				}
			}

		});

	});

	function getOriginalName(fileName) {

		if (checkImageType(fileName)) {
			return;
		}

		var idx = fileName.indexOf("_") + 1;
		return fileName.substr(idx);

	}

	function getImageLink(fileName) {

		if (!checkImageType(fileName)) {
			return;
		}
		var front = fileName.substr(0, 12);
		var end = fileName.substr(14);

		return front + end;

	}
</script>
</html>