<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Parent Request</title>
</head>
<body>

<form action="see" method="post">
<h1>See Who is Intersted In You</h1><br>
<input type="hidden" name="id" value="${tutor.id}"><br>
<input type="text"  value="${tutor.fname} ${tutor.lname}"><br>

<input type="submit" value="GET"><br>
</form>
</body>
</html>