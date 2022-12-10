<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

form {
	border: 2px solid black;
	padding-left: 60px;
	padding-right: 60px;
	padding-top: 60px;
	padding-bottom: 60px;
	border-radius: 20px;
	width: 40%;
	background-color: white;
	box-shadow: 10px 10px 20px rgba(98, 98, 98, 0.24), -10px -10px 20px
		rgba(111, 110, 110, 0.322);
	border-top: 10px solid #0093E9;
}

from* {
	font-family: "popins", sans-serif;
	color: #ffffff;
	latter-spacing: 0.5px;
}

.input {
	display: flex;
	flex-direction: column-reverse;
	position: relative;
	padding-top: 1.5rem;
	&+.
	input
	{
	margin-top
	:
	1.5rem;
}

}
input[type=text], select, textarea {
  width: 60%;
  padding: 12px;
  margin: 20px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin-left: 200px;
}

.btn {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
 text-align: center;
 
}
</style>

</head>
<body>

	<div class="container">

		<form:form modelAttribute="employee" action="employee" method="post">
			<form:label class="input-label" path="name">Name</form:label>
			<form:input class="input-field" path="name" />
			<br>
			<form:label class="" path="email">Email</form:label>
			<form:input class="input-field" path="email" />
			<br>
			<form:label class="dt1" path="dob">Date of Birth</form:label>
			<form:input class="input-field" path="dob" />
			<br>

			<form:label class="" path="salary">Salary</form:label>
			<form:input class="input-field" path="salary" />
			<br>
			<form:label class="" path="state">status</form:label>
			<form:input class="input-field" path="state" />
			<br>
			<form:button class="btn">REGISTER</form:button>
		</form:form>
	</div>
</body>
</html>
