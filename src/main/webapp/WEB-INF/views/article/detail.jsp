<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="http://localhost:8080/playChoice/article/" var="uuu" />

<!DOCTYPE html>
<jsp:include page="../page/header.jsp" />
<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="span4">
				<div class="inner-heading">
					<h2>고객센터</h2>
				</div>
			</div>
			<div class="span8">
				<ul class="breadcrumb">
					<li><a href="#"><i class="icon-home"></i></a><i
						class="icon-angle-right"></i></li>
					<li><a href="customergongi">고객센터</a><i
						class="icon-angle-right"></i></li>
					<li class="active">1:1문의</li>
				</ul>
			</div>
		</div>
	</div>
</section>
<section id="content">
	<div class="container">
		<jsp:include page="leftside.jsp" />
		<!-- Default table -->
		<div class="row">
			<div class="span8">
				<h4>${data.a_solved}</h4>
				<form>
					<table class="table table-bordered">
						<tr>
							<th>제목</th>
							<th colspan="4">${data.a_title }</th>
						</tr>
						<tr>
							<th>작성일</th>
							<th>${data.a_title }</th>
							<th>작성자</th>
							<th>${data.a_title }</th>
						</tr>
						<tr>
							<th colspan="5" style="width: 98%; height: 300px">${data.a_content }</th>
						</tr>
						<tr>
							<td colspan="5"><input type="hidden" value="${data.a_id }" />
								<button type="button" class="btn btn-square btn-theme"
									onclick="location.href='${uuu }notice/modify?a_id=${data.a_id }'">수정</button>
								<button type="button" class="btn btn-square btn-theme"
									onclick="location.href='${uuu }notice/deleteReg?a_id=${data.a_id }'">삭제</button>
								<button type="button" class="btn btn-square btn-theme"
									onclick="location.href='${uuu }notice/list'">목록 전체보기 +
									${data.a_comment }</button></td>
						</tr>
						<!-- 관리자일 경우에만 보여주기 -->
					</table>
				</form>
				<form action="${uuu }notice/comment">
					<table class="table table-bordered">
						<c:choose>
							<c:when test="${empty data.a_comment}">
								<tr>
									<td colspan="3"><input type="text" name="a_comment"
										style="width: 98%; height: 100px"> <input
										type="hidden" name="a_id" value="${data.a_id }" /></td>
									<td><button type="submit" class="btn btn-square btn-theme"
											style="width: 100%; height: 100px">댓글</button></td>
								</tr>
							</c:when>
							<c:otherwise>
								<tr>
									<th colspan="5">관리자</th>
								</tr>
								<tr>
									<th colspan="5" style="width: 98%; height: 100px">${data.a_comment }</th>
								</tr>
							</c:otherwise>
						</c:choose>
					</table>
				</form>
			</div>
		</div>
	</div>
</section>
<jsp:include page="../page/footer.jsp" />