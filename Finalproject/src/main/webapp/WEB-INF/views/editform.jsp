<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page
	import="com.mycompany.my.subjectuser.SubjectUserDAO, com.mycompany.my.board.SubjectDAO,java.util.*"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>추가</h1>


	<form:form commandName="subjectVO" action="../editok" method="post">
		<form:hidden path="seq" />
		<table>
			<tr>
				<tr><td>아이디</td><td><form:input path="userid"/></td></tr>
				<tr><td>영역1</td><td><form:input path="area1"/></td></tr>
				<tr><td>영역2</td><td><form:input path="area2"/></td></tr>
				<tr><td>영역3</td><td><form:input path="area3"/></td></tr>
				<tr><td>과목명</td><td><form:input path="subname"/></td></tr>
				<tr><td>이수구분</td><td><form:input path="separ"/></td></tr>
				<tr><td>학점</td><td><form:input path="credit"/></td></tr>
				<tr><td>BSM</td><td><form:input path="bsm"/></td></tr>
				<tr><td>전문교양</td><td><form:input path="pro"/></td></tr>
				<tr><td>설계학점</td><td><form:input path="design"/></td></tr>	
				<tr><td>학기</td><td><form:input path="semester"/></td></tr>	
			</tr>
</table>
<input type="submit" value="수정하기" />

<input type="button" value="취소하기" onclick="history.back()" />

</form:form>


</body>
</html>