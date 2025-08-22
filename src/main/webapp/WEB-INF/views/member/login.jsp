<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	
	<c:import url="/WEB-INF/views/include/head.jsp"/>
</head>
<body id="top-header">
	<c:import url="/WEB-INF/views/include/topbar_others.jsp"/>
	
	<section class="section blog-wrap border-bottom">
	    <div class="container">
		<!-- Contents 시작 -->
		<div class="row justify-content-md-center">
			<div class="col-md-6 bg-grey p-5" >
				<form:form action="/member/login" method="post" modelAttribute="memberVO" cssClass="comment-form" id="comment-form">
					<div class="mb-3 form-floating">
						<input type="text" class="form-control" id="username" name="username" placeholder="아이디" value="${memberVO.username }">
						<form:errors path="username"/>
					</div>
					<div class="mb-3 form-floating">
						<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호" value="${memberVO.password }">
						<form:errors path="password"/>
					</div>
					<button class="btn btn-main">로그인</button>
					<a href="/member/join" class="col-md-4">회원가입</a>
				</form:form>
			</div>
		</div>
		</div>
		<!-- Contents 끝 -->
		</div>
	</section>
	
	<c:import url="/WEB-INF/views/include/tail.jsp"/>
</body>
</html>