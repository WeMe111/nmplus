<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시판 등록</title>
<link rel="stylesheet" href="../resources/css/bootstrap.css">
</head>
<body>

	<h1 style="text-align: center; margin: 20px">게시판 등록</h1>


	<form class="row g-3" action="/board/write" method="post"  style="margin: 10px">
		<div class="col-md-6">
			<label for="inputAddress" class="form-label">작성자</label> <input
				type="text" class="form-control" id="inputAddress" 
				placeholder="이름을 입력해주세요." name="writer">
		</div>
		<div class="col-12">
			<label for="inputAddress" class="form-label">제목</label> <input
				type="text" class="form-control" id="inputAddress"
				placeholder="제목을 입력해주세요." name="title" >
		</div>
		<div class="col-12">
			<label for="inputAddress2" class="form-label">내용</label> <textarea
				row="5" class="form-control" id="inputAddress2"
				placeholder="내용을 입력해주세요." name="content"></textarea>
		</div>
		<div class="col-12">
			<button type="submit" class="btn btn-primary">등록</button>
		</div>
	</form>


<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="../resources/js/bootstrap.js"></script>
</body>
</html>