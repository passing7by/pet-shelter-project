<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Join</title>
	
	<c:import url="/WEB-INF/views/include/head.jsp"/>
</head>
<body id="top-header">
	<c:import url="/WEB-INF/views/include/topbar_others.jsp"/>
	
	<section class="section blog-wrap border-bottom">
	    <div class="container">
		<!-- Contents 시작 -->
		<div class="row justify-content-md-center">
			<div class="col-md-6 bg-grey p-5" >
				<form:form action="/member/join" method="post" modelAttribute="memberVO" cssClass="comment-form" id="comment-form">
					<div class="mb-3 form-floating">
						<input type="text" class="form-control" id="username" name="username" placeholder="아이디">
						<form:errors path="username"/>
					</div>
					<div class="mb-3 form-floating">
						<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호">
						<form:errors path="password"/>
					</div>
					<div class="mb-3 form-floating">
						<input type="password" class="form-control" id="passwordCheck" name="passwordCheck" placeholder="비밀번호 확인">
						<form:errors path="passwordCheck"/>
					</div>
					<div class="mb-3 form-floating">
						<input type="text" class="form-control" id="name" name="name" placeholder="이름">
						<form:errors path="name"/>
					</div>
 					
					<div class="row mb-3" style="padding:6px 12px 6px 15px">
 						<b>성별</b>
 						<div class="form-check ml-3">
							<label for="gender-m">남</label>
							<input type="radio" class="gender" id="gender-m" name="gender" value="M">
						</div>
						<div class="form-check ml-1">
							<label for="gender-f">여</label>
							<input type="radio" class="gender" id="gender-f" name="gender" value="M">
						</div>
						<form:errors path="gender"/>
					</div>
					
					<div class="mb-3 form-floating">
						<input type="number" class="form-control" id="age" name="age" placeholder="나이">
						<form:errors path="age"/>
					</div>
					<div class="mb-3 form-floating">
						<input type="email" class="form-control" id="email" name="email" placeholder="이메일">
						<form:errors path="email"/>
					</div>
					<div class="mb-3 form-floating">
						<input type="tel" class="form-control" id="phone" name="phone" placeholder="전화번호">
						<form:errors path="phone"/>
					</div>
					
					<div>
						<b>반려동물여부</b>
						<div class="mb-3 form-check">
							<input type="checkbox" id="hasPet" name="hasPet" value="1">
							<form:errors path="hasPet"/>
						</div>
					</div>
					<button class="btn btn-main">회원가입</button>
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