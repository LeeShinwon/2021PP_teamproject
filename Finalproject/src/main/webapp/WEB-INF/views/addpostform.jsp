<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.mycompany.my.subjectuser.SubjectUserDAO, com.mycompany.my.board.SubjectDAO,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
<table id="edit">
<tr>
<td>
	<label for="area">영역:</label>

<select name="sareaname" id="sareaid">
	<option value="all">전체</option>
    <option value="wroldview">신앙 및 세계관</option>
    <option value="leadership">인성 및 리더십</option>
    <option value="basic">기초학문</option>
    <option value="majorsearch">전공탐색</option>
    <option value="art">예체능</option>
    <option value="special">특론 및 개별연구</option>
    <option value="communication">소통 및 융복합</option>
    <option value="secondlanguage">영어 및 제2외국어</option>
    <option value="major">전공기초</option>
</select>
</td>
<td>
<label for="separ">이수구분:</label>

<select name="sseparname" id="sseparid">
	<option value="all">전체</option>
    <option value="s1">교양필수</option>
    <option value="s2">교양선택</option>
    <option value="s3">교양선택필수</option>
    <option value="s4">전공필수</option>
    <option value="s5">전공선택</option>
    <option value="s6">전공선택필수</option>
    
</select>
</td>
<td>
<label for="separ">과목명:</label>
<input type="text" name="subname"/>
</td>
<td>
<button type="sumbit" class="search">검색</button>
</td>
</tr>
</table>
<table id="list" width="90%">
<tr>
	<th>영역</th>
	<th>과목 명</th>
	<th>이수구분</th>
	<th>학점</th>
	
</tr>
	
	<c:forEach items="${addpostform}" var="u">
		<tr>
			<td>${u.area1}</td>
			<td>${u.subname}</td>
			<td>${u.separ}</td>
			<td>${u.credit}</td>
			<td><td><a href="add/${u.id}">선택</a></td></td>
			
			
		</tr>
	</c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'">새글쓰기</button>
</form>


</body>
</html>