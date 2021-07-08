<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "com.javaex.dao.PhoneDao"%>
<%@ page import = "com.javaex.vo.PersonVo"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	
	PhoneDao phoneDao = new PhoneDao();
	
	//Parameter
	int personId = Integer.parseInt(request.getParameter("id"));
	String personName = request.getParameter("name");
	String personHp = request.getParameter("hp");
	String personCompany = request.getParameter("company");
	
	//Update Using Dao
	PersonVo personVo = new PersonVo(personId, personName, personHp, personCompany);
	phoneDao.personUpdate(personVo);
	
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