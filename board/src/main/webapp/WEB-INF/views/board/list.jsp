<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="../resources/css/bootstrap.css">
</head>
<body>
	<div class="container">
		<br>
		<h1 class="text-center">
			<a href="#">게시판</a>
		</h1>
		<br>
	</div>
	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th scope="col">작성자</th>
				<th scope="col">작성일</th>
				<th scope="col">수정일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="list">
            <tr>
                <td><c:out value="${list.bno}"/></td>
                <td><a href="/board/view?bno=${list.bno}">${list.title}</a></td>
                <td><c:out value="${list.writer}"/></td>
                <td><fmt:formatDate pattern="yyyy/MM/dd" value="${list.regdate}"/></td>
                <td><fmt:formatDate pattern="yyyy/MM/dd" value="${list.updateDate}"/></td>
            </tr>
        </c:forEach>
		</tbody>
	</table>
	<form id="moveForm" method="get">    
    </form>

	<nav aria-label="...">
		<ul class="pagination">
			<li class="page-item disabled"><a class="page-link">Previous</a>
			</li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item active" aria-current="page"><a
				class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">Next</a></li>
		</ul>
	</nav>

	<a href="write" class="btn btn-primary">이동하기</a>



	<script>
		$(document).ready(function() {

			let result = '<c:out value="${result}"/>';

			checkAlert(result);

			function checkAlert(result) {

				if (result === '') {
					return;
				}

				if (result === "write success") {
					alert("등록이 완료되었습니다.");
				}
				if(result === "modify success"){
		            alert("수정이 완료되었습니다.");
		        }

			}

		});
		
		let moveForm = $("#moveForm");
		 
	    $(".move").on("click", function(e){
	        e.preventDefault();
	        
	        moveForm.append("<input type='hidden' name='bno' value='"+ $(this).attr("href")+ "'>");
	        moveForm.attr("action", "/board/get");
	        moveForm.submit();
	    });
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="../resources/js/bootstrap.js"></script>
</body>
</html>