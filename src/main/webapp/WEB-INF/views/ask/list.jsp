<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pet</title>

<c:import url="/WEB-INF/views/include/head.jsp" />
</head>
<body id="top-header">
	<c:import url="/WEB-INF/views/include/topbar_others.jsp" />

	<section class="section blog-wrap border-bottom">
		<div class="container">
			<!-- Contents 시작 -->

			<table class="table table-striped">
				<thead>
					<tr>
						<th>문의번호</th>
						<th>제목</th>
						<th>회원번호</th>
						<th>등록날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="list">
						<tr>
							<td>${list.askId}</td>
							<td><a href="./detail?askId=${list.askId}">${list.title}</a></td>
							<td>${list.memberId}</td>
							<td>${list.createdAt}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<div>
						<a href="./add" class="btn btn-success">등록</a>
			</div>

			<!-- Contents 끝 -->
		</div>
	</section>

	<c:import url="/WEB-INF/views/include/tail.jsp" />
</body>
</html>