<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
table {
	margin: auto;
	width : 1500px;
	height : 100vh;
}

table, td, th {
	border-collapse: collapse;
	border: 1px solid black;
}

th{
	background-color : blue;
	color : white;
}

th:nth-child(odd){
	background-color : blue;
}


tr:hover {
	background-color : blue;
	color : white;
}
</style>

</head>
<body>
	
		<table>
			<thead>
				<tr>
					<th>id</th>
					<th>category</th>
					<th>제목</th>
					<th>내용</th>
					<th>저자</th>
					<th>제조일/시간</th>
				</tr>
			</thead>
			<c:forEach var="vo" items="${list}">
				<tbody>
					<tr>
						<td>${vo.id}</td>
						<td>${vo.category}</td>
						<td>
						<a href="${pageContext.request.contextPath}/bbs3_1/result?id=${vo.id}" >
						${vo.title}</a></td>						
						<td>${vo.content}</td>
						<td>${vo.owner}</td>
						<td>${vo.createDate}</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>

</body>
</html>