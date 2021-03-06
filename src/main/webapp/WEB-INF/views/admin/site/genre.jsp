<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Genre Management</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script>
	function addGenre() {
		$.ajax({
			url: "${pageContext.request.contextPath}/admin/site/genre/add",
			type: "post",
			data: $("#addGenre").serialize(),
			success: function(data) {
				alert("success : " + data);
			},
			error: function(data) {
				alert("error : " + data);
			}
		})
		return false;
	}
	
	function updateGenre(g_id) {
		var newName = prompt("change to what?");
		$.ajax({
			url: "${pageContext.request.contextPath}/admin/site/genre/edit",
			type: "post",
			data: {"g_id" : g_id, "g_name" : newName},
			success: function(data) {
				alert("success : " + data);
			},
			error: function(data) {
				alert("error : " + data);
			}
		})
	}

</script>

</head>

<jsp:include page="integratedheader.jsp" />
	<h2>Genre Management</h2>


	<table border="1">
		<thead>
			<tr>
				<th>genre id</th>
				<th>name</th>
				<th>delete</th>
			</tr>
		</thead>
		<c:forEach var="genre" items="${genreList}">
			<tr>
				<td>${genre.g_id}</td>
				<td>${genre.g_name}</td>
				<td><button onclick="updateGenre(${genre.g_id})">수정</button></td>
			</tr>
		</c:forEach>
	</table>
	새 장르
	<form id="addGenre" onsubmit="return addGenre();">
		<input type="text" name="g_name">
		<input type="submit">
	</form>


</body>
</html>