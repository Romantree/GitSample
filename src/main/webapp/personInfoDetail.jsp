<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="sample.dao.PersonDao" %>
<%@ page import="sample.dto.PersonDto" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file = "navBar.jsp" %>
	
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		PersonDao personDao = new PersonDao();
		PersonDto personDto = personDao.selectPersonInfoById(id);
	%>
	<h1>사용자 상세정보</h1>
	
	<form name='personDetailForm' action='' method="post">
		<div class="mb-3">
		  <label for="formGroupExampleInput" class="form-label">ID</label>
		  <input type="hidden" class="form-control" id="formGroupExampleInput"
		  		name="id" placeholder="Example input placeholder" value="<%=personDto.getId()%>">
		</div>
		<div class="mb-3">
		  <label for="formGroupExampleInput2" class="form-label">Name</label>
		  <input type="text" class="form-control" id="inputName"
		  		name="name" placeholder="Another input placeholder" value="<%=personDto.getName()%>">
		</div>
		
		<button id="updateBtn" type="button" class="btn btn-warning">수정</button>
		<button id="deleteBtn" type="button" class="btn btn-danger">삭제</button>
	</form>
	
	
	<script>
		
		document.getElementById('deleteBtn').addEventListener('click', ()=>{
			let form = document.personDetailForm;
			if(confirm('삭제하시겠습니까?')){
				form.action = 'deletePerson_proc.jsp';
				form.submit();
			}
		});
		
		document.getElementById('updateBtn').addEventListener('click', ()=>{
			let form = document.personDetailForm;
			
			let inputName = document.getElementById('inputName');
			if(inputName.value == ""){
				alert('이름은 필수입니다');
				inputName.focus();
			} else {
				if(confirm('수정하시겠습니까?')){
					form.action = 'updatePerson_proc.jsp';
					form.submit();
				}				
			}
		});
	</script>
	
	
</body>
</html>














