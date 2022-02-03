<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시판</h1>
	<table>
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
					<td>${list.title }</td>
					<td>${list.writer_id}</td>
					<td>${list.regdate }</td>
					<td>${list.hit }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>