<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/include/header.jspf"%>
<title>에테르 | 로그인</title>
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



<!-- 카카오 api -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<!-- 카카오 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('e9274fef8abaed2f8a1bb4e96e551605'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
 	console.log('============================');
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response)
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      }, 
    })
  }
//카카오로그아웃  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  
</script>


</head>
<body onload="document.f.id.focus();">
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
				</div>
			</div>

		</div>
	</nav>
	<!-- Close Header -->



	<br>
	<br>
	<div class="container text-center">
		<h1>로그인 페이지</h1>
		<br>
	</div>
	<c:url value="/login" var="loginUrl" />
	<div class="container col-md-4">
		<form:form name="f" class="px-4 py-3" action="${loginUrl}"
			method="post">
			<c:if test="${param.error != null}">
				<p class="text-danger font-weight-bold">아이디와 비밀번호가 잘못되었습니다.</p>
			</c:if>

			<c:if test="${param.logout != null}">
				<p>로그아웃 하였습니다.</p>
			</c:if>

			<div class="form-group">
				<label for="member_id">ID</label> <input type="text"
					class="form-control" name="member_id" placeholder="아이디를 입력하세요">
			</div>
			<div class="form-group">
				<label for="member_password">Password</label> <input type="password"
					class="form-control" name="member_password"
					placeholder="비밀번호를 입력하세요">
			</div>
			<div class="form-check">
				<label class="form-check-label"> <input type="checkbox"
					class="form-check-input"> Remember me
				</label>
			</div>
			<!-- csrf는 security는 form:form으로 넘김. 기존 form 으로만 할 떄는 csrf 밑에 주석처리한 코드 이용 -->
			<%-- <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>  --%>
			<button type="submit" class="btn btn-outline-success">로그인</button>
			<br />
			<br />
			
	<!-- 카카오 api -->
  		<ul style="list-style: none;">
				<li onclick="kakaoLogin();"><a href="javascript:void(0)">
						<span class="btn btn-warning">카카오 로그인</span>
				</a></li>
				<li onclick="kakaoLogout();"><a href="javascript:void(0)">
						<span class="btn btn-outline-warning">카카오 로그아웃</span>
				</a></li>
			</ul>
			


			
		</form:form>
		<div class="dropdown-divider"></div>
		<a class="dropdown-item" href="<c:url value="/add/addForm" />">회원가입</a>
		<a class="dropdown-item" href="#">비밀번호 찾기</a>
	</div>
	<br />
	<br />

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
					<h2 class="h2 text-light border-bottom pb-3 border-light">Further
						Info</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><a class="text-decoration-none" href="#">Home</a></li>
						<li><a class="text-decoration-none" href="#">About Us</a></li>
						<li><a class="text-decoration-none" href="#">Shop
								Locations</a></li>
						<li><a class="text-decoration-none" href="#">FAQs</a></li>
						<li><a class="text-decoration-none" href="#">Contact</a></li>
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