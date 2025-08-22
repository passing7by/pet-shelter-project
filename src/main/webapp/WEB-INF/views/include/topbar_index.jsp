<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!-- NAVBAR
    ================================================= -->
<div class="main-navigation fixed-top site-header" id="mainmenu-area">
	<nav class="navbar navbar-expand-lg ">
		<div class="container align-items-center">
			<a class="navbar-brand" href="/">
				<h2 class="mb-0">희망보호소</h2>
			</a>
			<!-- Toggler -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarmain" aria-controls="navbarmain"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="ti-menu-alt"></span>
			</button>

			<!-- Collapse -->
			<div class="collapse navbar-collapse text-center text-lg-left"
				id="navbarmain">
				<!-- Links -->
				<ul class="navbar-nav ml-auto">
					<li class="nav-item ">
						<a href="#banner" class="nav-link smoth-scroll"> 홈 </a>
					</li>
					<li class="nav-item ">
						<a href="#about" class="nav-link smoth-scroll"> 소개 </a>
					</li>
					<li class="nav-item ">
						<a href="/pet/list" class="nav-link smoth-scroll"> 후원하기 </a>
					</li>
					<li class="nav-item ">
						<a href="/ask/list" class="nav-link smoth-scroll"> 문의 </a>
					</li>
					<li class="nav-item ">
						<a href="/donation/sum" class="nav-link smoth-scroll"> 합계 </a>
					</li>
				</ul>
				
				<c:choose>
					<c:when test="${member ne null}">
						<a href="/member/logout" class="btn btn-border-tp btn-small ml-3">로그아웃</a>
						<a href="/member/detail" class="btn btn-border-tp btn-small ml-3">마이페이지</a>
					</c:when>
					<c:otherwise>
						<a href="/member/login" class="btn btn-border-tp btn-small ml-3">로그인 / 회원가입</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</nav>
</div>