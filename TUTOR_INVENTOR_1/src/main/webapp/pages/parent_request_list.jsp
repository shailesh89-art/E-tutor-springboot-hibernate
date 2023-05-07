<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Parent Request List</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
  table { 
  width: 100%; 
  border-collapse: collapse; 
	}
	tr:nth-of-type(odd) { 
  background: #eee; 
}
th { 
  background: #333; 
  color: white; 
  font-weight: bold; 
}
#tb{

	background:white;
}
td, th { 
width:5%;
  padding: 2px; 
  border: 1px solid #ccc; 
  text-align: center; 
}
@media screen and (max-width: 600px) {
 table { 
  width: 100%; 
  border-collapse: collapse; 
	}
	tr:nth-of-type(odd) { 
  background: #eee; 
}
th { 
  background: #333; 
  color: white; 
  font-weight: bold; 
}
#tb{

	background:white;
}
td, th { 
width:5%;
  padding: 2px; 
  border: 1px solid #ccc; 
  text-align: center; 
}
}











</style>
</head>
<body>

<div class="form-center">
	<center><h1>Request List</h1></center>
	<table>
		<thead>
			<tr>
				<th>Mobile</th>
				<th>Email</th>
				<th>Message</th>
			</tr>
		</thead>
		<c:forEach items="${req}" var="e">
			<tbody>
				<tr>
					<td>${e.contact}</td>
					<td>${e.email}</td>
					<td>${e.msg}</td>
				</tr>

			</tbody>
		</c:forEach>
	</table>
	</div>
</body>
</html>
