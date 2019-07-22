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

<style>
ul {
	list-style: none;
	padding-left: 0px;
}
</style>


</head>
<body>
	<%@ include file="../include/header.jsp"%>

	<!-- =======================
   Banner innerpage -->
	<div class="innerpage-banner center bg-overlay-dark-7 py-7"
		style="background: url(../assets/images/bg/04.jpg) no-repeat; background-size: cover; background-position: center center;">
		<div class="container">
			<div class="row all-text-white">
				<div class="col-md-12 align-self-center">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item active"><a
								href="/main?command=loginForm"><i class="ti-home"></i>Home</a></li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- =======================
   Banner innerpage -->

	<!-- =======================
   공지사항 글쓰기 폼 시작 -->
	<section>
		<div class="container">
			<form role="form" method="post" name='frm'>
				<input type="hidden" name="userNo" value="${login.userNo }">
				<div class="row mt-5">
					<div class="col-md-12">
						<h2 class="mb-2">운영게시글 등록</h2>
						<br>
					</div>

					<div class="col-md-2">
						<select class="custom-select select-big mb-3" name="category">
							<option value="null">--전체--</option>
							<option value="공지사항">공지사항</option>
							<option value="건의">건의</option>
							<option value="분실물">분실물</option>
						</select>
					</div>
					<div class="col-md-7">
						<span class="form-group">
						<input type="text" class="form-control" placeholder="제목을 입력하세요." name="boardTitle"></span>
					</div>


					<div class="col-md-12" style="min-height: 480px;">
						<span class="form-group"> <textarea cols="40" rows="20" name="boardContent" class="form-control" placeholder="내용을 입력하세요."></textarea>
						</span>
					</div>

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
					<div>
						<ul class="dropzone-previews clearfix uploadedList">
						</ul>
					</div>
					
					
					

				</div>
				<div align="right">
					<input type="submit" value="등록" class="btn btn-grad" /> 
					<input type="button" value="취소 " class="btn btn-grad" />
				</div>
			</form>
		</div>

	</section>
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
                           
                           $(".uploadedList .delbtn")
                                 .each(
                                        function(index) {
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

                  $(".btn-cancel").on(
                              "click",
                              function() {
                                 self.location = "shop.do?action=list&page=${cri.page}&perPageNum=${cri.perPageNum}"
                                       + "&searchType=${cri.searchType}&listType=${cri.listType}&keyword=${cri.keyword}";
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