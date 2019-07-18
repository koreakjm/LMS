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
               <h1 class="innerpage-title">${BoardVO.boardTitle}</h1>
               <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                     <li class="breadcrumb-item active"><a
                        href="/main?command=loginForm"><i class="ti-home"></i>Home</a></li>
                     <li class="breadcrumb-item">독서모임</li>
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
               <h5 class="text-center mb-4">모임게시판 수정</h5>
               <form name="frm" method="post"
                  action="/meeting?command=metBoardUpdateAction&metNum=${BoardVO.BoardNo}<%-- &page=${pageNum} For input string: "" 오류원인--%>"
                  enctype="multipart/form-data">
                  <input type="hidden" name="boardNo" value="${BoardVO.BoardNo}">
                  <input type="hidden" name="existing_file"
                     value="${BoardVO.boardFile}" />

                  <div class="table-responsive-sm">
                     <table class="table table-hover">

                        <tr>
                           <th scope="col">유형</th>
                           <td><label for="category">평점</label> <select name="rating">
                                 <option value="notice"
                                    <c:out value="${boardVO.category eq '1'?'selected':''}"/>>
                                    공지사항</option>
                                 <option value="plz"
                                    <c:out value="${boardVO.category eq '2'?'selected':''}"/>>
                                      건의</option>
                                 <option value="lost"
                                    <c:out value="${boardVO.category eq '3'?'selected':''}"/>>
                                    분실물</option>
                              
                                 
                           </select>
                        </tr>
                        <tr>
                           <th scope="col">제목</th>
                           <td><input name="boardTitle" type="text" size="70"
                              maxlength="100" value="${BoardVO.boardTitle}" /></td>
                           <th>조회수</th>
                           <td>${BoardVO.boardTitle}</td>

                        </tr>
                        <tr>
                           <th scope="col">기존파일</th>
                           <td>&nbsp;&nbsp; ${BoardVO.boardFile}</td>
                           <th scope="col">첨부파일</th>
                           <td><input type="file" name="boardFile" /></td>
                        </tr>

                     </table>
                     <div class="col-md-12">
                        <span class="form-group"> <textarea cols="40" rows="15"
                              name="boardContent" class="form-control">${BoardVO.boardcontent}</textarea>
                        </span>
                     </div>


                     <div align="right">
                        <input type="submit" class="btn btn-grad" value="수정"> <input
                           type="button" value="취소" id="cancel" class="btn btn-grad">
                     </div>
                  </div>
               </form>
            </div>
         </div>
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
</html>