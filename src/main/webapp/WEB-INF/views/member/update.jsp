<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<c:import url="/WEB-INF/views/include/head.jsp"/>
</head>
<body id="top-header">
	<c:import url="/WEB-INF/views/include/topbar_others.jsp"/>
	
	<section class="section blog-wrap border-bottom">
	    <div class="container">
		<!-- Contents 시작 -->
		<div class="card">
			<div class="card-header"><b>회원정보수정</b></div>
			<div class="card-body">
				<form:form  action="./update" method="post" cssClass="row g-3" modelAttribute="memberVO">
					<div class="col-md-6">
						<label for="username" class="form-label">아이디</label>
						<form:input path="username" cssClass="form-control"/>
						<form:errors path="username"/>
					</div>
					<div class="col-md-6">
						<label for="name" class="form-label">이름</label>
						<form:input path="name" cssClass="form-control"/>
						<form:errors path="name"/>
					</div>
					<div class="col-12">
						<label for="email" class="form-label">이메일</label>
						<form:input path="email" cssClass="form-control"/>
					</div>
					<div class="col-12">
						<label for="phone" class="form-label">전화번호</label> 
						<form:input path="phone" cssClass="form-control"/>
						<form:errors path="phone"/>
					</div>
					
					<div class="col-md-4" style="padding:6px 12px 6px 15px">
 						<label for="inputAddress" class="form-label">성별</label>
 						<div class="form-check">
							<label for="gender1">남</label>
							<form:radiobutton path="gender" value="M"/>
						</div>
						<div class="form-check">
							<label for="gender1">여</label>
							<form:radiobutton path="gender" value="F"/>
						</div>
					</div>
					<div class="col-md-4" style="padding:6px 12px 6px 15px">
						<label for="inputAddress" class="form-label">반려동물여부</label>
						<div class="mb-3 form-check">
							<form:checkbox path="hasPet" value="1"/>
						</div>
					</div>
					<div class="col-md-4" style="padding:6px 12px 6px 15px">
						<label for="inputAddress" class="form-label">나이</label> 
						<form:input type="number" path="age" cssClass="form-control"/>
					</div>
					<form:hidden path="memberId"/>
					
					<div class="col-12">
						<br>
						<button class="btn btn-primary">수정하기</button>
					</div>
				</form:form>
			</div>
		</div>
		<!-- Contents 끝 -->
		</div>
	</section>
	
	<c:import url="/WEB-INF/views/include/tail.jsp"/>
</body>
</html>