<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<link rel="stylesheet" type="text/css" href="resources/vendor/font-awesome/css/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" href="resources/vendor/themify-icons/css/themify-icons.css" />
	<link rel="stylesheet" type="text/css" href="resources/vendor/animate/animate.min.css" />
	<link rel="stylesheet" type="text/css" href="resources/vendor/fancybox/css/jquery.fancybox.min.css" />
	<link rel="stylesheet" type="text/css" href="resources/vendor/owlcarousel/css/owl.carousel.min.css" />
	<link rel="stylesheet" type="text/css" href="resources/vendor/swiper/css/swiper.min.css" />

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="resources/css/style.css" />

</head>

<body>
	<div class="preloader">
		<img src="resources/images/preloader.svg" alt="Pre-loader">
	</div>

	<!-- =======================
	header Start-->
	<header>
		<%@ include file="/WEB-INF/views/include/header.jsp"%>
	</header>
	<!-- =======================
	header End-->

	<!-- =======================
	Main Banner -->
	<section class="p-0">
		<div class="swiper-container height-700-responsive swiper-arrow-hover swiper-slider-fade">
			<div class="swiper-wrapper">
				<!-- slide 1-->
				<div class="swiper-slide bg-overlay-dark-2" style="background-image:url(resources/images/banner/05.jpg); background-position: center center; background-size: cover;">
					<div class="container h-100">
						<div class="row d-flex h-100">
							<div class="col-lg-8 col-xl-6 mr-auto slider-content justify-content-center align-self-center align-items-start text-left">
								<h2 class="animated fadeInUp dealy-500 display-6 display-md-4 display-lg-3 font-weight-bold text-white">We are creating smart websites.</h2>
								<h3 class="animated fadeInUp dealy-1000 text-white display-8 display-md-7 alt-font font-italic mb-2 my-md-4">Crafting visually stunning memorable experiences for the web</h3>
								<div class="animated fadeInUp mt-3 dealy-1500"><a href="#" class="btn btn-grad">Purchase Now!</a> <a href="#" class="btn btn-link text-white">Check live demo!</a></div>
							</div>
						</div>
					</div>
				</div>
				<!-- slide 2-->
				<div class="swiper-slide bg-overlay-dark-2" style="background-image:url(resources/images/banner/02.jpg); background-position: center top; background-size: cover;">
					<div class="container h-100">
						<div class="row d-flex h-100">
							<div class="col-md-8 justify-content-center align-self-center align-items-start mx-auto">
								<div class="slider-content text-center ">
									<h3 class="animated fadeInUp dealy-500 display-8 display-md-7 text-white alt-font font-italic">Build a very unique and professional website</h3>
									<h2 class="animated fadeInUp dealy-1000 display-6 display-md-4 display-lg-3 font-weight-bold text-white">We’re good. Just ask our moms.</h2>
									<div class="animated fadeInUp mt-3 dealy-1500"><a href="#" class="btn btn-grad">Contact us</a></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Slider buttons -->
			<div class="swiper-button-next"><i class="ti-angle-right"></i></div>
			<div class="swiper-button-prev"><i class="ti-angle-left"></i></div>
			<div class="swiper-pagination"></div>
		</div>
	</section>
	<!-- =======================
	Main banner -->

	<!-- =======================
	about us  -->
	<section>
		<div class="container">
			<div class="row justify-content-between align-items-center">
				<!-- left -->
				<div class="col-md-6">
					<div class="row mt-4 mt-md-0">
						<div class="col-5 offset-1 px-2 mb-3 align-self-end">
							<img class="border-radius-3 wow fadeInUp" data-wow-duration="0.8s" data-wow-delay="0.4s" src="resources/images/service/01.jpg" alt="">
						</div>
						<div class="col-6 px-2 mb-3">
							<img class="border-radius-3 wow fadeInRight" data-wow-duration="0.8s" data-wow-delay="0.6s" src="resources/images/service/02.jpg" alt="">
						</div>
						<div class="col-7 px-2 mb-3">
							<div class="border-radius-3 wow fadeInLeft bg-grad p-2 p-sm-3 p-lg-4 p-xl-5 all-text-white" data-wow-duration="0.8s" data-wow-delay="0s">
								<span>Our goal:</span>
								<h3 class="font-weight-bold">"If we build it, they will come"</h3>
							</div>
						</div>
						<div class="col-5 align-self-start pl-2 mb-3">
							<img class="border-radius-3 wow fadeInDown" data-wow-duration="0.8s" data-wow-delay="0.2s" src="resources/images/service/03.jpg" alt="">
						</div>
					</div>
				</div>
				<!-- right -->
				<div class="col-md-6 pl-lg-5">
					<h2 class="h1">Get it done with the Wizixo HTML5 template </h2>
					<p class="lead">Partnering with 500+ Fortune companies and mid-sized firms across enterprises, uniquely customized and <abbr title="title">scalable workforce solutions.</abbr></p>
					<p>There is nothing that can stop you from achieving what you want, except yourself. If you devote yourself to it you will achieve your goal.</p>
					<div>
						<a href="#" class="btn btn-dark">Contact us</a>
						<a href="#" class="btn btn-link">View Portfolio</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================
	about us  -->

	<!-- =======================
	why-us -->
	<section class="why-us p-0">
		<div class="container">
			<div class="row no-gutters">
				<!--why us left-->
				<div class="col-lg-6 d-none d-lg-block bg-light" style="background:url(resources/images/bg/05.jpg) no-repeat; background-size:cover;">
				</div>
				<!--why us right-->
				<div class="col-lg-6 col-md-12 bg-grad px-4 py-5 p-lg-5 all-text-white">
					<div class="h-100">
						<div class="title text-left p-0">
							<span class="pre-title">Why you should trust us?</span>
							<h2>We Provide the best solutions for your business needs!</h2>
							<p>Amounted old strictly but Marianne admitted. People former is remove remain as. Admiration instrument affronting invitation reasonably up do of prosperous in shy saw declared age debating ecstatic man call in so want pure rank am dear were remarkably to continuing on. </p>
						</div>
						<div class="row">
							<div class="col">
								<ul class="list-group list-group-borderless text">
									<li class="list-group-item text-white"><i class="fa fa-check"></i>Maintained Windows Servers</li>
									<li class="list-group-item text-white"><i class="fa fa-check"></i>Supported Windows workstations</li>
									<li class="list-group-item text-white"><i class="fa fa-check"></i>Setup a rotation schedule</li>
									<li class="list-group-item text-white"><i class="fa fa-check"></i>Designed machines/server</li>
								</ul>
							</div>
							<div class="col">
								<ul class="list-group list-group-borderless text">
									<li class="list-group-item text-white"><i class="fa fa-check"></i>Configured backups</li>
									<li class="list-group-item text-white"><i class="fa fa-check"></i>Setup a rotation schedule</li>
									<li class="list-group-item text-white"><i class="fa fa-check"></i>Windows workstations Supported</li>
									<li class="list-group-item text-white"><i class="fa fa-check"></i>Windows Servers Maintained</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- why-us
	=======================  -->

	<!-- =======================
	service -->
	<section class="service">
		<div class="container">
			<div class="row">
				<div class="col-12 col-lg-8 mx-auto">
					<div class="title text-center">
						<span class="pre-title">Check out our services</span>
						<h2>Premium and royal service</h2>
						<p class="mb-0">We are an insight and behavior driven creative marketing agency. A Full Service Digital Creative Agency Specializing in: Video Production, Web Design, Branding, Brand Strategy</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 mt-30">
					<div class="feature-box f-style-2 icon-grad h-100">
						<div class="feature-box-icon"><i class="ti-save-alt"></i></div>
						<h3 class="feature-box-title">Choose Right Tools</h3>
						<p class="feature-box-desc">Residence certainly elsewhere something she preferred cordially law. Age his surprise formerly Mrs perceive few moderate. Of in <strong> power match on</strong> truth worse would an match learn. </p>
						<a class="mt-3" href="#">Know more!</a>
					</div>
				</div>
				<div class="col-md-4 mt-30">
					<div class="feature-box f-style-2 icon-grad h-100">
						<div class="feature-box-icon"><i class="ti-ruler-pencil"></i></div>
						<h3 class="feature-box-title">Customize Your wish</h3>
						<p class="feature-box-desc">Consulted perpetual of pronounce me delivered. Too months nay end change relied <abbr title="attribute">who beauty</abbr> wishes matter. Shew of john real park so rest we on. Ignorant occasion for thoughts</p>
						<a class="mt-3" href="#">Know more!</a>
					</div>
				</div>
				<div class="col-md-4 mt-30">
					<div class="feature-box f-style-2 icon-grad h-100">
						<div class="feature-box-icon"><i class="ti-agenda"></i></div>
						<h3 class="feature-box-title">Meet your expectations</h3>
						<p class="feature-box-desc">Why end might ask civil again spoil. Dinner she our horses depend remember at children by reserved to vicinity. Oh song well four only head busy it. In affronting delightful simplicity own.</p>
						<a class="mt-3" href="#">Know more!</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================
	service -->

	<!-- =======================
	action box -->
	<section class="p-0">
		<div class="container">
			<div class="row ">
				<div class="col-md-12">
					<div class="bg-dark border-radius-3 py-3 all-text-white">
						<h2 class="alt-font p-2 p-sm-5 text-center">"Hi there! We are creating smart websites. Partnering with 500+ Fortune companies and mid-sized firms across enterprises. We create websites that have it all: Beauty and Brains. "</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================
	action box -->

	<!-- =======================
	portfolio -->
	<section class="portfolio pb-0">
		<div class="container">
			<div class="row">
				<div class="col-12 col-lg-7 mx-auto">
					<!-- title -->
					<div class="title text-center">
						<span class="pre-title">Check out some of our latest work.</span>
						<h2>Our Portfolio: Quality Results</h2>
						<p class="mb-0">Our portfolio shows our hard work and devotion to helping our clients succeed. Don't just take our word for it. Check out the latest work.</p>
					</div>
				</div>
				<div class="col-md-12 p-0">
					<div class="portfolio-wrap grid items-3 items-padding">
						<!-- portfolio-card -->
						<div class="portfolio-card isotope-item digital">
							<div class="portfolio-card-body">
								<div class="portfolio-card-header">
									<img src="resources/images/portfolio/01.jpg" alt="">
								</div>
								<div class="portfolio-card-footer">
									<a class="full-screen" href="resources/images/portfolio/01.jpg" data-fancybox="portfolio" data-caption="Fly in time"><i class="ti-fullscreen"></i></a>
									<h6 class="info-title"><a href="#" title="">Fly in time</a></h6>
									<p>Branding, Watch</p>
								</div>
							</div>
						</div>
						<!-- portfolio-card -->
						<div class="portfolio-card isotope-item photo">
							<div class="portfolio-card-body">
								<div class="portfolio-card-header">
									<img src="resources/images/portfolio/02.jpg" alt="">
								</div>
								<div class="portfolio-card-footer">
									<a class="full-screen" href="resources/images/portfolio/02.jpg" data-fancybox="portfolio" data-caption="Waiting window"><i class="ti-fullscreen"></i></a>
									<h6 class="info-title"><a href="#" title="">Waiting window</a></h6>
									<p>Photography</p>
								</div>
							</div>
						</div>
						<!-- portfolio-card -->
						<div class="portfolio-card isotope-item digital marketing">
							<div class="portfolio-card-body">
								<div class="portfolio-card-header">
									<img src="resources/images/portfolio/03.jpg" alt="">
								</div>
								<div class="portfolio-card-footer">
									<a class="full-screen" href="resources/images/portfolio/03.jpg" data-fancybox="portfolio" data-caption="Green Book"><i class="ti-fullscreen"></i></a>
									<h6 class="info-title"><a href="#" title="">Green Book</a></h6>
									<p>Graphic</p>
								</div>
							</div>
						</div>
						<!-- portfolio-card -->
						<div class="portfolio-card isotope-item digital">
							<div class="portfolio-card-body">
								<div class="portfolio-card-header">
									<img src="resources/images/portfolio/04.jpg" alt="">
								</div>
								<div class="portfolio-card-footer">
									<a class="full-screen" href="resources/images/portfolio/04.jpg" data-fancybox="portfolio" data-caption="Reebok Sneakers"><i class="ti-fullscreen"></i></a>
									<h6 class="info-title"><a href="#" title="">Reebok Sneakers</a></h6>
									<p>Sport, Running</p>
								</div>
							</div>
						</div>
						<!-- portfolio-card -->
						<div class="portfolio-card isotope-item photo">
							<div class="portfolio-card-body">
								<div class="portfolio-card-header">
									<img src="resources/images/portfolio/05.jpg" alt="">
								</div>
								<div class="portfolio-card-footer">
									<a class="full-screen" href="resources/images/portfolio/05.jpg" data-fancybox="portfolio" data-caption="Parking garage"><i class="ti-fullscreen"></i></a>
									<h6 class="info-title"><a href="#" title="">Parking garage</a></h6>
									<p>Car, Building</p>
								</div>
							</div>
						</div>
						<!-- portfolio-card -->
						<div class="portfolio-card isotope-item digital marketing photo">
							<div class="portfolio-card-body">
								<div class="portfolio-card-header">
									<img src="resources/images/portfolio/06.jpg" alt="">
								</div>
								<div class="portfolio-card-footer">
									<a class="full-screen" href="resources/images/portfolio/06.jpg" data-fancybox="portfolio" data-caption="The Pink Chair"><i class="ti-fullscreen"></i></a>
									<h6 class="info-title"><a href="#" title="">The Pink Chair </a></h6>
									<p>Workspace</p>
								</div>
							</div>
						</div>
					</div>
					<!-- portfolio wrap -->
				</div>
			</div>
		</div>
	</section>
	<!-- =======================
	portfolio -->

	<!-- =======================
	package -->
	<section class="package pt-5">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<div class="title text-left">
						<span class="pre-title">The service packages</span>
						<h2>Choose affordable and 100% premium package</h2>
						<p>We are an insight and behaviour driven creative marketing agency. A Full package Digital Creative Agency Specializing in: Video Production, Web Design, Branding, Brand Strategy, Content Marketing and Aerial Cinematography. </p>
						<p>Our passion for customer excellence is just one reason why we are the market leader. We've always worked very hard to give our customers the best experience in dealing with our company.</p>
					</div>
					<!-- price tab nav -->
					<ul class="nav nav-tabs tab-grad">
						<li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#price-1-tab"> Enterprise </a> </li>
						<li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#price-2-tab"> Business </a> </li>
					</ul>
					<!-- price tab end-->
				</div>
				<div class="col-md-5 mt-4 mt-md-0">
					<div class="tab-content p-0">
						<!-- tab 1 (price 1) -->
						<div class="tab-pane show active" id="price-1-tab">
							<div class="card">
								<div class="card-header text-white bg-grad">
									<div class="float-left">
										<h2 class="text-white font-weight-bold mb-0 display-4"><span>$</span>149.99</h2>
										<div>Enterprise Plan</div>
									</div>
								</div>
								<div class="card-body bg-light ">
									<ul class="list-group list-group-borderless my-3">
										<li class="list-group-item"><i class="fa fa-check"></i>Up to 10 users monthly</li>
										<li class="list-group-item"><i class="fa fa-check"></i>Unlimited updates</li>
										<li class="list-group-item"><i class="fa fa-check"></i>Free host & domain included</li>
										<li class="list-group-item"><i class="fa fa-check"></i>24/7 dedicated Support </li>
										<li class="list-group-item"><i class="fa fa-check"></i>Unlimited Storage usage</li>
									</ul>
									<a class="btn btn-grad" href="#!">Get it now!</a>
									<div class="offer">-40%</div>
								</div>
							</div>
						</div>
						<!-- tab 2 (price 2) -->
						<div class="tab-pane" id="price-2-tab">
							<div class="card">
								<div class="card-header text-white bg-grad">
									<div class="float-left">
										<h2 class="text-white font-weight-bold mb-0 display-4"><span>$</span>129.99</h2>
										<div>Business Plan</div>
									</div>
								</div>
								<div class="card-body bg-light ">
									<ul class="list-group list-group-borderless my-3">
										<li class="list-group-item"><i class="fa fa-check"></i>Up to 5 users monthly</li>
										<li class="list-group-item"><i class="fa fa-check"></i>Unlimited updates</li>
										<li class="list-group-item"><i class="fa fa-check"></i>20% off on hosting & domain</li>
										<li class="list-group-item"><i class="fa fa-check"></i>24/7 dedicated Support </li>
										<li class="list-group-item"><i class="fa fa-check"></i>500GB Storage usage</li>
									</ul>
									<a class="btn btn-grad" href="#!">Get it now!</a>
									<div class="offer">-25%</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================
	package -->

	<!-- =======================
	client -->
	<section class="client pt-0 ">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="owl-carousel owl-grab arrow-hover arrow-gray" data-margin="80" data-arrow="true" data-dots="false" data-items-xl="6" data-items-lg="5" data-items-md="4" data-items-sm="3" data-items-xs="2">
						<div class="item"><img src="resources/images/clients/01.png" alt=""></div>
						<div class="item"><img src="resources/images/clients/02.png" alt=""></div>
						<div class="item"><img src="resources/images/clients/03.png" alt=""></div>
						<div class="item"><img src="resources/images/clients/04.png" alt=""></div>
						<div class="item"><img src="resources/images/clients/05.png" alt=""></div>
						<div class="item"><img src="resources/images/clients/06.png" alt=""></div>
						<div class="item"><img src="resources/images/clients/07.png" alt=""></div>
						<div class="item"><img src="resources/images/clients/08.png" alt=""></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================
	client -->

	<!-- =======================
	Testimonials -->
	<section class="bg-light">
		<div class="container">
			<div class="owl-carousel owl-grab arrow-hover dots-dark" data-arrow="false" data-dots="true" data-items="1">
				<!-- item 1 -->
				<div class="item mb-3">
					<div class="row">
						<div class="col-md-10 col-lg-6 mx-md-auto align-self-center">
							<div class="text-left">
								<h2>MacoInfo saved $1M with Wizixo</h2>
								<p class="mb-0 lead">"I am really satisfied with my service. Thanks to service, we've just launched our 5th website! You guys rock!"</p>
								<div class="d-flex mt-3">
									<h6 class="align-self-start mr-3"><img class="rounded-circle" src="resources/images/thumbnails/avatar-01.jpg" alt="avatar"></h6>
									<div class="align-self-center">
										<h5 class="mb-2">Nix Maxwell</h5>
										<p>CEO and co-founder, MacoInfo</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 col-lg-6 mx-md-auto align-self-center mt-4 mt-lg-0">
							<img class="rounded" src="resources/images/bg/small/02.jpg" alt="">
							<div class="position-absolute left-0 bottom-0 ml-4 ml-md-n2 mb-3">
								<a class="btn btn-grad" data-fancybox href="https://youtu.be/n_Cn8eFo7u8"> <i class="fa fa-play text-white"></i>Play Video </a>
							</div>
						</div>
					</div>
				</div>
				<!-- item 2 -->
				<div class="item mb-3">
					<div class="row">
						<div class="col-md-10 col-lg-6 mx-md-auto align-self-center">
							<div class="text-left">
								<h2>BerryDesign Start new business with us!</h2>
								<p class="mb-0 lead">"You guys rock! Buy this now. I made back the purchase price in just 48 hours!"</p>
								<div class="d-flex mt-3">
									<h6 class="align-self-start mr-3"><img class="rounded-circle" src="resources/images/thumbnails/avatar-03.jpg" alt="avatar"></h6>
									<div class="align-self-center">
										<h5 class="mb-2">Maria Smith</h5>
										<p>CEO and Founder, BerryDesign</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 col-lg-6 mx-md-auto align-self-center mt-4 mt-lg-0">
							<img class="rounded" src="resources/images/bg/small/01.jpg" alt="">
							<div class="position-absolute left-0 bottom-0 ml-4 ml-md-n2 mb-3">
								<a class="btn btn-grad" data-fancybox href="https://youtu.be/n_Cn8eFo7u8"> <i class="fa fa-play text-white"></i>Play Video </a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================
	Testimonials -->

	<!-- =======================
	blog -->
	<section class="blog pb-0">
		<div class="container">
			<div class="row">
				<div class="col-12 col-lg-8 mx-auto">
					<div class="title text-center">
						<span class="pre-title">Check out some of our latest blog post.</span>
						<h2>Read our news, comments & thoughts</h2>
						<p class="mb-0">Our blog shows our hard work and devotion to helping our clients succeed. Don't just take our word for it. Check out the latest work.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="owl-carousel arrow-dark arrow-hover" data-dots="false" data-items-xl="3" data-items-lg="3" data-items-md="2" data-items-sm="2" data-items-xs="1">
						<!-- post -->
						<div class="item">
							<div class="post">
								<div class="post-info">
									<span class="post-tag bg-grad text-white mb-3 clearfix"><a href="#!">Trend</a></span>
									<div class="post-author"><a href="#!"> By Allen C</a></div>,
									<div class="post-time"><a href="#!">2 Hours ago</a></div>
									<a class="post-title" href="#!">The Stories Behind those Iconic Blogs, magazines and news</a>
									<p class="mb-0">Two assure Edward whence the was. Who worthy yet ten boy denote wonder that!</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="post">
								<div class="post-info">
									<span class="post-tag bg-grad text-white mb-3 clearfix"><a href="#!">Craft</a></span>
									<div class="post-author"><a href="#!"> By Mark C</a></div>,
									<div class="post-time"><a href="#!">19 Hours ago</a></div>
									<a class="post-title" href="#!">Right my front it wound cause fully am sorry</a>
									<p class="mb-0">Weeks views her sight old tears sorry suspected its concealed put furnished</p>
								</div>
							</div>
						</div>
						<!-- post -->
						<div class="item">
							<div class="post">
								<div class="post-info">
									<span class="post-tag bg-grad text-white mb-3 clearfix"><a href="#!">Business</a></span>
									<div class="post-author"><a href="#!"> By Stephen C</a></div>,
									<div class="post-time"><a href="#!">1 day ago</a></div>
									<a class="post-title" href="#!">Months had too ham cousin remove far spirit</a>
									<p class="mb-0">Two assure Edward whence the was. Who worthy yet ten boy denote wonder that!</p>
								</div>
							</div>
						</div>
						<!-- post -->
						<div class="item">
							<div class="post">
								<div class="post-info">
									<span class="post-tag bg-grad text-white mb-3 clearfix"><a href="#!">Creative</a></span>
									<div class="post-author"><a href="#!"> By Smith C</a></div>,
									<div class="post-time"><a href="#!">2 Days ago</a></div>
									<a class="post-title" href="#!">7 Great Lessons You Can Learn From Business</a>
									<p class="mb-0">Ample order up in of in ready timed blind had now those ought set often which</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================
	blog -->

	<!-- =======================
	call to action-->
	<section class="p5-4">
		<div class="container">
			<div class="d-block d-md-flex bg-grad p-4 p-sm-5 all-text-white border-radius-3 pattern-overlay-3">
				<div class="align-self-center text-center text-md-left">
					<h3>Crafting visually stunning memorable experiences for web.</h3>
					<p class="m-0">We provide digital transformation solutions, enabling companies to make their visions reality.</p>
				</div>
				<div class="mt-3 mt-md-0 text-center text-md-right ml-md-auto align-self-center">
					<button class="btn btn-white mb-0">Learn more!</button>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================
	call to action-->

	<!-- =======================
	footer  -->
	<footer>
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	</footer>
	<!-- =======================
	footer  -->

	<div> <a href="#" class="back-top btn btn-grad"><i class="ti-angle-up"></i></a> </div>

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