<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="sample.dao.PersonDao"%>
<%@ page import="sample.dto.PersonDto"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8"); //한글 정상 인식을 위해
		
		String name = request.getParameter("name");
		
		PersonDao personDao = new PersonDao();
		
		int result = personDao.insertPersonInfo(name);
		//id 애를, 이름, 주소, 번호, 설정, 취미, 설정
// 		PersonDto personDto = new PersonDto();
// 		personDto.setId(id);
// 		personDto.setName(name);
// 		int result2 = personDao.updatePersonInfo(personDto); //객체단위로 넘기기
		
		
		if(result == 1){
			//삭제성공
	%>
		<script>
			alert('추가성공');
		</script>
	<%
		} else {
	%>
	<script>
				alert('추가실패..');
			</script>
	<%
		}
	%>
	<script> location.href = './index.jsp'; </script>
</body>
</html>