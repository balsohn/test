<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
	String sql="select * from student";
	PreparedStatement pstmt=conn.prepareStatement(sql);
	ResultSet rs=pstmt.executeQuery();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>이름</td>
			<td>국어</td>
			<td>영어</td>
			<td>수학</td>
			<td>총점</td>
			<td>평균</td>
		</tr>
		<%
		while(rs.next()){		
			String name=rs.getString("name");
			int kor=rs.getInt("kor");
			int eng=rs.getInt("eng");
			int mat=rs.getInt("mat");
			int chong=kor+eng+mat;
			int avg=chong/3;
		%>
		<tr>
			<td><%=name %></td>
			<td><%=kor %></td>
			<td><%=eng %></td>
			<td><%=mat %></td>
			<td><%=chong %></td>
			<td><%=avg %></td>
		</tr>
		<%} %>
		
	</table>
</body>
</html>