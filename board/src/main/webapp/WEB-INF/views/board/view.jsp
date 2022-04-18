<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조회 페이지</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="../resources/css/bootstrap.css">
</head>
<body>
	<h1 style="text-align: center; margin: 20px">조회 페이지</h1>

	<form class="row g-3">
		<div class="col-12">
			<label for="inputAddress" class="form-label">제목</label> <input
				type="text" class="form-control" id="inputAddress" name="bno" readonly="readonly"
				value='<c:out value="${pageInfo.title}"/>'>
		</div>
		<div class="col-md-6">
			<label for="inputEmail4" class="form-label">작성자</label> <input
				type="text" class="form-control" id="inputEmail4" name="bno"
				readonly="readonly" value='<c:out value="${pageInfo.writer}"/>'>
		</div>
		<div class="col-12">
			<label for="inputAddress" class="form-label">내용</label> <input
				type="text" class="form-control" id="inputAddress" name="bno" readonly="readonly"
				value='<c:out value="${pageInfo.content}"/>'>
		</div>
		<div class="col-12">
			<a type="submit" class="btn btn-primary" id="list_btn">목록</a> 
			<a type="submit" class="btn btn-primary" id="modify_btn">수정</a>
		</div>
		</form>
		<form id="infoForm" action="/board/modify" method="get">
			<input type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno}"/>'>
		</form>



	<script>
		let form = $("#infoForm");

		$("#list_btn").on("click", function(e) {
			form.find("#bno").remove();
			form.attr("action", "/board/list");
			form.submit();
		});

		$("#modify_btn").on("click", function(e) {
			form.attr("action", "/board/modify");
			form.submit();
		});
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="../resources/js/bootstrap.js"></script>
</body>
</html>