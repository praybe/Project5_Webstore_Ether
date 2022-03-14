<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>에테르 | 회원가입</title>
<!-- custom css file link  -->
    <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/uiux/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/uiux/img/favicon.ico">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/uiux/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/uiux/css/templatemo.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/uiux/css/custom.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/uiux/css/fontawesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/uiux/css/slick.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/uiux/css/slick-theme.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/uiux/css/slick-theme.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/uiux/css/templatemo.min.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/uiux/css/fontawesome.min.css">


<!-- 공백 방지 -->
<script type="text/javascript">
window.onload = () => {
    
    let sbmBtn = document.querySelector("#sbmBtn"); 

    sbmBtn.onclick = () =>{
        if(document.getElementById("MEMBER_ID").value == ""){
            alert("아이디를 입력하세요"); //유효성 검사
        }else if(document.getElementById("MEMBER_PASSWORD").value == ""){
            alert("비밀번호를 입력하세요");
        }else if(document.getElementById("MEMBER_NAME").value == ""){
            alert("빈칸을 채우세요");
        }else if(document.getElementById("MEMBER_CALL").value == ""){
            alert("빈칸을 채우세요");
        }else if(document.getElementById("MEMBER_BIRTH").value == ""){
            alert("빈칸을 채우세요");
        }else if(document.getElementById("MEMBER_GENDER").value == ""){
            alert("성별을 고르세요");
        }else if(document.getElementById("MEMBER_ADDRESS").value == ""){
            alert("빈칸을 채우세요");
        }  else{
            //모든 항목이 채워졌을 경우
            alert("회원가입 완료");
            document.getElementById("write").submit();
        }

    };

    };
        
 </script>

</head>

<body>
<!-- Start Top Nav -->
    <nav class="navbar navbar-expand-sm bg-dark navbar-light d-none d-sm-block" id="templatemo_nav_top" style="min-height: 20px;">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
  
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->


    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" 
            style="font-family:'Cinzel', serif;" href="${pageContext.request.contextPath}/">
            <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&display=swap" rel="stylesheet">
                Éther
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/">공지</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.html">가방</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="shop.html">시계</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">주얼리</a>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
                    </a>
                    <sec:authorize access="isAnonymous()">
                    	<a class="nav-icon position-relative text-decoration-none" href="<c:url value="/login/loginForm" />">
                        	<i class="fa fa-fw fa-user text-dark mr-3">
                        	</i>
                    	</a>
                    </sec:authorize>
                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->

<br><br>
<div class="container text-center">
<h1>회원가입</h1><br>
 </div>
<!-- 
MEMBER_ID       NOT NULL VARCHAR2(20)  
MEMBER_PASSWORD NOT NULL VARCHAR2(20) /// 크기200
MEMBER_NAME     NOT NULL VARCHAR2(20)  
MEMBER_CALL     NOT NULL NUMBER        
MEMBER_BIRTH    NOT NULL NUMBER        
MEMBER_GENDER   NOT NULL VARCHAR2(10)  
MEMBER_ADDRESS  NOT NULL VARCHAR2(100)  -->

<c:url value="/add/addUser" var="addUserUrl" />
<section class="container col-md-4">
<!-- ${addUserUrl} => /yjj/add/addUser -->
<form:form name="frmMember" action="${addUserUrl}" method="POST">
    <div class="form-group">
        <label class="control-label" for="member_id">아이디</label>
        <input type="text"  name="member_id" />
    </div>

    	<div class="form-group">
				<label for="member_password">비밀번호</label>
				 <input type="password"
					name="member_password">
			</div>
    <div class="form-group">
        <label for="member_name">이름</label>
        <input type="text" name="member_name"/>
    </div>
        	<div class="form-group">
				<label for="member_call">전화번호</label>
				 <input type="number"
					name="member_call"
					placeholder="전화번호를 입력하세요">
			</div>

                	<div class="form-group">
				<label for="member_birth">생년월일</label>
				 <input type="number"
					name="member_birth"
					placeholder="생년월일 6글자 입력">
			</div>
    <div class="form-group">
        <label for="member_gender">성별</label>
        <input type="radio" name="member_gender" value="w">여자
        <input type="radio" name="member_gender" value="m">남자
    </div>
       <div class="form-group">
        <label for="member_address">주소</label>
        <input type="text" name="member_address"/>
    </div>
    <button type="submit" class="btn btn-success">가입하기</button>
</form:form>
  </section>
	  <br/><br/>


<!-- Start Footer -->
    <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row">

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-success border-bottom pb-3 border-light logo"
                    style="font-family:'Cinzel', serif;">
            <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&display=swap" rel="stylesheet">
                    Éther Boutique </h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li>
                            <i class="fas fa-map-marker-alt fa-fw"></i>
                            123 Gasan digital 2-ro Seoul
                        </li>
                        <li>
                            <i class="fa fa-phone fa-fw"></i>
                            <a class="text-decoration-none" href="tel:010-020-0340">010-123-4567</a>
                        </li>
                        <li>
                            <i class="fa fa-envelope fa-fw"></i>
                            <a class="text-decoration-none" href="mailto:info@company.com">info@company.com</a>
                        </li>
                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">Products</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="#">Luxury</a></li>
                        <li><a class="text-decoration-none" href="#">Sport Wear</a></li>
                        <li><a class="text-decoration-none" href="#">Men's Shoes</a></li>
                        <li><a class="text-decoration-none" href="#">Women's Shoes</a></li>
                        <li><a class="text-decoration-none" href="#">Popular Dress</a></li>
                        <li><a class="text-decoration-none" href="#">Gym Accessories</a></li>
                        <li><a class="text-decoration-none" href="#">Sport Shoes</a></li>
                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">Further Info</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="#">Home</a></li>
                        <li><a class="text-decoration-none" href="#">About Us</a></li>
                        <li><a class="text-decoration-none" href="#">Shop Locations</a></li>
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
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="http://facebook.com/"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.instagram.com/"><i class="fab fa-instagram fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://twitter.com/"><i class="fab fa-twitter fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.linkedin.com/"><i class="fab fa-linkedin fa-lg fa-fw"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-auto">
                    <label class="sr-only" for="subscribeEmail">Email address</label>
                    <div class="input-group mb-2">
                        <input type="text" class="form-control bg-dark border-light" id="subscribeEmail" placeholder="Email address">
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
                            Copyright &copy; 2021 Company Name 
                            | Designed by <a rel="sponsored" href="https://templatemo.com" target="_blank">TemplateMo</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!-- End Footer -->

    <!-- Start Script -->
    <script src="${pageContext.request.contextPath}/resources/uiux/js/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/uiux/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/uiux/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/uiux/js/templatemo.js"></script>
    <script src="${pageContext.request.contextPath}/resources/uiux/js/custom.js"></script>
    <!-- End Script -->
</body>

</html>
