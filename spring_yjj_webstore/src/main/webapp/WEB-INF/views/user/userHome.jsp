<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>에테르 | 명품 쇼핑몰</title>
<!-- custom css file link  -->
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/uiux/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/uiux/img/favicon.ico">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/uiux/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/uiux/css/templatemo.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/uiux/css/custom.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/uiux/css/fontawesome.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/uiux/css/slick.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/uiux/css/slick-theme.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/uiux/css/slick-theme.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/uiux/css/templatemo.min.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/uiux/css/fontawesome.min.css">
</head>

<body>
	<!-- Start Top Nav -->
	<nav
		class="navbar navbar-expand-sm bg-dark navbar-light d-none d-sm-block"
		id="templatemo_nav_top" style="min-height: 20px;">
		<div class="container text-light">
			<div class="w-100 d-flex justify-content-between"></div>
		</div>
	</nav>
	<!-- Close Top Nav -->


	<!-- Header -->
	<nav class="navbar navbar-expand-lg navbar-light shadow">
		<div
			class="container d-flex justify-content-between align-items-center">

			<a class="navbar-brand text-success logo h1 align-self-center"
				style="font-family: 'Cinzel', serif;"
				href="${pageContext.request.contextPath}/">
				<link rel="preconnect" href="https://fonts.googleapis.com">
				<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
				<link
					href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&display=swap"
					rel="stylesheet"> Éther
			</a>

			<button class="navbar-toggler border-0" type="button"
				data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div
				class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between"
				id="templatemo_main_nav">
				<div class="flex-fill">
					<ul
						class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/">공지</a></li>
						<li class="nav-item"><a class="nav-link" href="about.html">가방</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="shop.html">시계</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="contact.html">주얼리</a>
						</li>
					</ul>
				</div>
				<div class="navbar align-self-center d-flex">
					<div
						class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
						<div class="input-group">
							<input type="text" class="form-control" id="inputMobileSearch"
								placeholder="Search ...">
							<div class="input-group-text">
								<i class="fa fa-fw fa-search"></i>
							</div>
						</div>
					</div>
					<a class="nav-icon d-none d-lg-inline" href="#"
						data-bs-toggle="modal" data-bs-target="#templatemo_search"> <i
						class="fa fa-fw fa-search text-dark mr-2"></i>
					</a> <a class="nav-icon position-relative text-decoration-none"
						href="#"> <i
						class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i> <span
						class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
					</a>
					<sec:authorize access="isAnonymous()">
						<a class="nav-icon position-relative text-decoration-none"
							href="<c:url value="/login/loginForm" />"> <i
							class="fa fa-fw fa-user text-dark mr-3"> </i>
						</a>
					</sec:authorize>

					<sec:authorize access="isAuthenticated()">
						<a class="nav-icon position-relative text-decoration-none"
							href="<c:url value="/logout" />"> <i
							class="fa fa-fw fa-user text-dark mr-3"> </i>
						</a>
						<!-- principal이란 로그인 세션값을 가져온다. -->
						<!-- principal.가.나  에서 가 < 는 Details에서 userVO이며 나 < 는 닉네임  -->
						<h1>
							<sec:authentication property="principal.userVO.member_name" />
							님 환영합니다.
						</h1>
						<p>
							<a href="<c:url value="" />">마이페이지</a>
						</p>
						<p>
							<a href="<c:url value="" />">주문현황</a>
						</p>
						<form:form action="${pageContext.request.contextPath}/logout"
							method="POST">
							<input type="submit" value="로그아웃" class="btn" />
						</form:form>
					</sec:authorize>




				</div>
			</div>

		</div>
	</nav>
	<!-- Close Header -->

	<!-- Modal -->
	<div class="modal fade bg-white" id="templatemo_search" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="w-100 pt-1 mb-5 text-right">
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<form action="" method="get"
				class="modal-content modal-body border-0 p-0">
				<div class="input-group mb-2">
					<input type="text" class="form-control" id="inputModalSearch"
						name="q" placeholder="Search ...">
					<button type="submit"
						class="input-group-text bg-success text-light">
						<i class="fa fa-fw fa-search text-white"></i>
					</button>
				</div>
			</form>
		</div>
	</div>


	<!-- Start Banner Hero -->
	<div id="template-mo-zay-hero-carousel" class="carousel slide"
		data-bs-ride="carousel">
		<ol class="carousel-indicators">

			<li data-bs-target="#template-mo-zay-hero-carousel"
				data-bs-slide-to="0" class="active"></li>
			<li data-bs-target="#template-mo-zay-hero-carousel"
				data-bs-slide-to="1"></li>
			<li data-bs-target="#template-mo-zay-hero-carousel"
				data-bs-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<div class="container">
					<div class="row p-5">
						<div class="mx-auto col-md-8 col-lg-6 order-lg-last">
							<img class="img-fluid"
								src="${pageContext.request.contextPath}/resources/uiux/img/banner_img_01.jpg"
								alt="">
						</div>
						<div class="col-lg-6 mb-0 d-flex align-items-center">
							<div class="text-align-left align-self-center">

								<h1 class="h1 text-success"
									style="font-family: 'Cinzel', serif;">
									<link rel="preconnect" href="https://fonts.googleapis.com">
									<link rel="preconnect" href="https://fonts.gstatic.com"
										crossorigin>
									<link
										href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&family=Gowun+Batang:wght@700&display=swap"
										rel="stylesheet">
									<b>영원한 </b> 시그니쳐
								</h1>
								<h3 class="h2" style="font-family: 'Cinzel', serif;">
									<link rel="preconnect" href="https://fonts.googleapis.com">
									<link rel="preconnect" href="https://fonts.gstatic.com"
										crossorigin>
									<link
										href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&family=Gowun+Batang:wght@400;700&display=swap"
										rel="stylesheet">
									시대를 초월한 우아함
								</h3>
								<p>소중한 유산으로 이어져 온 일상의 친구. "매우 시크하고 우아하며 여성스러운 백입니다. 이 백을
									착용하면 힘들이지 않고도, 강력한 힘을 느낄 수 있습니다." 레더와 함께 엮은 메탈체인. 가브리엘 샤넬이 사랑했던
									승마 세계와의 강렬한 연결.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="container">
					<div class="row p-5">
						<div class="mx-auto col-md-8 col-lg-6 order-lg-last">
							<img class="img-fluid"
								src="${pageContext.request.contextPath}/resources/uiux/img/banner_img_02.jpg"
								alt="">
						</div>
						<div class="col-lg-6 mb-0 d-flex align-items-center">
							<div class="text-align-left">
								<h1 class="h1" style="font-family: 'Cinzel', serif;">
									<link rel="preconnect" href="https://fonts.googleapis.com">
									<link rel="preconnect" href="https://fonts.gstatic.com"
										crossorigin>
									<link
										href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&family=Gowun+Batang:wght@700&display=swap"
										rel="stylesheet">
									DATEJUST
								</h1>
								<h3 class="h2" style="font-family: 'Cinzel', serif;">
									<link rel="preconnect" href="https://fonts.googleapis.com">
									<link rel="preconnect" href="https://fonts.gstatic.com"
										crossorigin>
									<link
										href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&family=Gowun+Batang:wght@400;700&display=swap"
										rel="stylesheet">
									유행을 뛰어넘는 스타일
								</h3>
								<p>
									롤렉스 고유의 오이스터 케이스와 18캐럿 골드 플루티드 베젤, 날짜 표시창 위에 장착된 사이클롭스 렌즈 그리고
									데이트저스트를 위해 특별히 제작된 5열 링크의 쥬빌리 브레슬릿은 모두 <strong>롤렉스를 상징</strong>하는
									고유의 클래식한 디자인 요소입니다.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="container">
					<div class="row p-5">
						<div class="mx-auto col-md-8 col-lg-6 order-lg-last">
							<img class="img-fluid"
								src="${pageContext.request.contextPath}/resources/uiux/img/banner_img_03.jpg"
								alt="">
						</div>
						<div class="col-lg-6 mb-0 d-flex align-items-center">
							<div class="text-align-left">
								<h1 class="h1" style="font-family: 'Cinzel', serif;">
									<link rel="preconnect" href="https://fonts.googleapis.com">
									<link rel="preconnect" href="https://fonts.gstatic.com"
										crossorigin>
									<link
										href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&family=Gowun+Batang:wght@700&display=swap"
										rel="stylesheet">
									유산을 남기다
								</h1>
								<h3 class="h2" style="font-family: 'Cinzel', serif;">
									<link rel="preconnect" href="https://fonts.googleapis.com">
									<link rel="preconnect" href="https://fonts.gstatic.com"
										crossorigin>
									<link
										href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&family=Gowun+Batang:wght@400;700&display=swap"
										rel="stylesheet">
									아이코닉한 디자인
								</h3>
								<p>180년이 넘는 시간 동안 세심하고 정교한 공정을 통해 하이 주얼리를 예술 작품으로 탈바꿈
									시켜왔습니다. “주얼리와 예술로 장식한 다이아몬드, 그것이 사랑입니다.” 정교한 장인정신의 손길을 거쳐 혁신적인
									디자인으로 탄생한 탁원한 품질의 까르띠에 주얼리를 만나보세요.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev text-decoration-none w-auto ps-3"
			href="#template-mo-zay-hero-carousel" role="button"
			data-bs-slide="prev"> <i class="fas fa-chevron-left"></i>
		</a> <a class="carousel-control-next text-decoration-none w-auto pe-3"
			href="#template-mo-zay-hero-carousel" role="button"
			data-bs-slide="next"> <i class="fas fa-chevron-right"></i>
		</a>
	</div>
	<!-- End Banner Hero -->


	<!-- Start Categories of New Arrivals -->
	<section class="container py-5">
		<div class="row text-center pt-3">
			<div class="col-lg-6 m-auto">
				<h1 class="h1">New Arrivals</h1>
				<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa
					qui officia deserunt mollit anim id est laborum.</p>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-md-4 p-5 mt-3">
				<a href="#"><img
					src="${pageContext.request.contextPath}/resources/uiux/img/category_img_01.jpg"
					class="rounded-circle img-fluid border"></a>
				<h5 class="text-center mt-3 mb-3">Handbags</h5>
				<p class="text-center">
					<a class="btn btn-success">Go Shop</a>
				</p>
			</div>
			<div class="col-12 col-md-4 p-5 mt-3">
				<a href="#"><img
					src="${pageContext.request.contextPath}/resources/uiux/img/category_img_02.jpg"
					class="rounded-circle img-fluid border"></a>
				<h2 class="h5 text-center mt-3 mb-3">Watches</h2>
				<p class="text-center">
					<a class="btn btn-success">Go Shop</a>
				</p>
			</div>
			<div class="col-12 col-md-4 p-5 mt-3">
				<a href="#"><img
					src="${pageContext.request.contextPath}/resources/uiux/img/category_img_03.jpg"
					class="rounded-circle img-fluid border"></a>
				<h2 class="h5 text-center mt-3 mb-3">Jewellery</h2>
				<p class="text-center">
					<a class="btn btn-success">Go Shop</a>
				</p>
			</div>
		</div>
	</section>
	<!-- End Categories of New Arrivals -->


	<!-- Start Popular Products -->
	<section class="bg-light">
		<div class="container py-5">
			<div class="row text-center py-3">
				<div class="col-lg-6 m-auto">
					<h1 class="h1">Popular Products</h1>
					<p>Reprehenderit in voluptate velit esse cillum dolore eu
						fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
						proident.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-12 col-md-4 mb-4">
					<div class="card h-100">
						<a href="shop-single.html"> <img
							src="${pageContext.request.contextPath}/resources/uiux/img/feature_prod_01.jpg"
							class="card-img-top" alt="...">
						</a>
						<div class="card-body">
							<ul class="list-unstyled d-flex justify-content-between">
								<li><i class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-muted fa fa-star"></i> <i
									class="text-muted fa fa-star"></i></li>
								<li class="text-muted text-right">$240.00</li>
							</ul>
							<a href="shop-single.html"
								class="h2 text-decoration-none text-dark">Gym Weight</a>
							<p class="card-text">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Sunt in culpa qui officia deserunt.</p>
							<p class="text-muted">Reviews (24)</p>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-4 mb-4">
					<div class="card h-100">
						<a href="shop-single.html"> <img
							src="${pageContext.request.contextPath}/resources/uiux/img/feature_prod_02.jpg"
							class="card-img-top" alt="...">
						</a>
						<div class="card-body">
							<ul class="list-unstyled d-flex justify-content-between">
								<li><i class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-muted fa fa-star"></i> <i
									class="text-muted fa fa-star"></i></li>
								<li class="text-muted text-right">$480.00</li>
							</ul>
							<a href="shop-single.html"
								class="h2 text-decoration-none text-dark">Cloud Nike Shoes</a>
							<p class="card-text">Aenean gravida dignissim finibus. Nullam
								ipsum diam, posuere vitae pharetra sed, commodo ullamcorper.</p>
							<p class="text-muted">Reviews (48)</p>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-4 mb-4">
					<div class="card h-100">
						<a href="shop-single.html"> <img
							src="${pageContext.request.contextPath}/resources/uiux/img/feature_prod_03.jpg"
							class="card-img-top" alt="...">
						</a>
						<div class="card-body">
							<ul class="list-unstyled d-flex justify-content-between">
								<li><i class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i></li>
								<li class="text-muted text-right">$360.00</li>
							</ul>
							<a href="shop-single.html"
								class="h2 text-decoration-none text-dark">Summer Addides
								Shoes</a>
							<p class="card-text">Curabitur ac mi sit amet diam luctus
								porta. Phasellus pulvinar sagittis diam, et scelerisque ipsum
								lobortis nec.</p>
							<p class="text-muted">Reviews (74)</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Popular Products -->


	<!-- Start Footer -->
	<footer class="bg-dark" id="tempaltemo_footer">
		<div class="container">
			<div class="row">

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-success border-bottom pb-3 border-light logo"
						style="font-family: 'Cinzel', serif;">
						<link rel="preconnect" href="https://fonts.googleapis.com">
						<link rel="preconnect" href="https://fonts.gstatic.com"
							crossorigin>
						<link
							href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&display=swap"
							rel="stylesheet">
						Éther Boutique
					</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><i class="fas fa-map-marker-alt fa-fw"></i> 123 Gasan
							digital 2-ro Seoul</li>
						<li><i class="fa fa-phone fa-fw"></i> <a
							class="text-decoration-none" href="tel:010-020-0340">010-123-4567</a>
						</li>
						<li><i class="fa fa-envelope fa-fw"></i> <a
							class="text-decoration-none" href="mailto:info@company.com">info@company.com</a>
						</li>
					</ul>
				</div>

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-light border-bottom pb-3 border-light">Products</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><a class="text-decoration-none" href="#">Luxury</a></li>
						<li><a class="text-decoration-none" href="#">Sport Wear</a></li>
						<li><a class="text-decoration-none" href="#">Men's Shoes</a></li>
						<li><a class="text-decoration-none" href="#">Women's
								Shoes</a></li>
						<li><a class="text-decoration-none" href="#">Popular
								Dress</a></li>
						<li><a class="text-decoration-none" href="#">Gym
								Accessories</a></li>
						<li><a class="text-decoration-none" href="#">Sport Shoes</a></li>
					</ul>
				</div>

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-light border-bottom pb-3 border-light">에테르 부띠끄</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><a class="text-decoration-none" href="#">회사소개</a></li>
						<li><a class="text-decoration-none" href="#">FAQs</a></li>
						<li><a class="text-decoration-none" href="#">고객센터</a></li>
					</ul>
				</div>

			</div>

			<div class="row text-light mb-4">
				<div class="col-12 mb-3">
					<div class="w-100 my-3 border-top border-light"></div>
				</div>
				<div class="col-auto me-auto">
					<ul class="list-inline text-left footer-icons">
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="http://facebook.com/"><i
								class="fab fa-facebook-f fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://www.instagram.com/"><i
								class="fab fa-instagram fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://twitter.com/"><i
								class="fab fa-twitter fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://www.linkedin.com/"><i
								class="fab fa-linkedin fa-lg fa-fw"></i></a>
						</li>
					</ul>
				</div>
				<div class="col-auto">
					<label class="sr-only" for="subscribeEmail">Email address</label>
					<div class="input-group mb-2">
						<input type="text" class="form-control bg-dark border-light"
							id="subscribeEmail" placeholder="Email address">
						<div class="input-group-text btn-success text-light">Subscribe</div>
					</div>
				</div>
			</div>
		</div>

		<div class="w-100 bg-black py-3">
			<div class="container">
				<div class="row pt-2">
					<div class="col-12">
						<p class="text-left text-light">
							Copyright &copy; 2021 Company Name | Designed by <a
								rel="sponsored" href="https://templatemo.com" target="_blank">TemplateMo</a>
						</p>
					</div>
				</div>
			</div>
		</div>

	</footer>
	<!-- End Footer -->

	<!-- Start Script -->
	<script
		src="${pageContext.request.contextPath}/resources/uiux/js/jquery-1.11.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/uiux/js/jquery-migrate-1.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/uiux/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/uiux/js/templatemo.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/uiux/js/custom.js"></script>
	<!-- End Script -->
</body>

</html>

