<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<jsp:include page="../page/header.jsp" />

<div class="container">
	<h2>내 정보 수정</h2>
		<form name="updateForm" method="post">
			<div class="form-group">
		  		<label for="m_id">아이디</label>
		  		<input type="text" class="form-control" name="m_id" id="m_id" value="${dto.m_id}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="m_pw">비밀번호</label>
				<input type="password" class="form-control" name="m_pw" id="m_pw" placeholder="비밀번호" required="required">
		  	</div>
		  	<div class="form-group">
				<label for="m_name">이름</label>
				<input type="text" class="form-control" name="m_name" id="m_name" placeholder="이름" value="${dto.m_name}" required="required">
		  	</div>
		  	<div class="form-group">
				<label for="m_mail">이메일</label>
				<input type="email" class="form-control" name="m_mail" id="m_mail" placeholder="이메일" value="${dto.m_mail}" required="required">
		  	</div>
		  	<div class="form-group">
				<label for="m_phone">연락처</label>
				<input type="text" class="form-control" name="m_phone" id="m_phone" placeholder="연락처" value="${dto.m_phone}">
		  	</div>
		  	<div class="button-group">
			  	<button type="button" class="btn btn-success" id="updateBtn">확인</button>
			  	<button type="reset" class="btn btn-danger">취소</button>
			  	<button onclick="history.go(-1)" class="btn btn-primary">뒤로</button>
			  	<button type="button" class="btn btn-warning" id="updatePwBtn">비밀번호 변경</button>
			</div>
		</form>
</div>
<!-- /.container -->

<!-- JavaScript -->
<script>
	$(document).ready(function(){
		$("#updateBtn").click(function(){
			var m_pw = $("#m_pw").val();
			if(m_pw == "") {
				alert("비밀번호를 입력하세요");
				$("#m_pw").focus();
				return;
			} else if(confirm("정보를 수정하시겠습니까?")){
				document.updateForm.action = "${pageContext.request.contextPath}/member/update";
				document.updateForm.submit();
			}
		});
		$("#updatePwBtn").click(function(){
			self.location = "${pageContext.request.contextPath}/member/updatePw";
		});
	});
</script>
<!-- /.JavaScript -->

<jsp:include page="../page/footer.jsp" />
