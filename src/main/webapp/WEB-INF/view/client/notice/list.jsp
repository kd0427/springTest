<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name= "viewport" content="width=device-width", initial-scale="1">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" href="/bootstrap-3.3.7/css/bootstrap.css">
<script defer src="/bootstrap-3.3.7/js/bootstrap.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>게시판</h1>
	<section class="container">
	<table class="table table-striped table-hover" style="border: solid 1px;">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>등록일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="list" items="${list }">
				<tr>
					<td>${list.id }</td>
					<td><a href="/detail">${list.title }</a></td>
					<td>${list.writer_id}</td>
					<td>${list.regdate }</td>
					<td>${list.hit }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="/client/notice/reg" class="btn btn-default pull-right">글쓰기</a>
	<div class="text-center">
		<ul class="pagination">
			<li><a href="#">이전</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">다음</a></li>	
		</ul>
	</div>
	</section>
</body>
</html>