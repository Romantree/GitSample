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
	
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		
		PersonDao personDao = new PersonDao();
		int result = personDao.deletePersonInfo(id);
// 		int result = 0;
		request.getParameter("name");
		
		if(result == 1){
			//삭제성공
	%>
		<script>
			alert('삭제 성공');
			location.href = './index.jsp'; 
		</script>	
	<%
		} else {
	%>
			<!--삭제실패-->
			<script>
				alert('삭제실패..');
				location.href = './personInfoDetail.jsp?id=<%=id%>';
			</script>
	<%
		}
	%>
	
</body>
</html>