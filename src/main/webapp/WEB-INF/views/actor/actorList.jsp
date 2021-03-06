<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<jsp:include page="../page/header.jsp"></jsp:include>

<script>
	$(document).ready(function(){
		$('.basketBtn').click(function(e){
			e.preventDefault();
			var actorId = $(this).data('actor');
			//alert("actor id: " + actorId);
			location.href = "${pageContext.request.contextPath}/prefer/insert?a_id=" + actorId;
/* 			a_id = $(this).attr('value');
			alert($(this).attr('value'));
			$.ajax({
				 type : "POST"
				,url  : "mypick"
				,data : {"a_id" : a_id}
				,success : function(data){
					alert("성공")
				}
				,error : function(){
					alert("에러")
				}
			}) */
		});
	});
</script>

<div class="container" align="center">
	<h2>연극 배우 목록</h2>

	<form action="" id="search">
		<table>
			<tr>
				<td>
					<select name="type" form="search" style="width:70px">
						<option value="a_name" selected >이름</option>
						<option value="">기타</option>
					</select>
					<input type="text" name="keyword" />
					<button class="btn btn-success">검색</button>
				</td>
			</tr>
		</table>
	</form>
	<table class="table table-striped rable-hover">
		<thead>
			<tr>
				<th>사진</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>홈페이지</th>
				<th>찜하기</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${actorList }" var="actor" varStatus="status">	
			<tr>
				<td><img src="<c:url value="/"/>resources/img/actor/${actor.a_picture }" width="170px" height="170px" style="padding:10px"/></td>
				<td><a href="detail?a_id=${actor.a_id}">${actor.a_name}</a></td>
				<td>${actor.sdf}</td>
				<td><a href="http://${actor.a_homepage}" target="_blank">${actor.a_homepage}</a></td>
				<td><button id="basketBtn" class="btn btn-info basketBtn" data-actor="${actor.a_id }">찜</button></td>
			</tr>
			</c:forEach>
			</tbody>
	</table>

</div>

<jsp:include page="../page/footer.jsp"></jsp:include>
