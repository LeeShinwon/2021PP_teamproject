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
<h1>게시판</h1>

<table id="list" width="90%">
<tr>
	<th>subid</th>
	<th>semester</th>
	
</tr>
	
	<c:forEach items="${list}" var="u">
		<tr>
			<td>${u.getSubid()}</td>
			<td>${u.semester}</td>
			
			<td><a href="editform/${u.seq}">글수정 </a></td>
			<td><a href="javascript:delete_ok('${u.seq}')">글삭제 </a></td>
		</tr>
	</c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'">새글쓰기</button>


</body>
</html>