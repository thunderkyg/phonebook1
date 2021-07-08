<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "com.javaex.dao.PhoneDao"%>
<%@ page import = "com.javaex.vo.PersonVo"%>

<%
	PhoneDao phoneDao = new PhoneDao();

	//Parameter (ParseInt 인티저 전환)
	int personId = Integer.parseInt(request.getParameter("id"));
	
	//Delete Using Dao
	phoneDao.personDelete(personId);

	//Redirect
	response.sendRedirect("./list.jsp");
%>
    
    
    
    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>