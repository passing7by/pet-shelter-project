<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="/WEB-INF/views/include/head.jsp" />
</head>
<body id="top-header">
	<c:import url="/WEB-INF/views/include/topbar_others.jsp" />

	<section class="section blog-wrap border-bottom">
		<div class="container">
			<!-- Contents 시작 -->

			<h1>기부금 합계 조회</h1>
			<div class="search-form">
				<form action="sum" method="get">

					<select name="year">
						<option value="2024">2024년</option>
						<option value="2025">2025년</option>
					</select> <select name="month">
						<c:forEach begin="1" end="12" var="month">
							<option value="${month}">${month}월</option>
						</c:forEach>
					</select>

					<button type="submit">조회하기</button>
				</form>
			</div>
			
			<h3>총액 : <c:out value="${sum}"> 원</c:out></h3>

			<!-- Contents 끝 -->
		</div>
	</section>

	<c:import url="/WEB-INF/views/include/tail.jsp" />
</body>
</html>