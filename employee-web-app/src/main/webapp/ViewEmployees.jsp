<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="org.btm.EmployeeConfiguration"%>
<%@page
	import="org.springframework.context.annotation.AnnotationConfigApplicationContext"%>
<%@page import="org.btm.dto.Employee"%>
<%@page import="java.util.List"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="org.btm.dao.EmployeeDao"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.bg-mynav {
	background-color: green;
}

body {
	font-size: 1.25rem;
	background-color: pink;
}

td {
	line-height: 3rem;
	padding: 30px;
	border: 10px solid black;
}

.table-responsive {
	background-color: aqua;
}

.tableheadingrow {
	background-color: lightgreen;
}

.rowdetails {
	
}

.maindiv{

text-align: center;
}

.tab1 {
	border: 2px solid black;
	margin-left: 340px
	
}

.trow1 {
	border: 2px solid black;
	background-color: #fa2a0f;
}

.thead1 {
	border: 2px solid black;
	margin-left: 20px;
}

.thead2 {
	border: 2px solid black;
	background-color: yellow;
}

.btn1 button{
	background-color: palegreen;
	padding: 18px;
	border-radius: 10px;
}
.btn1 button:hover{
background-color: #69f02b;
}

</style>


<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">

<title>CRUD FROM API</title>
</head>
<body>
	<%
	ApplicationContext context = new AnnotationConfigApplicationContext(EmployeeConfiguration.class);
	EmployeeDao dao = context.getBean(EmployeeDao.class);
	List<Employee> employees = dao.findAll();
	((AnnotationConfigApplicationContext) context).close();
	%>
	
	<div class="maindiv">
	<br> 
	<h1>
		<a>Current No. of Employees-></a><%=employees.size()%>
	</h1> <br>
	<table class="tab1">
		<tr class="trow1">
			<th class="thead1">ID</th>
			<th class="thead1">Name</th>
			<th class="thead1">Email</th>
			<th class="thead1">Date Of Birth</th>
			<th class="thead1">Age</th>
			<th class="thead1">Salary</th>
			<th class="thead1">Status</th>
			<th class="thead1">Edit</th>
			<th class="thead1">Delete</th>
		</tr>
		<%
		for (Employee emp : employees) {
		%>
		<tr>
			<td class="thead2"><%=emp.getId()%></td>
			<td class="thead2"><%=emp.getName()%></td>
			<td class="thead2"><%=emp.getEmail()%></td>
			<td class="thead2"><%=emp.getDob()%></td>
			<td class="thead2"><%=emp.getAge()%></td>
			<td class="thead2"><%=emp.getSalary()%></td>
			<td class="thead2"><%=emp.getState()%></td>
			<td class="thead2"><a href="edit?id=<%=emp.getId()%>">Edit</a></td>
			<td class="thead2"><a href="delete?id=<%=emp.getId()%>">Delete</a></td>
		</tr>
		<%
		}
		%>
	</table>
	<br>
	<br>
	<br>
	<div class="btn1">
		<button><a href="load">Add An Employee</a></button>
	</div>
</div>
</body>
</html>