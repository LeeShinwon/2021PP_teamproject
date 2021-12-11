<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.mycompany.my.board.SubjectDAO,com.mycompany.my.board.SubjectVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>board</title>
<style>
#list {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#list td, #list th {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

#list tr:nth-child(even) {
	background-color: #f2f2f2;
}

#list tr:hover {
	background-color: #ddd;
}

#list th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #006bb3;
	color: white;
}
</style>
<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a)
			location.href = '/deleteok/' + id;
	}
</script>
</head>
<body>
	<h1>게시판</h1>
	<table id="list" width="90%">
		<tr>
			<th>Id</th>
			<th>카테고리</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.id}</td>
				<td>${u.area1}</td>
				<td>${u.area2}</td>
				<td>${u.area3}</td>
				<td><a href="/board/editpost/${u.id}">글수정</a></td>
				<td><a href="javascript:delete_ok('${u.id}')">글삭제</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<button type="button" onclick="location.href='add'">새글쓰기</button>
</body>
</html>