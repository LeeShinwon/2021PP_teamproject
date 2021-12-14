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

<form action="search" method="get">
<table id="add">
<tr>
<td>
	<label for="area">영역:</label>

<select name="area" id="area">
	<option value="전체" selected>전체</option>
    <option value="신앙 및 세계관">신앙 및 세계관</option>
    <option value="인성 및 리더십">인성 및 리더십</option>
    <option value="기초학문">기초학문</option>
    <option value="전공탐색">전공탐색</option>
    <option value="예체능">예체능</option>
    <option value="특론 및 개별연구">특론 및 개별연구</option>
    <option value="소통 및 융복합">소통 및 융복합</option>
    <option value="영어 및 제2외국어">영어 및 제2외국어</option>
    <option value="전공기초">전공기초</option>
    <option value="ICT 융합기초">ICT 융합기초</option>
    <option value="영어 및 제2외국어">영어 및 제2외국어</option>
    <option value="전공">전공</option>
</select>
</td>
<td>
<label for="separ">이수구분:</label>

<select name="separ" id="separ">
	<option value="전체" selected>전체</option>
    <option value="교양필수">교양필수</option>
    <option value="교양선택">교양선택</option>
    <option value="교양선택필수">교양선택필수</option>
    <option value="전공필수">전공필수</option>
    <option value="전공선택">전공선택</option>
    <option value="전공선택필수">전공선택필수</option>
    
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

<form action="addok" method="post">
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
<input type="button" value="취소하기" onclick="history.back()" />
</form>


</body>
</html>