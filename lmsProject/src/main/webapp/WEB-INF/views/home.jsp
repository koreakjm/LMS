<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<head>
	<title>Wizixo | Creative Multipurpose Bootstrap Template</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Creative Multipurpose Bootstrap Template">

	<!-- Favicon -->
	<link rel="shortcut icon" href="../resources/images/favicon.ico">

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900%7CPlayfair+Display:400,400i,700,700i%7CRoboto:400,400i,500,700" rel="stylesheet">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="../resources/vendor/font-awesome/css/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" href="../resources/vendor/themify-icons/css/themify-icons.css" />
	<link rel="stylesheet" type="text/css" href="../resources/vendor/animate/animate.min.css" />
	<link rel="stylesheet" type="text/css" href="../resources/vendor/fancybox/css/jquery.fancybox.min.css" />
	<link rel="stylesheet" type="text/css" href="../resources/vendor/owlcarousel/css/owl.carousel.min.css" />
	<link rel="stylesheet" type="text/css" href="../resources/vendor/swiper/css/swiper.min.css" />

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="../resources/css/style.css" />

</head>
<body>

	<!-- =======================
	header Start-->
	<header>
		<%@ include file="/WEB-INF/views/include/header.jsp"%>
	</header>
	<!-- =======================
	header End-->


<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">REGISTER BOARD</h3>
				</div>
				<!-- /.box-header -->

				<form role="form" method="post"> 
					<div class="box-body">
						
						
						<div class="form-group">
							<label for="exampleInputEmail1">Writer</label> <input type="text"
								name="userNo" class="form-control" value='${login.userName}'
								readonly>
						</div>
						
						<!--
						 	<div class="form-group">
							<label for="exampleInputEmail1">Writer</label> <input type="text"
								name="writer" class="form-control" placeholder="Enter Writer">
						</div>
						
						-->
					</div>
					<!-- /.box-body -->

					<div class="box-footer">
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</form>


			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->


</body>
</html>


