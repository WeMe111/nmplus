<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 페이지</title>
</head>
<body>

	<form class="row g-3" id="modifyForm" action="/board/modify" method="post">
		<div class="col-12">
			<label for="inputAddress" class="form-label">제목</label> <input
				type="text" class="form-control" id="inputAddress"
				placeholder="1234 Main St" name="title" value='<c:out value="${pageInfo.title}"/>'>
		</div>
		<div class="col-md-6">
			<label for="inputEmail4" class="form-label">작성자</label> <input
				type="text" class="form-control" id="inputEmail4" name="writer"
				readonly="readonly" value='<c:out value="${pageInfo.writer}"/>'>
		</div>
		<div class="col-12">
			<label for="inputAddress" class="form-label">내용</label> <input
				type="text" class="form-control" id="inputAddress"
				placeholder="1234 Main St" name="content" value='<c:out value="${pageInfo.content}"/>'>
		</div>
		</div>
		<div class="col-12">
			<a type="submit" class="btn btn-primary" id="list_btn" href="/board/list">목록</a>
			<a type="submit" class="btn btn-primary" id="modify_btn" href="#">수정</a>
			<a type="submit" class="btn btn-primary" id="cancel_btn" href="#">취소</a>
		</div>
		<div class="col-12">
			<button type="submit" class="btn btn-primary" class="btn"
				id="modify_btn" href="/board/modify?bno='${pageInfo.bno}'}">수정</button>
		</div>
	</form>


	<script>
		let form = $("#infoForm"); // 페이지 이동 form(리스트 페이지 이동, 조회 페이지 이동)
		let mForm = $("#modifyForm"); // 페이지 데이터 수정 from

		/* 목록 페이지 이동 버튼 */
		$("#list_btn").on("click", function(e) {
			form.find("#bno").remove();
			form.attr("action", "/board/list");
			form.submit();
		});

		/* 수정 하기 버튼 */
		$("#modify_btn").on("click", function(e) {
			mForm.submit();
		});

		/* 취소 버튼 */
		$("#cancel_btn").on("click", function(e) {
			form.attr("action", "/board/get");
			form.submit();
		});
	</script>
</body>
</html>