<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.my.subjectuser.SubjectUserDAO, com.mycompany.my.board.SubjectDAO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>
</head>
<body>

<div id="sidebar-wrapper">
	<ul class="sidebar-nav" name="course" id="course">
		<li class="sidebar-brand"><a href="/subjectuser/list">졸업 학점
				관리</a></li>
		<li class="selected_menu"><a href="course1" value="1">1학기</a></li>
		<li><a href="course2">2학기</a></li>
		<li><a href="course3">3학기</a></li>
		<li><a href="course4">4학기</a></li>
		<li><a href="course5">5학기</a></li>
		<li><a href="course6">6학기</a></li>
		<li><a href="course7">7학기</a></li>
		<li><a href="course8">8학기</a></li>
		<li><a href="course9">졸업학점</a></li>
	</ul>
	<button type="button" class="btn btn-secondary btn-block"
		style="position: absolute; bottom: 0;">add</button>
</div>
</form>

<h1>게시판</h1>

<table id="list" width="90%">
<tr>
	<th>userid</th>
	<th>semester</th>
	
</tr>
	
	<c:forEach items="${list}" var="u">
		<tr>
			<td>${u.userid}</td>
			<td>${u.semester}</td>
			
			<td><a href="editform/${u.seq}">글수정 </a></td>
			<td><a href="javascript:delete_ok('${u.seq}')">글삭제 </a></td>
		</tr>
	</c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'">추가하기</button>


</body>
</html>