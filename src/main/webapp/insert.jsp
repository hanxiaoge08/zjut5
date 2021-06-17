<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
</head>
<body>
	<sql:setDataSource var="teacher" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
		url="jdbc:sqlserver://localhost:1433;DatabaseName=eis"
		user="sa" password="050016"/>
	<sql:update dataSource="${teacher}" var="r esult">
		INSERT INTO teacher(teacherID,teacherName,salary) VALUES('id3','钱钟书',100000.00);
	</sql:update>
	<sql:query dataSource="${teacher}" var="result">
		SELECT * from teacher;
	</sql:query>
	<table border="1" width="100%">
	<tr>
		<th>teacherID</th>
		<th>teacherName</th>
		<th>salary</th>
	</tr>
	<c:forEach var="row" items="${result.rows}">
	<tr>
		<td><c:out value="${row.teacherID}"/></td>
		<td><c:out value="${row.teacherName}"/></td>
		<td><c:out value="${row.salary}"/></td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>