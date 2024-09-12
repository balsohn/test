<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
	String name=request.getParameter("name");
	String hakbun=request.getParameter("hakbun");
	int kor=Integer.parseInt( request.getParameter("kor"));
	int eng=Integer.parseInt(request.getParameter("eng"));
	int mat=Integer.parseInt(request.getParameter("mat"));
	
	String sql="insert into student (name,hakbun,kor,eng,mat) values "
			+"(?,?,?,?,?)";
	PreparedStatement pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, hakbun);
	pstmt.setInt(3, kor);
	pstmt.setInt(4, eng);
	pstmt.setInt(5, mat);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
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